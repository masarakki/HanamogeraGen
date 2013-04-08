#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

load 'table-100nin.rb'

def gen_first_char()
  r = rand()
  accum_index = 3
  j = $one_char_table.length
  $one_char_table.each_with_index { |elem,i|
    if elem[accum_index] >= r
      j = i
      break
    end
  }
  return $one_char_table[j][0]
end

def get_next_char(c)
  candidates = ""
  $two_chars_table.each { | elem |
    if c == elem[0][0]
      candidates += elem[0][1]
    end
  }
  l  = candidates.length
  if l == 0
    return gen_random()
  else
    return candidates[rand(l)]
  end
end

def gen_random()
  # to be implementd
  "あ"
end

def gen_hanamogera(i)
  i -= 1
  str = gen_first_char()
  i.times do 
    str += get_next_char(str[-1])
  end
  return str
end

def generate_tanka()
  generate_haiku()
  puts gen_hanamogera(7)
  puts gen_hanamogera(7)
end

def generate_haiku()
  puts gen_hanamogera(5)
  puts gen_hanamogera(7)
  puts gen_hanamogera(5)
end

# main program
#generate_tanka()


