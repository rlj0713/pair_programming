
def scramble(word)
  array = word.split("")
  array2 = []
  array2 << array[0]
  array.shift
  array2 << array.last
  array.pop
  array = array.shuffle
  array.each do |item|
    array2.insert(1, item)
  end
  array2.join("")
end

scramble("Hello")


def scramble_sentence(string)
  string2 = string.split(" ")
  string3 = []
  string2.collect do |word|
    string3 << scramble(word)
  end
  return string3.join(" ")
end

puts scramble_sentence("This sentence is complex but you can still understand what is being said.")