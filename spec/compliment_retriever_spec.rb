require 'rspec'
require 'compliment_retriever'

describe ComplimentRetriever do
  describe "#get_compliment" do
    it "returns a compliment in string form" do
      compliment_retriever = ComplimentRetriever.new
      expect(compliment_retriever.get_compliment.class).to eql(String)
    end
  end
end
