def caesar_cipher(string, x)
  @string = string.split("")
  j = 0
  @string.each do |i|
    if i =~ /[A-Z]/ #/[65-90]|[97-122]/
      i = (i.ord) + x.to_i
      if i > 90
        i = i - 26
      end
    elsif i =~ /[a-z]/ #/[97-122]/
      i = (i.ord) + x.to_i
      if i > 122
        i = i - 26
      end
    end
    @string[j] = i.chr
    j = j + 1
  end
  new_string = @string.join
end

#caesar_cipher("What a string!", 5)

def stock_picker(prices)
  buy = 0
  sell = 1
  best_profit = 0
  while buy < (prices.length - 1)
    while sell < prices.length
      z = prices[sell] - prices[buy]
      if z > best_profit
        best_profit = z
        days = [buy, sell]
      end
      sell = sell + 1
    end
  buy = buy + 1
  sell = buy + 1
  end
  puts days
end

#stock_picker([17,3,6,9,15,8,6,1,10])

def substrings(word, dictionary)
  word = word.downcase
  x = 0
  instances = {}
  while x < dictionary.length
    arr = word.scan(dictionary[x])
    if arr.length > 0
      instances[(dictionary[x])] = arr.length
    end
    x = x + 1
  end
  puts instances
end

#dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#substrings("below", dictionary)
#substrings("Howdy partner, sit down! How's it going?", dictionary)
