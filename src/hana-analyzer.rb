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

def analyze_start_char(s,h)
  h[s[0]] += 1
end


start_char = Hash.new
start_char.default = 0
two_char_connection = Hash.new
two_char_connection.default = 0

while l = gets
  data = l.chop().split(',')
  5.times do |i|
    analyze_start_char(data[i+1],start_char)
    analyze_two_connection(data[i+1],two_char_connection)
  end
end

puts "start characters"
p start_char
puts "two chars connection"
p two_char_connection
