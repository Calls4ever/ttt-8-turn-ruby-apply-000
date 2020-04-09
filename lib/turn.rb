def turn(board, input, value)
  puts "Please enter 1-9:"
  val=input_to_index(input)
  if valid_move?(val)
    move(board, val, value)
else
  puts "plese enter valid number!"
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def input_to_index(input)
  input= input.to_i
  input=input-1
  return input
end

def valid_move?(input)
  if input>=0 && input<9
    return true
  else return false
  end
end

def move(board, input, value="X")
  board[input]=value

end
