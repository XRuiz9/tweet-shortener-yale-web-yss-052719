def dictionary (word)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  if dictionary.keys.include?(word)
    word = dictionary[word]
  end
  word
end

def word_substituter (string)
  dictionary
  keys = dictionary.keys

  splat = string.split(" ")
  splat.each do |word|
    word = 
  end
  string = splat.join(" ")
  string
end
