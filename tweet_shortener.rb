def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }
end

def word_substituter(string)
  new_array = []

	array = string.split(" ")

	array.each do |word|
    lower_case = word.downcase
		if dictionary.keys.include?(lower_case)
# 			puts dictionary.keys.index(word)
			new_array << dictionary.values[dictionary.keys.index(lower_case)]
		else
			new_array << word
		end
	end

	return new_array.join(" ")
end

def bulk_tweet_shortener(array_of_strings)
  array_of_strings.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  letters = tweet.split("")
  new_array = []

  if tweet.length > 140
    new_array = letters[0...140]
  elsif tweet.length < 140
    return tweet
  end

  return new_array.join("")
end
