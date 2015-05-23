# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
Product.create(:title => 'South Africa: Six Decades' , 
:author => 'Jürgen Schadeberg' , 
:isbn =>'978-1-86888-678-4' ,
	:description =>
		%{<p>
			Jürgen Schadeberg’s, South Africa: Six Decades, a retrospective photography documentary of 
			South Africa is a unique visual journey which captures key cultural, social and political events 
			and personalities from the 1950s, and the early struggle for democracy, to present-day human 
			rights issues. This collection of iconic images documents a powerful visual history of a country - 
			from the pain and joy of a bittersweet past to today’s vibrant, volatile, creative and cosmopolitan society.
		</p>},
	:image_url => '/assets/images/south-africa-six-decades.jpeg' ,
	:price => 450.00)
	# . . .
	Product.create(:title => 'Space: Currencies in Contemporary African Art' , 
	:author => 'Thembinkosi Goniwe' , 
	:isbn =>'978-1-86688-678-4' ,
	:description =>
		%{<p>
			This is a catalogue of artworks and essays that formed the exhibition SPace: Currencies in 
			Contemporary African Art. Curated by Thembinkosi Goniwe and Melissa Mboweni, the 
			exhibition was held at Museum Africa in Newtown, Johannesburg, from 11th May to 11th July 
			2010. Space featured 25 artists, 4 art collectives and 6 writers whose work provided creative 
			and intellectual dialogue, which in personal and intimate ways animates imaginative and reflective 
			engagement with social matters and human experiences in contemporary Africa and the Diaspora.
		</p>},
	:image_url => '/assets/images/Space-Currencies-in-Contemporary-African-Art.jpeg' ,
	:price => 305.00)
	# . . .
	Product.create(:title => 'We remember differently Race, memory, imagination' , 
	:author => 'JYOTI MISTRY & JORDACHE A. ELLAPEN ' , 
	:isbn =>'978-1-86888693-7' ,
	:description =>
		%{<p>
			Using the short film we remember differently (2005) as a focal point, this collection of essays 
			addresses the conditions of cultural production in post-apartheid South Africa. Art practice in an 
			apartheid context was strongly motivated as ‘struggle art’; but in an environment more 
			consciously informed – by revisiting history and excavating the past – the imagination must 
			feature strongly to exercise the breath of freedom made possible in a democratic South Africa. 
			This invitation ‘to imagine’ is not free from the context of history and it is the central aspect of 
			rethinking history that informs the making of the film. Each of the creative contributors in the 
			making of the film reflects on the creative process and how history and memory informs their creative choices.
		</p>},
	:image_url => '/assets/images/we-remember-differently-book-cover.jpeg' ,
	:price => 195.00)
	# . . .
	Product.create(:title => 'South African Landscape Architecture: A Compendium and A Reader' , 
	:author => 'Hennie Stoffberg, Clinton Hindes and Liana Muller' , 
	:isbn =>'978-1-86888-687-6' ,
	:description =>
		%{<p>
			South African Landscape Architecture: A Compendium is a ground-breaking publication, 
			celebrating 64 of South Africa's outstanding landscape architecture projects. Influential design, 
			environmental, cultural and scientific professional practice projects, spanning more than 25 
			years, are documented in full-colour.
		</p>},
	:image_url => '/assets/images/South-African-Landscape-Architecture-A-Reader.jpeg' ,
	:price => 910.00)
	# . . .
	Product.create(:title => 'Music Notation: A South African Guide' , 
	:author => 'Christine Lucia' , 
	:isbn =>'978-1-86888-568-8' ,
	:description =>
		%{<p>
			Music Notation: A South African Guide presents a new and uniquely south African approach to 
			learning about staff notation – especially for musicians who are educated in the tonic solfa 
			system. As they work through the book, learners build up an understanding of each aspect of 
			notation by experiencing it as music.
		</p>},
	:image_url => '/assets/images/Music-Notation-A-South-African-Guide.jpeg' ,
	:price => 170.00)
	# . . .
	Product.create(:title => 'Viva! musica - a birds eye view of music at Unisa ' , 
	:author => 'Patricia B. Lawrence' , 
	:isbn =>'978-1-86888-661-6' ,
	:description =>
		%{<p>
			Viva Musica! is a celebration of musical talents in South Africa and of Unisa’s role in nurturing 
			and promoting these talents – from budding musicians basking in the limelight for the first time 
			to several of the world’s most prominent conductors, composers, soloists and performing musicians. 
			This book is not intended to be a scholarly work nor a historical account of music education. 
			Rather, it is an ebullient, colourful portrayal of the creative energy that the university’s 
			contribution to music has helped generate – indeed, ‘Viva Musica!’

		</p>},
	:image_url => '/assets/images/viva_musica-Unisa.jpeg' ,
	:price => 390.00)
	# . . .
	Product.create(:title => 'Roots and Routes: Karretjie People of the Great Karoo. 
					The Marginalisation of a South African First People
					' , 
					:author => 'Michael de Jongh' , 
					:isbn =>'978-1-86888-665-4' ,
	:description =>
		%{<p>
			The lives of a previously ‘invisible’ and forgotten ‘first people’ of South Africa come to the fore 
			in this carefully researched study. The ‘Karretjie People’ (Donkey Cart People) of the Great 
			Karoo are direct descendants of the /Xam (San/Bushmen), who were the earliest inhabitants of 
			much of the Karoo interior. Today, as itinerant sheep-shearers, the ‘Karretjie People’ roam the 
			arid expanses of the Karoo in their donkey carts in search of a possible shearing opportunity, 
			sleeping over on the roadside in their make-shift overnight shelters.
		</p>},
	:image_url => '/assets/images/De-Jongh-Roots-and-Routes.jpeg' ,
	:price => 180.00)
	