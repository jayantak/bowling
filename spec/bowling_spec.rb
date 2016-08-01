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
  context "with spares" do
    it "adds the next score for a spare and a drop" do
      bowling = Bowling.new
      bowling.hit(1, 9)
      bowling.hit(5, 0)
      expect(bowling.score).to eq 20
    end
    it "adds the next score for a spare and a two fives" do
      bowling = Bowling.new
      bowling.hit(1, 9)
      bowling.hit(5, 0)
      bowling.hit(4, 1)
      expect(bowling.score).to eq 25
    end
    it "adds the next score for two spares and a five" do
      bowling = Bowling.new
      bowling.hit(1, 9)
      bowling.hit(6, 4)
      bowling.hit(4, 1)
      expect(bowling.score).to eq 40
    end
  end
  context "with strikes" do
    it "adds the next two scores for a strike and two fours" do
      bowling = Bowling.new
      bowling.hit(10)
      bowling.hit(4, 0)
      bowling.hit(4, 0)
      expect(bowling.score).to eq 26
    end
    it "adds the next scores for two strikes and two fours" do
      bowling = Bowling.new
      bowling.hit(10)
      bowling.hit(10)
      bowling.hit(4, 0)
      bowling.hit(4, 0)
      expect(bowling.score).to eq 50
    end
  end
end
