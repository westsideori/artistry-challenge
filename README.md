# Artistry
Today, you have been tasked with building out a Rails application for a music studio!

The purpose of this application is to log the artists in the database with the instruments that they play. This music studio only works with the best of the best, so every one of their artists can play multiple instruments. But keep in mind that with popular instruments (drums, guitar, bag pipes), there can be multiple artists playing them.

At this point, you should be considering the relationship between an `Artist` instance and an `Instrument` instance. How would an artist keep track of all the instruments that they play and how would you know about all the artists playing a specific instruments?

Some parts of the application have already been built out for you and you should be able to run `rails db:migrate` and `rails db:seed`. However, consider how you might change the schema to build out the relationship as stated above.

After modifying the schema, these are your deliverables:

1) As a user, I should be able to fill out a form to connect an artist with an instrument from the database. This form should be made with at least one dropdown (potentially two dropdowns). Upon successfully creating the association, I should be redirected to the artist's show page.

2) In the artist's show page, I should be able to see the artist's age, title and name. I should also be able to see all the instruments that that specific artist plays.

3) On the index page for an artist, there should be a list of all the artists' names. Clicking on one artist's name should take me to that artist's show page.

4) There should be an index page for all the instruments, where the name of all the instruments should be listed out, alongside each of their classifications.

5) I should also be able to save a new artist into the database. While it's possible for an artist to have the same name, an artist must have a name. An artist must also have an unique title. After successfully creating an artist, I should be taken to the artist's show page.

# validates :artist_id, :instrument_id, presence: true

# validates :name, :classification, presence: true
# validates :name, uniqueness: true