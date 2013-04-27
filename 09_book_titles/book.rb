class Book
  
  EXCLUDED_LIST = ['and', 'in', 'the', 'a', 'of', 'an']
  
  def title
    @title
  end
  
  def title=(title)
    @title = correct_title(title)
  end
  
  def correct_title(title)
    corrected_title = title.split(" ").map { |word| EXCLUDED_LIST.include?(word) ? word : word.capitalize }.join(' ')
    corrected_title[0] = corrected_title[0].upcase
    corrected_title
  end
end
