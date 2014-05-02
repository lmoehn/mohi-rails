require 'spec_helper'

describe Player do
  describe 'validations' do
    before do
      @player = Player.new(:first_name => 'Loves', :last_name => 'Torun', :email => 'something@gmail.com')
      expect(@player).to be_valid
    end

    it 'ensures first name cannot be blank' do
      @player.first_name = ''
      expect(@player).to_not be_valid
    end

    it 'ensures last name cannot be blank' do
      @player.last_name = ''
      expect(@player).to_not be_valid
    end

    it 'ensures email cannot be blank' do
      @player.email = ''
      expect(@player).to_not be_valid
    end

    it 'ensures invalid email is invalid' do
      @player.email = 'blah'
      expect(@player).to_not be_valid
    end
  end
end