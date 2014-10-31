require 'spec_helper'

describe "More fun with hashes" do
  let(:people) { {
  "joe" => {
    first_name: "Joe",
    last_name: "Jenkins",
    preferences: {
      meal: "meat",
      favorite_genres: ["jazz", "soul"],
    },
    sitting_next_to: :sue,
    correspondence: [
      {date: "11/4/2014", description: "sent invitation"},
      {date: "12/2/2014", description: "replied yes"},
    ],
  },
  "sue" => {
    :first_name => "Sue",
    :last_name => "Summers",
    :preferences => {
      :meal => "fish",
      :favorite_genres => ["funk", "blues"],
    },
    sitting_next_to: :joe,
    correspondence: [
      {date: "11/7/2014", description: "sent invitation"},
      {date: "12/8/2014", description: "replied yes + 1"},
    ],
  },
} }
  let(:___) { nil }

  it "gets joes first name" do
    first_name = people['joe'][:first_name]
    expect( first_name ).to be == "Joe"
  end

  it "gets the last names of all the people and returns them as a comma separated string" do
    ary =[]
    people.each_key do |key|
      ary << people[key][:last_name]
    end
    names = ary.join(", ")

    expect( names ).to be == "Jenkins, Summers"
  end

  it "gets the first genre of each person, and returns a comma separated string" do
     ary =[]
    people.each_key do |key|
      ary << people[key][:preferences][:favorite_genres][0]
    end
    top_genres  = ary.join(", ")
    expect( top_genres ).to be == "jazz, funk"
  end

  it "calculates and returns the last name of the person sitting next to joe" do
    # Use code! Hint: find who joe is sitting next to, then use that to find their data
    seat_mate = people["joe"][:sitting_next_to]
    neighbors_last_name = people[seat_mate.to_s][:last_name]
    expect( neighbors_last_name ).to be == "Summers"
  end

  it "gets the date of the first correspondence with joe" do
    joes_first_correspondence = people['joe'][:correspondence].first[:date]
    expect( joes_first_correspondence ).to be == "11/4/2014"
  end
end
