lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "hash_dot_notation"
  spec.version       = "1.0.0"
  spec.authors       = ["Augustoc100"]
  spec.email         = ["caugustoc100@hotmail.com"]

  spec.summary       = %q{Simplify the use of hash}
  spec.description   = %q{Using dot notation to access the values of a hash}
  spec.homepage      = "https://github.com/augustoc100/hash-dot-notation"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/augustoc100/hash-dot-notation"
  spec.metadata["changelog_uri"] = "https://github.com/augustoc100/hash-dot-notation"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = ["lib/hash_dot_notation.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency 'rake', '~> 12.3', '>= 12.3.3'
  spec.add_development_dependency "rspec", "~> 3.0"
end
