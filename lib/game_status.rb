# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    winner = combo

    if board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X"
      return winner
    else return nil
    end
    if board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O"
      return winner
    else return nil
    end
  end
end
