require "test_helper"

class SehlPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SehlPalindrome::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_for_non_palindrome
    refute "apple".palindrome?
  end

  def test_for_literal_palindrome
    assert "abba".palindrome?
  end

  def test_for_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_for_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_integer_non_palindrome
    refute 12345.palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end
  
end
