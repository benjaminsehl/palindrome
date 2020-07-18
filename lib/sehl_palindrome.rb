require "sehl_palindrome/version"

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing
    def processed_content
      scan(/[a-z]/i).join.downcase
    end
end

