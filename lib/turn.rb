def display_board(board=[" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board,index)
    return true
  else
    return false
  end
end


def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
end


def input_to_index(input)
  index = 0
  input = input.to_i
  index = input - 1
  return index
end


def move(board,index,character="X")
  board[index]=character
  return board
end


def turn(board)
  puts "Please enter 1-9:"
  resolved = false
  input = gets.strip
  index = input_to_index(input)
  while resolved == false
    if valid_move?(board,index) == true
      board = move(board,index,character="X")
      display_board(board)
      resolved = true
    else
      puts "Invalid Move. Please try again (1-9)"
      input = gets.strip
      index = input_to_index(input)
    end
  end
end
