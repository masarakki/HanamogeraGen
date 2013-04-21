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

header = {'type' => 'text/html', 'status'=>'OK'}
tracking ="<script type='text/javascript'>
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-5037492-2']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>"
content_type = "<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>"

page = "<html><head>" + content_type + tracking + "</head><body>" + str + "</body></html>"
cgi.out(header){page}
