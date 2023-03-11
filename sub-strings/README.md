# Substrings

**Substrings** count the existence of a substring in a given string and return a hash and it uses the substring as a key and the count as a value

## What to do

Define a method called **substrings** that accepts a **word** we are looking for the substring, and **dictionary** where we get the substring. this method return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

```ruby
> word = "below"
> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
> substrings(word, dictionary)
=> { "below" => 1, "low" => 1 }
```

It can handle string of multiple words

```ruby
> word = "Howdy partner, sit down! How's it going?"
> dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
> substrings("Howdy partner, sit down! How's it going?", dictionary)
=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

## Lessons Learned

* Working with Hashes
* Working with Arrays
* Use enumerable methods to create a Hash from an Array