require 'spec_helper'

describe 'queries across data sets' do
  describe '#doctors_patients_names' do
    # we want to be able to find all the patients a given doctor has
    # because we don't know what data we will have in the end, we are going
    # to pass in both the doctor and the patients data
    describe 'when the doctor has patients' do
      let(:doctor) { doctors["Pye"] }

      it "returns a list of names of that doctor's patients" do
        expect(doctors_patients_names(doctor, patients)).to be == [
          'Bertha Jorkins',
          'Remus Lupin'
        ]
      end
    end

    describe 'when the doctor is a slacker' do
      let(:doctor) { doctors['Dr. Derwent'] }

      it "returns an empty array" # write the test
    end
  end

  describe '#normalized_doctors_patients_names' do
    # We want the same data as above, except we want the names formatted "last_name, first_name"

    # you write all the tests, and write them before the code
  end

  describe '#doctors_patients' do
    # Now the customer tells us that they really want to get back the data hashes for each
    # patient too. I guess they are writing a report or something.

    # you write all th etests, before the code, one at a time
  end

  describe '#patients_doctors' do
    # this time you have guessed that they want not just names, but data, so first
    # you decide to build out something to get all the doctor's of a patient

    describe 'when all the doctors are found' do
      # write tests
    end

    describe 'when the doctor cant be found :(' do
      # write tests
    end
  end

  # It turns out there is a ton more to know and do:
  #   * Customer wants to know which doctors are least utilized, so they can give them patients.
  #     They want that as a list of medical ids, and then a different list as names
  #   * They also want to know which clinic is least utilized
  #   * Finally, (we hope), they want a list of doctors per clinic by popularity. So given a clinic
  #     they want to know which doctors have most patients, then the next most popular doc, and so
  #     on
  #
  # Keep going writing tests to make this happen
end
