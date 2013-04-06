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

def calculate_sum(a,index)
  sum = 0
  a.each do |x|
    # accumulate the second elemnt
    sum += x[index]
  end
  sum
end

def calculate_percentage(a, sum)
  a.each do |elem|
    elem.push (elem[1]/sum)
  end
end

def calculate_accumulation(a, index)
  accum = 0
  a.each do |elem|
    accum += elem[index]
    elem.push accum
  end
end

# main program

start_char_h = Hash.new
start_char_h.default = 0
two_char_connection_h = Hash.new
two_char_connection_h.default = 0

while l = gets
  data = l.chop().split(',')
  5.times do |i|
    analyze_start_char(data[i+1],start_char_h)
    analyze_two_connection(data[i+1],two_char_connection_h)
  end
end

# convert hash to array
start_char_a = start_char_h.to_a
two_char_connection_a = two_char_connection_h.to_a

# calculate sum

stat_char_sum =  calculate_sum(start_char_a,1).to_f
two_char_sum = calculate_sum(two_char_connection_a,1).to_f

# calculate percentage
calculate_percentage(start_char_a,stat_char_sum)
#p start_char_a

calculate_percentage(two_char_connection_a,two_char_sum)
#p two_char_connection_a

# verify percentage
#p calculate_sum(start_char_a,2)
#p calculate_sum(two_char_connection_a,2)

# sort by occurence (index == 1)
start_char_a.sort!  {|p,q|p[1]<=>q[1]}
two_char_connection_a.sort! {|p,q|p[1]<=>q[1]}

# calculate accumulation

calculate_accumulation(start_char_a,2)
calculate_accumulation(two_char_connection_a,2)

# print array
puts start_char_a
puts two_char_connection_a

