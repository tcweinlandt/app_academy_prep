class Book
  # TODO: your code goes here!
  attr_reader :title
  def title=(title)
      articles = ['A','An', 'The']
      conjunctions = ['For','And','Nor','But','Or','Yet','So']
      prepositions = ['About','Above','Across','After','In','Of']
      bad_words = articles + conjunctions + prepositions
      cleaned_words = title.split(' ')
      cleaned_words.map! {|word| word.capitalize}
      cleaned_words.map! {|word| bad_words.include?(word) ? word.downcase : word}
      cleaned_words[0] = cleaned_words[0].capitalize
      @title = cleaned_words.join(' ')
  end
end
