require 'rake/testtask'

Rake::TestTask.new do |t|
    t.libs << "tests"
    t.libs << "."
    t.test_files = FileList['tests/test*.rb']
end
