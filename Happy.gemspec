
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Happy/version"

Gem::Specification.new do |spec|
  spec.name          = "Happy"
  spec.version       = Happy::VERSION
  spec.authors       = ["zhujiabao"]
  spec.email         = ["13051132827@163.com"]

  spec.summary       = %q{这是一个自建demo}
  spec.description   = %q{我们要好好学习}
  spec.homepage      = "https://github.com/Raven7Z/Happy"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
