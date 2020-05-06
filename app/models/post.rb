class Post < ApplicationRecord
  MIN_GRAM = 1.freeze
  searchkick settings: {
    analysis: {
      filter: {
        searchkick_suggest_shingle: {
          max_shingle_size: 4
        },
        searchkick_ngram: {
          min_gram: MIN_GRAM,
          max_gram: MIN_GRAM + 1
        }
      }
    }
  }
end
