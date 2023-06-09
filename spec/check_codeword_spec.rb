require "check_codeword"

RSpec.describe "check_codeword method" do
  context "Codeword is correct" do
    it "returns greeting when codeword is 'horse" do
      expect(check_codeword("horse")).to eq "Correct! Come in."
    end
  end

  context "Codeword starts with 'h', ends with'e' but is not 'horse" do
    it "returns 'close' message when passed 'house'" do
      expect(check_codeword("house")).to eq "Close, but nope."
    end
  end

  
end

RSpec.shared_examples 'a fizzbuzz number' do |number, expected_output|
  it "returns #{expected_output.inspect} when passed #{number}" do
    expect(fizzbuzz(number)).to eq expected_output
  end
end
