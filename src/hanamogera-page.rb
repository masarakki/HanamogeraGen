#!/usr/bin/ruby
require 'cgi'
require 'erb'
cgi = CGI.new
header = {'type' => 'text/html', 'status'=>'OK'}
fname = "hanamogera.rhtml"
erb = ERB.new(File.read(fname))
cgi.out(header){erb.result(binding)}
