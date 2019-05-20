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
    if keys.include?(word)
      word = dictionary[word]
    else
      word
    end
  end
  splat.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    tweet = word_substituter(tweet)
    puts tweet
  end
end
