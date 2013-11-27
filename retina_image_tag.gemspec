# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'retina_image_tag/version'

Gem::Specification.new do |spec|
  spec.name          = "retina_image_tag"
  spec.version       = RetinaImageTag::VERSION
  spec.authors       = ["Dinesh Vasudevan"]
  spec.email         = ["dinesh.vasudevan@gmail.com"]
  spec.description   = %q{ Retina Image Tag for Rails }
  spec.summary       = %q{ Replaces the image witha 2X image if the devise supports 2X }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
