class Dictionary < Hash
  attr_accessor :entries
  
  def initialize
    @entries = {}
  end
  
  def add(key_value_pair)
    if key_value_pair.is_a?(String)
      @entries[key_value_pair] = nil
    else
      key_value_pair.each { |key, value| @entries[key] = value }
    end
  end
  
  def keywords
    @entries.keys.sort
  end
  
  def include?(key)
    self.keywords.include?(key)
  end
  
  def find(word)
    hash = {}
    @entries.each do |key, value|
      if key[0...word.size] == word
        hash[key] = value
      end
    end
    
    hash
  end

  def printable
		@entries.sort.collect do |key,value|
			"[#{key}] \"#{value}\""
		end.join("\n")
	end
	
end
