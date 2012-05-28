Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'product_attachments'
  s.version     = '1.1.0'
  s.summary     = 'Adds downloadable attachments to Spree products.'
  s.description = 'Admin can attach different files to a product, that can be downloaded from frontend without registration.'
  s.required_ruby_version = '>= 1.8.7'

  s.authors     = ['krick', 'Denis Lukyanov']
  s.email       = 'service@secoint.ru'
  s.homepage    = 'https://github.com/secoint/spree-product-attachment'

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 0.70.0')
end

