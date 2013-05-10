#!/usr/bin/ruby
# -*- coding: utf-8 -*-

load File.join(File.dirname(__FILE__),'table-100nin.rb')

puts "one char:" + $one_char_table.length.to_s
puts "two chars:" + $two_chars_table.length.to_s
puts "tail chars:" + $tail_chars_table.length.to_s
