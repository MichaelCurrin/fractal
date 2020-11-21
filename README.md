# Minima
> Jekyll theme to support my sites containing writing about code

I found myself writing the same modifications on top of the Minima theme across my projects, so made my own theme to put everything in one place.

I use this theme in my projects where I collect and write content around programming:

[![MichaelCurrin - dev-cheatsheets](https://img.shields.io/static/v1?label=MichaelCurrin&message=dev-cheatsheets&color=blue&logo=github)](https://github.com/MichaelCurrin/dev-cheatsheets)
[![MichaelCurrin - code-cookbook](https://img.shields.io/static/v1?label=MichaelCurrin&message=code-cookbook&color=blue&logo=github)](https://github.com/MichaelCurrin/code-cookbook)


## Forking

Forked from [minima](https://github.com/jekyll/minima) repo for the styling and layouts.

With my own changes as:

- Added to [\_layouts](/_layouts/) and [\_includes](/_includes/) which allow **nesting** of my content.
- Added SVGs **logos** from the SimpleIcons site or repo to this project, so they get added to project's assets.
- Add **dependencies** to gemspec file, to save having them in downstream project.
- Removed **unneeded** pieces, like Travis config and shell scripts and some social icons.

Specifically I start my fork from tag `2.5.1`, since there are major changes after that. When using `master` of `minima` as a remote theme, I get this error:

```
  Conversion error: Jekyll::Converters::Scss encountered an error while converting 'assets/css/style.scss':
                    Undefined variable: "$grey-color". on line 132

bundler: failed to load command: jekyll (/Users/mcurrin/repos/_static-sites/dev-cheatsheets/vendor/bundle/ruby/2.7.0/bin/jekyll)

  /Users/mcurrin/repos/_static-sites/dev-cheatsheets/vendor/bundle/ruby/2.7.0/gems/jekyll-sass-converter-1.5.2/lib/jekyll/converters/scss.rb:123:in `rescue in convert'
```

Maybe it is because there is a newer version of the SASS converter needed or things are loaded in the wrong order for the color to be picked up.


## License

The theme is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

See the base [LICENSE-source](/LICENSE-source).

See the project's MIT [LICENSE](/LICENSE).

### Icons

Rights for the logos belong to Simple Icons project and to the original brands. The Simple Icons project uses the [CC0 1.0 Universal](https://github.com/simple-icons/simple-icons/blob/develop/LICENSE.md) license to waive copyright interest in the work.

See the [simple-icons](https://github.com/simple-icons/simple-icons) repo. It encourages you to download the icons, if you don't want to use them on the server. See the `assets` directory for the actual SVG content. An NPM package is listed there is too, if you want to use that for your project.
