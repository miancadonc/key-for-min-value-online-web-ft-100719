# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  value_array = name_hash.collect {|key, value| value}
  i = value_array[0]
  value_array.each {|x| i = x if x < i}
  min_value = nil
  name_hash.each {|key, value| min_value = key if value == i}
  min_value
end