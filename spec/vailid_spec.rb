require 'spec_helper'

describe '#valid?' do
	it 'rejects nil' do
		Vailid.valid?(nil).should be_false 
  end
	it 'rejects too long' do
		Vailid.valid?('1234567890').should be_false 
  end
  it 'rejects because of wrong checksum (full length)' do
		Vailid.valid?('123456789').should be_false 
  end
  it 'accepts a correct num (full length)' do
		Vailid.valid?('123456782').should be_true 
  end
  it 'rejects because of wrong checksum (short length)' do
		Vailid.valid?('123456').should be_false 
  end
  it 'accepts a correct num (short length)' do
		Vailid.valid?('123455').should be_true 
  end
end
