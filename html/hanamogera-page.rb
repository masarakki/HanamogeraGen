#!/usr/bin/env ruby
require 'erb'
fname = "hanamogera.rhtml"
erb = ERB.new(File.read(fname))
puts erb.result
