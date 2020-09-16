$:.unshift(File.expand_path("../lib/", __FILE__))
require "lvm/version"

deps = {
  "open4" => ["~> 0.9", ">= 0.9.6"],
  "chef-ruby-lvm-attrib" => ["~> 0.3"],
}

Gem::Specification.new do |gem|
  gem.authors       = ["Tim Smith", "Greg Symons", "Matthew Kent"]
  gem.email         = ["tsmith@chef.io", "mkent@magoazul.com", "gsymons@gsconsulting.biz"]
  gem.description   = "A wrapper for the LVM2 administration utility, lvm."
  gem.license       = "MIT"
  gem.summary       = "A wrapper for the LVM2 administration utility, lvm."
  gem.homepage      = "https://github.com/chef/chef-ruby-lvm"
  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "chef-ruby-lvm"
  gem.require_paths = ["lib"]
  gem.version       = LVM::VERSION

  deps.each do |dep, constraints|
    gem.add_runtime_dependency dep, *constraints
  end
end
