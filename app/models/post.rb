class Post < ApplicationRecord
  searchkick settings: {
    index: { 
      max_shingle_diff: 3 
    },
    analysis: {
      filter: {
        searchkick_ngram: {
          max_gram: 2
        }
      }
    }
  }
end
