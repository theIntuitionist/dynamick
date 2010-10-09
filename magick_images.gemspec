Gem::Specification.new do |s|
  s.version                              = '0.0.1'
  s.name                                 = "magick_images"
  s.files                                = Dir["lib/**/*", "app/**/*", "config/**/*"]
  s.summary                              = "Static rmagick generated image integration for rails"
  s.description                          = "Rmagick generation of algorithmically generated static images."
  s.email                                = "jason@johnmcneilstudio.com"
  s.homepage                             = "http://johnmcneilstudio.com"
  s.authors                              = ["Jason Libsch"]
  s.test_files                           = []
  s.require_paths                        = [".", "lib"]
  s.has_rdoc                             = 'false'
  s.add_runtime_dependency('rmagick', '>= 2.13.1')
end
