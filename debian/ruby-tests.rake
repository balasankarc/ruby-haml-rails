require 'gem2deb/rake/testtask'

Gem2Deb::Rake::TestTask.new do |t|
  t.libs << 'lib' << 'test'
  t.test_files = FileList['test/**/*_test.rb']
end

at_exit do
    filepath = File.join(File.dirname(__FILE__),'..','tmp')
    system('rm', '-rf', filepath)
end
