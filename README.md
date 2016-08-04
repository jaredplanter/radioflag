# Jared Planter - RadioFlag exercise

# Critera
- [x] Customer clicks search to find an artist
- [x] Search results are rendered with 1 artist per row with artist name and country displayed (artist.search)
- [x] Customer can click the artist name to see an Albums widget (artist.albums.get)
- [x] Albums widget displays a coverflow of available albums
- [x] Albums widget displays a list of tracks for the currently selected album (album.tracks.get)

# DEMO
https://radioflag.herokuapp.com

# Dependencies 
* MusixMatch (forked and updated for this exercise): https://github.com/jaredplanter/musix_match
* Flipster (coverflow effect): https://github.com/drien/jquery-flipster
* Bootstrap w/sass for boilerplate design

# Notes
* This is a Ruby on Rails application using the latest version 5.0
* All of my Ruby code comments are in my git commits, coffeescript comments can be found in their respective files. I like to write my ruby in a way that is "self documenting", however I do write extensive notes in my git commits
* All of the API calls to MusixMatch are happening through a MusixMatch gem (library) that I found and edited for my use. The majority of the work for this project was done in that gem. The gem handles the JSON responses by wrapping them in their respective objects before being digested in the rails application. You can find the gem link above. Please review that repository to see my code changes that enabled me to leverage the MusixMatch API.
