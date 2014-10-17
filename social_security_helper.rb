require 'minitest/autorun'
require 'minitest/spec'


def social_security (numbers)
  num = numbers.to_s
  output =  num[0..2] + "-"  +num[3..4] + "-" + num [5..8]
end





# tests here

describe "#social_security" do
  it 'formats a number as a social security number ' do
    social_security(123456789).must_equal "123-45-6789"
    social_security(198765432).must_equal "198-76-5432"
  end
  it  "formats a number as a social security number with an arbitraty deliminter" do
    social_security(123456789, ' ').must_equal "123 45 6789"
  end


end
