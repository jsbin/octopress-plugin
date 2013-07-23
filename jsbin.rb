# Title: jsbin tag for Jekyll
# Author: Remy Sharp (@rem)
# Description:
#   Given a bin url, generates the embed code for jsbin with defined panels.
#   A bin url is either just the code: `abcefg` or you can include the revision
#   `abcefg/4` or you can point to latest: `abcefg/latest`
#
# Panels: html, javascript, css, console, live (default)
#
# Syntax: {% jsbin bin [panels] %}
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
  class JSbin < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      if /(?<jsbin>\w+\/?\d?)(?:\s+(?<sequence>[\w,]+))?(?:\s+(?<width>\w+))?/ =~ markup
        @bin = jsbin
        @sequence = (sequence unless sequence == 'all') || 'html,css,javascript,live'
        # @width = width || '100%'
      end
    end

    def render(context)
      if @bin
        "<a class=\"jsbin-embed\" src=\"http://jsbin.com/#{@bin}/embed?#{@sequence}\">JS Bin</a><script src=\"http://static.jsbin.com/js/embed.js\"></script>"
      else
        "Error processing input, expected syntax: {% jsbin bin [panels] %}"
      end
    end
  end
end

Liquid::Template.register_tag('JSbin', Jekyll::JSbin)
