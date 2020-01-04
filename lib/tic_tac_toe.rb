class TicTacToe

  def initialize
    @board = Array.new(9, " ")
  end

  # class constant for winning combinations
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]

  # board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  # method to translate user input into board array index
  def input_to_index(input)
    # convert input to integer and subtracts 1
    input.to_i - 1
  end

  # method to take index of board array and the player's character. Default character to "X".
  def move(array, index, character)
    array[index] = character
  end


end
