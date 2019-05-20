def dictionary
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
end

def word_substituter (string)
  dictionary
  keys = dictionary.keys

  splat = string.split(" ")
  splat.collect do |word|
    if keys.include?(word)
      word = "hi"
    end
  end
  splat.join(" ")
end
