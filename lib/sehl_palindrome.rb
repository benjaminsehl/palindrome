require "sehl_palindrome/version"

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  def letters
    self.scan(/[a-zA-Z]/).join
  end

  private

    # Returns content for palindrome testing
    def processed_content
      self.letters.downcase
    end
end

