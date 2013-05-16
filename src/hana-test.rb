#!/usr/bin/env ruby

# Hanamogera Tanka Generator
# Copyright (C) 2013 Akira Nonaka
#
# This file is part of HanamogeraGen.
#
#  HanamogeraGen is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or (at
# your option) any later version.  HanamogeraGen is distributed in the
# hope that it will be useful, but WITHOUT ANY WARRANTY; without even
# the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
# PURPOSE. See the GNU General Public License for more details.  You
# should have received a copy of the GNU General Public License along
# with HanamogeraGen. If not, see <http://www.gnu.org/licenses/>.

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

#link_test2
generate_tanka_vert()

