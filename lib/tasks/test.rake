namespace :test do
  desc 'Run tests with coverage report'
  task coverage: :environment do
    require 'simplecov'
    SimpleCov.start 'rails' do
      add_filter '/bin/'
      add_filter '/db/'
      add_filter '/spec/'

      add_group 'Controllers', 'app/controllers'
      add_group 'Models', 'app/models'
      add_group 'Helpers', 'app/helpers'
      add_group 'Services', 'app/services'
    end

    Rake::Task['spec'].invoke
  end
end