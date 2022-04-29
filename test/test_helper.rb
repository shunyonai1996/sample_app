ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  fixtures :all
  include ApplicationHelper

  parallelize(workers: :number_of_processors)
  
  def is_logged_in?
    !session[:user_id].nil?
  end
end
