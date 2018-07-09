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
  WIN_COMBINATIONS.each { |combo|
    win1 = combo[0]
    win2 = combo[1]
    win3 = combo[2]
    winner = combo

    if board[win1] == "X" && board[win2] == "X" && board[win3] == "X"
      return winner
    else
      return nil
    end
    if board[win1] == "O" && board[win2] == "O" && board[win3] == "O"
      return winner
    else
      return nil
    end
  }
end
