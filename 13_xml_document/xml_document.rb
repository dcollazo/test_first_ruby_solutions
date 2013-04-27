# Final Test, 'XMlDocument indents', does not pass
# Needs to be re-written using method_missing 

class XmlDocument
  
  def initialize
  end
  
  def hello(name_hash = {}, &block)
    case block
    when nil
      name_hash.size == 0 ? "<hello/>" : "<hello name='#{name_hash[:name]}'/>"
    else
      "<hello>#{yield}</hello>"
    end
  end
  
  def goodbye(&block)
    case block
      when nil then "<goodbye/>"
    else
      "<goodbye>#{yield}</goodbye>"
    end
  end
  
  def come_back(&block)
    "<come_back>#{yield}</come_back>"
  end
  
  def ok_fine(message_hash = {})
    "<ok_fine #{message_hash.first[0].to_s}='#{message_hash.first[1]}'/>"
  end
  
  
  def send(tag_name)
    "<#{tag_name}/>"
  end
    
end

