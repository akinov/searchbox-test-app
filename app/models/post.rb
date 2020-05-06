class Post < ApplicationRecord
  MIN_SHINGLE_SIZE = 1.freeze
  MIN_GRAM = 1.freeze
  searchkick settings: {
    analysis: {
      filter: {
        searchkick_suggest_shingle: {
          min_shingle_size: MIN_SHINGLE_SIZE,
          max_shingle_size: MIN_SHINGLE_SIZE + 3
        },
        searchkick_ngram: {
          min_gram: MIN_GRAM,
          max_gram: MIN_GRAM + 1
        }
      }
    }
  }
end
