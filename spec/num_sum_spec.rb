RSpec.describe NumSum do
  it "has a version number" do
    expect(NumSum::VERSION).not_to be nil
  end

  it "Should add two numbers" do
     expect(NumSum.sum_numbers('2,3')).to eql(5)
   end

   it "Shoulr return 0 with empty string" do
     expect(NumSum.sum_numbers('')).to eql(0)
   end

   it "Should work with multi line character" do
     expect(NumSum.sum_numbers('2\n4')).to eql(6)
   end

   it "Should work with *" do
     expect(NumSum.sum_numbers('5****7')).to eql(12)
   end

   it "Should work with *, two-digit numbers" do
     expect(NumSum.sum_numbers('50****7')).to eql(57)
   end

   it "Should not work with negative numbers" do
     expect{NumSum.sum_numbers('-1,100')}.to raise_error(RuntimeError)
   end
end
