jsbin octopress plugin
================

Given a bin url, generates the embed code for jsbin with defined panels.  A bin url is either just the code: `abcefg` or you can include the revision `abcefg/4` or you can point to latest: `abcefg/latest`. If you don't specify a revision, latest will be automatically selected.

* panels: html, js, css, console, output (default: html,css,js,output)

## Syntax

```ruby
{% jsbin bin [panels] %}
```

## Examples:

Input: 

```ruby
{% jsbin exedab %}
```

Output: 

```html
<a class="jsbin-embed" href="http://jsbin.com/exedab/latest/embed?output">JS Bin</a><script src="http://static.jsbin.com/js/embed.js"></script>
```

Input: 

```ruby
{% jsbin exedab js,html %}
```

Output: 

```html
<a class="jsbin-embed" href="http://jsbin.com/exedab/latest/embed?js,html">JS Bin</a><script src="http://static.jsbin.com/js/embed.js"></script>
```

### Contributors

* [hemanth](https://github.com/hemanth)
* [remy](https://github.com/remy)
