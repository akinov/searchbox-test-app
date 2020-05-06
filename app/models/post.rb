class Post < ApplicationRecord
  min_shingle_size = 1
  min_gram = 1
  searchkick settings: {
    analysis: {
      filter: {
        searchkick_suggest_shingle: {
          max_shingle_size: min_shingle_size,
          max_shingle_size: min_shingle_size + 3
        },
        searchkick_ngram: {
          min_gram: min_gram,
          max_gram: min_gram + 1
        }
      }
    }
  }
end
