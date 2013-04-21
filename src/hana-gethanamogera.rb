#!/usr/bin/ruby
require 'cgi'
load 'hanamogera.rb'
cgi = CGI.new
len = cgi['length'].to_i

if (1 <= len) and (len <= 1000)
  str = gen_hanamogera(len)
else
  str = ""
end

header = {'type' => 'text/plain', 'status'=>'OK'}
cgi.out(header){str}
