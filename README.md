jsbin octopress plugin
================

Given a bin url, generates the embed code for jsbin with defined panels.  A bin url is either just the code: `abcefg` or you can include the revision `abcefg/4` or you can point to latest: `abcefg/latest`

Panels: html, javascript, css, console, live (default)

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
<a class="jsbin-embed" href="http://jsbin.com/exedab/1/embed?live">JS Bin</a><script src="http://static.jsbin.com/js/embed.js"></script>
```

Input: 

```ruby
{% jsbin exedab javascript,html %}
```

Output: 

```html
<a class="jsbin-embed" href="http://jsbin.com/exedab/1/embed?javascript,html">JS Bin</a><script src="http://static.jsbin.com/js/embed.js"></script>
```
