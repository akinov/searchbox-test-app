class Post < ApplicationRecord
  searchkick settings: {
    analysis: {
      filter: {
        searchkick_ngram: {
          max_gram: 2
        }
      }
    }
  }
end
