require 'rspec'
require './lib/ext/string'

describe "#to_standardized_array" do
  it "adds 'transforms ellipses, dashes, forward slashes to a space before splitting" do
    expect("three...blind—mice and/or hamsters".to_standardized_array).to eq(["three", "blind", "mice", "and", "or", "hamsters"])
  end
  it "removes common punctuation, numbers, apostrophes and chars after apostophes" do
    expect("the.,/\house's 1 roof.".to_standardized_array).to eq(["the", "house", "roof"])
  end
end
