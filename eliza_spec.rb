require 'rspec'
require_relative 'eliza_questions'

describe 'Response' do
  it "should create the Response class" do
    expect { Response }.to_not raise_error
    expect { George }.to_not raise_error
  end

  describe "Yelling Mode" do
    it "should be initiated on bang input" do
      expect (George.get_answer("!")).to be.upcase
    end

    it "should change output to upcase"
    it "should be deactivated with a second bang input"
  end

end
