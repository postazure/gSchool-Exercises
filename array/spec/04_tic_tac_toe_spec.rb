require 'spec_helper'



describe "Tic Tac Toe, in arrays" do
  let(:___) { nil }

  let(:data) {
    [
      ['X', 'O', 'O'],
      ['X', 'X', 'O'],
      ['O', 'X', 'O']
    ]
  }

  def getPos data, char
    ary = []
    data.each_with_index do |row, j|
      row.each_with_index do |cell, i|
        if cell == char
          ary.push([j,i])
        end
      end
    end
    ary
  end

  def winning? data, player
    #Horz Win!!
    3.times do |i|
      return true if data[i] == [player,player,player]

    end

    #Vert Win!!
    3.times do |i|
      return true if player == data[0][i] &&
                     player == data[1][i] &&
                     player == data[2][i]
    end

    #diag
    return true if player == data[1][1] &&

                  ((player == data[0][0] &&
                    player == data[2][2]) ||

                   (player == data[0][2] &&
                    player == data[2][0]))
  
    false
  end

  def won data
    if winning?(data, "X")
      "X"
    elsif winning?(data, "O")
      "O"
    end
  end

  describe "counting usage per row" do
    it "returns how many times X was played in each row" do
      xs_per_row = data.map{|row| row.count("X")}
      expect(xs_per_row).to be == [1, 2, 1]
    end

    it "returns how many times O was played in each row" do
      os_per_row = data.map{|row| row.count("O")}
      expect(os_per_row).to be == [2, 1, 2]
    end
  end

  describe "getting coordinates of usage" do
    it "returns an array of [row, column] array coordinates for each usage of X" do
      x_coordinates = getPos data, "X"
      expect(x_coordinates).to be == [[0, 0], [1, 0], [1, 1], [2, 1]]
    end

    it "returns an array of [row, column] array coordinates for each usage of O" do
      o_coordinates = getPos data, "O"
      expect(o_coordinates).to be == [[0, 1], [0, 2], [1, 2], [2, 0], [2, 2]]
    end
  end

  describe "testing who won" do
    it "determines whether X or O won" do
      winner = won data
      expect(winner).to be == 'O'
    end
  end
end
