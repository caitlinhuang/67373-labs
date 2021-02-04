require 'test_helper'

class ChildTest < ActiveSupport::TestCase
  should have_many(:chores)
  should have_many(:tasks).through(:chores)
  
  # TODO: Validation macros

  # TODO: Context testing

end
