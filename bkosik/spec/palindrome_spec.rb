require "spec_helper"
describe Palindrome do

  context "Test the 2 different methods" do
    let(:true_palindrome) { Palindrome.new("Abba") }
    let(:false_palindrome) { Palindrome.new("Testing") }

    context "#reverse_string_check" do
      it "should return false for the string 'Testing string'" do
        false_palindrome.reverse_string_check.should == false
      end

      it "should return true for the string Abba" do
        true_palindrome.reverse_string_check.should == false
      end
    end

    context "#rebuild_string" do
      it "should return false" do
        false_palindrome.more_complex_palindrome_check.should == false
      end

      it "should return true for the string abba" do
        true_palindrome.more_complex_palindrome_check.should == true
      end
    end
  end

end
