# frozen_string_literal: true

require "test_helper"

# class TestTowels < Minitest::Test
#   def test_that_it_has_a_version_number
#     refute_nil ::Towels::VERSION
#   end

#   def test_it_does_something_useful
#     assert true
#   end
# end

describe Towels do
  describe '::VERSION' do
    it 'returns a string' do
      _(::Towels::VERSION).wont_be_nil
    end
  end
end