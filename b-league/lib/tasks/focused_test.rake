require 'rake/testtask'
namespace :test do
  desc "Run tests external to the Rails stack; interactors and business objects."
  Rake::TestTask.new(:focused) do |t|
      t.libs.push "lib/business_objects"
      t.test_files = FileList['test/interactors/*_test.rb','test/interactors/*_test.rb']
      t.verbose = true
  end
end
