class Post < ApplicationRecord
  searchkick settings: {
    analysis: {
      filter: {
        searchkick_suggest_shingle: {
          max_shingle_size: 4
        },
        searchkick_ngram: {
          max_gram: 2
        }
      }
    }
  }
end
