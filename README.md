fast-anagrams-search
====================

Rails app for fast and scalable anagrams search.

1. Create a rails app:

<pre><code>rails new fast-anagrams-search --skip-test-unit</code></pre>

2. Add RSpec and capybara gems to Gemfile

<pre><code>group :development, :test do
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
end
</code></pre>
3. It needs to be in the :development group to expose generators and rake tasks without having to type RAILS_ENV=test.

Now you can run:

<pre><code>script/rails generate rspec:install</code></pre>

This adds the spec directory and some skeleton files, including a .rspec file


