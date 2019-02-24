require "building_blocks"

describe "#caesar_cipher" do
  context "given an empty string" do
    it "returns an empty string" do
      expect(caesar_cipher(" ", 0)).to eql(" ")
    end
  end

  context "given 'Hello', 0" do
    it "reyurns 'Hello'" do
      expect(caesar_cipher("Hello", 0)).to eql("Hello")
    end
  end

  context "given 'Hello', 2" do
    it "returns 'Jgnnq'" do
      expect(caesar_cipher("Hello", 2)).to eql("Jgnnq")
    end
  end
end
