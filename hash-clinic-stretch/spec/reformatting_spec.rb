require 'spec_helper'

describe 'reformatting data' do
  # Our customer has kindly provided some sample data, but we will be getting
  # different data in this same format in the future. You can check out the data
  # in the support/data.rb file.
  #
  # Also, our customer has hired us to write reusable code. We should at least
  # put everything in methods.

  describe '#doctor_name' do
    describe 'when there is a first and last name' do
      let(:doctor) { doctors["Dr. Derwent"] }

      it 'should be last_name, first_name' do
        expect(doctor_name(doctor)).to be == "Derwent, Dilys"
      end
    end

    describe 'when there is only a name' do
      let(:doctor) { doctors["Gunhilda"] }

      it 'should be last_name, first_name' do
        expect(doctor_name(doctor)).to be == "Gunhilda of Gorsemoor"
      end
    end

    # It is time to think about all the possible edge cases, our data is not
    # that big. In this case we are going to have to come up with data that
    # matches the things we are worried about.

    describe 'when there is only a first name' do
      # create a hash that represents a doctor with only a first name, no last
      let(:doctor) { "make up a hash here" }

      # finish filling in the test
      it "should use just the first name"
    end

    describe 'when there is only a first name' do
      # create a hash that represents a doctor with only a first name, no last
      let(:doctor) { "make up a hash here" }

      # finish filling in the test
      it "should use just the first name"
    end
  end

  describe "#patient_name_hash" do
    # We noticed that patients don't have a first name and a last name ... just a name.
    # We would like to seperate those into first and last name so that we can sort
    # patients on either part of the name.

    let(:name_hash) { patient_name_hash(patient) }

    describe 'when there is a first and last name' do
      let(:patient) { patients[first] }

      it "contstructs the a hash with the right data" do
        expect(patient_name_hash(patient)).to be == {
          first_name: 'Bertha',
          last_name: 'Jorkins'
        }
      end
    end

    describe 'when the name is last name, comma, first name format' do
      let(:patient) { patients[2] }

      it "gets the first name correct" do
        expect(name_hash[:first_name]).to be == 'Willy'
      end

      it "gets the last name correct" do
        expect(name_hash[:last_name]).to be == "Widdershins"
      end
    end

    describe 'when the format is weird' do
      let(:patient) { {name: 'Dumbledore'} }

      it "assumes that the full name is the last name" do
        expect(name_hash[:last_name]).to be == "Dumbledore"
      end

      it "puts nothing in the first name" # write this test
    end

    # Stretch thinking, what do you think should happen with a name like our Doctor,
    # Gunhilda of Gorsemoor should have. And what should we do about her weird name
    # anyway?
  end

  describe '#normalize_patient!' do
    # We decide our life would be easier if we added first name and last name to
    # our patient data. So, now we need to write a method that mutates the hash
    # with additional fields

    describe 'when the name is ordered first last' do
      let(:patient) { patients.first }

      it "adds a key/value for :first_name"
      it "adds a key/value for :last_name"
    end

    describe 'when last name first with comma' do
      # write the tests here
    end

    describe 'when the format is weird' do
      # use the same data as is used in the patient_name_hash method tests
      # figure out what the response to werid data should be
    end
  end
end
