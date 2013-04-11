#!/usr/bin/env ruby
require 'erb'
fname = "hanamogera.rhtml"
erb = ERB.new(File.read(fname))

putd "Content-Type: text/html"
puts
puts erb.result
