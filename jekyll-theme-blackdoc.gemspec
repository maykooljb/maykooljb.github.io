# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "maykoolblog"
  spec.version       = "2.0.1"
  spec.authors       = ["Maykool Jimenez"]
  spec.email         = ["maykoljb@gmail.com"]

  spec.summary       = %q{A blog for learning and document stuffs I do on my day to day...}
  spec.homepage      = "https://maykooljb.github.io"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(public|_(includes|layouts)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.add_runtime_dependency "jekyll", "~> 3.7.4"
  spec.add_runtime_dependency "jekyll-gist", "~> 1.5"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.6"
  spec.add_development_dependency "bundler", "~> 1.12"
end
