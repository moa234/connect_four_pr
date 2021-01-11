%restarting is a function to provide a clear neat board again if the player(s) wishes to play again.
function board = restarting(board)
for i=1:6
    for j=1:7
        board(i,j)=0;
    end
end
end