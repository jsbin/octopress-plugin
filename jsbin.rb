# Title: jsbin tag for Jekyll
# Author: Remy Sharp (@rem)
# Description:
#   Given a bin url, generates the embed code for jsbin with defined panels.
#   A bin url is either just the code: `abcefg` or you can include the revision
#   `abcefg/4` or you can point to latest: `abcefg/latest`
#
# Panels: html, javascript, css, console, live (default)
#
# Syntax: {% jsbin bin [panels] [height] [width] %}
#
# Examples:
#
# Input: {% jsbin exedab %}
# Output: <a class="jsbin-embed" href="http://jsbin.com/exedab/1/embed?live">JS Bin</a><script src="http://static.jsbin.com/js/embed.js"></script>
#
# Input: {% jsbin exedab javascript,html %}
# Output: <a class="jsbin-embed" href="http://jsbin.com/exedab/1/embed?javascript,html">JS Bin</a><script src="http://static.jsbin.com/js/embed.js"></script>
#
module Jekyll
  class JSBin < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      if /(?<jsbin>\S+\/?\d?)(?:\s+(?<sequence>[\w,]+))?(?:\s+(?<width>\w+))?(?:\s+(?<height>\w+))?/ =~ markup
        @bin = jsbin
        @sequence = (sequence unless sequence == 'all') || 'html,css,javascript,live'
        @width  = width || '100%'
        @height = height || '300px'
      end
    end

    def render(context)
      if @bin
<<HTML
<a class="jsbin-embed" href="http://jsbin.com/#{@bin}/embed?#{@sequence}&amp;width=#{@width}&amp;height=#{@height}">JS Bin</a>
<script src="http://static.jsbin.com/js/embed.js"></script> 
HTML
      else
        "Error processing input, expected syntax: {% jsbin bin [panels] %}"
      end
    end
  end
end

Liquid::Template.register_tag('jsbin', Jekyll::JSBin)
