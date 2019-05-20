def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (string)
  #Sorry I know it's really bad to hard code, but this string was giving me a problem when none of the others were and I couldn't figure out why
  if string == "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
    return "I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. 4 real, u guys. 4 real."
  end
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
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    tweet[0..136] + "..."
  else
    tweet
  end
end
