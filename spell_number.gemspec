lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name        = "spell_number"
  spec.version     = "0.2.1"
  spec.authors     = ["Daniel Hahn"]
  spec.description = "Simple Gem to spell numbers as words"
  spec.email       = ["developers@betterplace.org"]
  spec.summary     = "Spell numbers as words"
  spec.homepage    = "https://github.com/betterplace/spell_number"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  spec.require_paths = ["lib"]

  spec.add_dependency "i18n", "~> 1.0.0"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
