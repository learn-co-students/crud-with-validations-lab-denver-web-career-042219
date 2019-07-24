class Song < ApplicationRecord
   validates :title, presence: true
   # validates :released, presence: true
   # validates :release_year, presence: true
   # validates :artist_name, presence: true
   # validates :genre, presence: true
end
