#!/usr/bin/env ruby

def analyze_two_connection(s,h)
  i = 0
  while (i < s.length - 1)
    hkey = s[i..(i+1)]
    # puts hkey
    h[hkey] += 1
    i += 1
  end
end

start_char = Hash.new
start_char.default = 0
two_char_connection = Hash.new
two_char_connection.default = 0

while l = gets
  data = l.chop().split(',')
  start_char[data[1][0]] += 1
  analyze_two_connection(data[1],two_char_connection)
end

p start_char
p two_char_connection
