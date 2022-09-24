# frozen_string_literal: true

require_relative "lib/towels/version"

Gem::Specification.new do |spec|
  spec.name = "ruby-towels"
  spec.version = Towels::VERSION
  spec.authors = ["Lex Lapax"]
  spec.email = ["lexlapax@gmail.com"]

  spec.summary = "Towels for ruby - jack of all for ruby - ala hitchhiker's guid to galaxy towels"
  spec.description =  "start with a simple dsl driven gui framework for ruby like shoes3, then add other simple wrappers"
  spec.homepage = "https://github.com/lexlapax/ruby-towels" 
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.2"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/lexlapax/ruby-towels" 
  spec.metadata["changelog_uri"] = "https://github.com/lexlapax/ruby-towels/CHANGELOG.md" 

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "libui", "~> 0.0.15"
  spec.add_dependency "glimmer-dsl-libui", "~> 0.5.24"
  # spec.add_dependency "cairo", github: "rcairo/rcairo"
  # spec.add_dependency "cairo", ">= 1.17.8"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
