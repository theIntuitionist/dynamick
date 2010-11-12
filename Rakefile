# Rakefile
require 'rubygems'
require 'rake'
require 'rake/gempackagetask'

spec = nil
File.open('dynamick.gemspec', 'r'){|f| spec = eval(f.read)}

Rake::GemPackageTask.new(spec) do |pkg|
	pkg.need_zip = false
	pkg.need_tar = false
end
