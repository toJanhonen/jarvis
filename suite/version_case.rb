require 'minitest/autorun'
require 'jarvis'



describe Jarvis do
  describe 'environment version declaration' do
    it 'is defined' do
      assert_not_nil(Jarvis::VERSION)
    end
  end
end
