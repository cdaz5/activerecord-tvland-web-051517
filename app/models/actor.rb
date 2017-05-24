class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_last = []
    first_last << first = self.first_name
    first_last << last = self.last_name
    first_last.join(" ")
  end

  def list_roles
    characters_shows = []
    characters_shows << self.characters.first.name
    characters_shows << self.characters.first.show.name
    characters_shows.join(" - ")
end

end
