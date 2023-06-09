{{PROBLEM}} Multi-Class Planned Design Recipe

1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

┌────────────────────────────┐
│ MusicPlayer                │
│                            │
│ - add(track)               │
│ - all                      │
│ - search_by_title(keyword) │
│   => [tracks...]           │
└───────────┬────────────────┘
            │ owns a list of
            ▼
┌─────────────────────────┐
│ Track(title, artist)    │
│                         │
│ - title                 │
│ - artist                │
│ - format                │
│   => "TITLE by ARTIST"  │
└─────────────────────────┘
Also design the interface of each class in more detail.
```ruby
class MusicLibrary
  def initialize
    # ...
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  end

  def all
    # Returns a list of track objects
  end
  
  def search_by_title(keyword) # keyword is a string
    # Returns a list of tracks with titles that include the keyword
  end
end

class Track
  def initialize(title, artist) # title and artist are both strings
  end

  def matches?(keyword) # keyword is a string
    # Returns true if the keyword matches either the title or artist
  end
end
```
3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.
# 1
"multiple Track class objects added and return all"
# => track1, track2

# 2
"multiple Track class objects added and search for keyword"
# => track1


```ruby
library = MusicLibrary.new
track_1 = Track.new("Fred Williams", "Tell Her")
track_2 = Track.new("Sons of Kemet", "Creation")
library.add(track_1)
library.add(track_2)

```
4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE
```ruby
# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
Encode each example as a test. You can add to the above list as you go.
```
5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
