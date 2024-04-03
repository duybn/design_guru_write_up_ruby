# @param {String[]} products
# @param {String} search_word
# @return {String[][]}
def suggested_products(products, search_word)
  my_trie = Trie.new

  products.each do |product|
    my_trie.insert(product)
  end

  products = products.sort
  n = search_word.length
  res = []

  for i in 0..n-1
    term = search_word[0..i]

    if !my_trie.start_with?(term)
      res << []
    else
      curr = []

      for j in 0..products.length-1
        if products[j].start_with?(term)
          curr << products[j]
        end

        break if curr.length >= 3
      end

      res << curr
    end
  end

  res
end

class Trie
  def initialize()
    @trie = {}
  end

  def insert(word)
    curr = @trie

    for i in 0..word.length-1
      char = word[i]
      curr[char] = {} if curr[char].nil?
      curr = curr[char]
    end

    curr['-'] = true
  end

  def start_with?(prefix)
    curr = @trie

    for i in 0..prefix.length-1
      char = prefix[i]
      return false if curr[char].nil?

      curr = curr[char]
    end

    return true
  end
end
