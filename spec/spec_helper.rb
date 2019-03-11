# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require 'capybara/rails'
require 'capybara/rspec'

# Add additional requires below this line. Rails is not loaded until this point!

# Requires supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
# run as spec files by default. This means that files in spec/support that end
# in _spec.rb will both be required and run as specs, causing the specs to be
# run twice. It is recommended that you do not name files matching this glob to
# end with _spec.rb. You can configure this pattern with the --pattern
# option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
#
# The following line is provided for convenience purposes. It has the downside
# of increasing the boot-up time by auto-requiring all files in the support
# directory. Alternatively, in the individual `*_spec.rb` files, manually
# require only the support files necessary.
#
Dir[File.expand_path("app/controllers/user/\*.rb"), Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

Shoulda::Matchers.configure do |config|
	config.integrate do |with|
		# Choose a test framework:
		with.test_framework :rspec

		# Choose one or more libraries:
		with.library :rails
	end
end

RSpec.configure do |config|
  # rspec-expectations config goes here. You can use an alternate
  # assertion/expectation library such as wrong or the stdlib/minitest
  # assertions if you prefer.
  config.expect_with :rspec do |expectations|
    # This option will default to `true` in RSpec 4. It makes the `description`
    # and `failure_message` of custom matchers include text for helper methods
    # defined using `chain`, e.g.:
    #     be_bigger_than(2).and_smaller_than(4).description
    #     # => "be bigger than 2 and smaller than 4"
    # ...rather than:
    #     # => "be bigger than 2"
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  # RSpec Rails can automatically mix in different behaviours to your tests
  # based on their file location, for example enabling you to call `get` and
  # `post` in specs under `spec/controllers`.
  #
  # You can disable this behaviour by removing the line below, and instead
  # explicitly tag your specs with their type, e.g.:
  #
  #     RSpec.describe UsersController, :type => :controller do
  #       # ...
  #     end
  #
  # The different available types are documented in the features, such as in
  # https://relishapp.com/rspec/rspec-rails/docs
  config.infer_spec_type_from_file_location!
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
  # arbitrary gems may also be filtered via:
  # config.filter_gems_from_backtrace("gem name")

  # Controller macros
  config.include(Requests::JsonHelpers, type: :controller)

  # Devise Controller Macros
  config.include(DeviseControllerMacros)

  # ActionMailer macros
  config.include(MailerMacros)

  # Capybara
  config.include(Capybara::DSL)

  # Data master objects macros
  config.include(MasterObjectMacros)

  config.before(:suite) do
    # some config here before suite
		# clean DB of any leftover data
		DatabaseCleaner.clean_with :truncation
		# rollback transactions between each test
		DatabaseCleaner.strategy = :transaction
    # generate_all_master_objects
  end

  #config.before(:all) do
    ## some config here before all
  #end

  config.before(:each) do
    # some config here before each test
    DatabaseCleaner.start
  end

  config.after(:each) do
    # some config here after each test
    DatabaseCleaner.clean
  end

  #config.after(:all) do
    ## some config here after all
  #end

	#config.after(:suite) do
		## some config here after suite
    #DatabaseCleaner.clean
	#end
end
