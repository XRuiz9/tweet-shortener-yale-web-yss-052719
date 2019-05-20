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
  splat = splat.collect do |word|
    word = "hi"
  end
  splat.join(" ")

end
