require_relative('./models/album')
require_relative('./models/artist')

require('pry-byebug')
# Album.delete_all()
# Artist.delete_all()

artist1 = Artist.new({'name'=>'Laura Veirs'})
artist1.save();
album1 = Album.new({'name' => 'Year of Meteors', 'artist_id' =>artist1.id})
album1.save();
album2 = Album.new({'name' => 'July Flame', 'artist_id' =>artist1.id})
album2>save();

binding.pry
nil
