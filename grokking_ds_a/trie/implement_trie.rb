class Trie
  def initialize()
    @trie = {}
  end


=begin
  :type word: String
  :rtype: Void
=end
  def insert(word)
    curr = @trie

    for i in 0..word.length-1
      char = word[i]
      curr[char] = {} if curr[char].nil?
      curr = curr[char]
    end

    curr['-'] = true
  end


=begin
  :type word: String
  :rtype: Boolean
=end
  def search(word)
    curr = @trie

    for i in 0..word.length-1
      char = word[i]
      return false if curr[char].nil?

      curr = curr[char]
    end

    return !curr['-'].nil?
  end


=begin
  :type prefix: String
  :rtype: Boolean
=end
  def starts_with(prefix)
    curr = @trie

    for i in 0..prefix.length-1
      char = prefix[i]
      return false if curr[char].nil?

      curr = curr[char]
    end

    return true
  end
end

# Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)
