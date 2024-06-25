class Curator
  attr_reader :photographs,
              :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(id)
    @artists.find do |artist|
      artist.id == id
    end
  end

  def photographs_by_artist
    photo_collection = Hash.new {|hash_obj, key| hash_obj[key] = []}
    collect_ids.each do |id|
      @photographs.map do |photograph|
        if photograph.id == id
          photo_collection[id] << photograph
        end
      end
    end
    photo_collection
  end
  
  private
  def collect_ids
    @artists.map do |artist|
      artist.id
    end
  end
end