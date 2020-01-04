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
  def move(index, character)
    @board[index] = character
  end

  def position_taken?(index)
    if @board[index] == " " || @board[index] == "" || @board[index] == nil
      return false
    elsif @board[index] == "X" || @board[index] == "O"
      return true
    end
  end

  def valid_move?(index)
    if index.between?(0,8) && !position_taken?(index)
      return true
    else position_taken?(index) == true
      return false
    end
  end

  # turn method
  def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid = valid_move?(board, index)
    # check that index is valid
      if valid == false
        turn(board)
      else
        move(board, index, current_player(board))
        display_board(board)
      end
  end

end
