class Post < ApplicationRecord
  searchkick settings: {
    index: { max_ngram_diff: 1 }
  }
end
