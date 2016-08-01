require 'bowling'

RSpec.describe Bowling, "#score" do
  context "with no strikes or spares" do
    it "sums the pin count for 20 hits of 8 pins" do
      bowling = Bowling.new
      20.times {bowling.hit(2, 2)}
      expect(bowling.score).to eq 80
    end
    it "sums the pin count for 15 hits of 3 pins" do
      bowling = Bowling.new
      15.times {bowling.hit(2, 1)}
      expect(bowling.score).to eq 45
    end
  end
end
