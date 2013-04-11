#!/usr/bin/env ruby
load "hanamogera.rb"

def gen_alot
  1000000.times do 
  puts  gen_first_char()
  end
end

def link_test2
  link1_2_h = Hash.new
  link1_2_h.default = ""
  link2_1_h = Hash.new
  link2_1_h.default = ""
  $two_chars_table.each do |elem|
    first_char = elem[0][0]
    second_char = elem[0][1]
    link1_2_h[first_char] += second_char
    link2_1_h[second_char] += first_char
  end
  puts "*** 1 -> 2 ***"
  link1_2_h.each do |elem|
    p elem
  end
  puts "*** 2 -> 1 ***"
  link2_1_h.each do |elem|
    p elem
  end
end

link_test2
