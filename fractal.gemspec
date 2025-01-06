# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "fractal"
  spec.version = "5.1.0"
  spec.authors = ["MichaelCurrin"]
  spec.email = [""]

  spec.summary = "A customized Jekyll theme to support sites about coding"
  spec.homepage = "https://github.com/MichaelCurrin/fractal"
  spec.license = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|LICENSE|LICENSE-source|README.md)!i)
  end

  spec.add_runtime_dependency "jekyll", ">= 4.2", "< 5.0"

  # Removed in Ruby 3.4 and 3.5, so must directly to avoid errors.
  spec.add_runtime_dependency "logger", ">= 1.6.4", "< 2.0"
  spec.add_runtime_dependency "csv", "~> 3.0"
  spec.add_runtime_dependency "base64", "~> 0.2.0"

  # Match GH Pages locked versions.
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-optional-front-matter", "~> 0.3"
  spec.add_runtime_dependency "jekyll-titles-from-headings", "~> 0.5"

  spec.add_development_dependency "bundler", ">= 1.15"
end
