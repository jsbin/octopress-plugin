jsbin octopress plugin
================

Given a bin url, generates the embed code for jsbin with defined panels.  A bin url is either just the code: `abcefg` or you can include the revision `abcefg/4` or you can point to latest: `abcefg/latest`

* panels: html, javascript, css, console, live (default)
* width: 100px or 200% or 5rem, etc. Defaults to 100%
* height: 500px or 100% or 10rem, etc. Defaults to 300px

## Syntax

```ruby
{% jsbin bin [panels] [width] [height] %}
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

### Contributors

* [hemanth](https://github.com/hemanth)
* [remy](https://github.com/remy)
