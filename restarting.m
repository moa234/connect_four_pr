%This function is for restarting the board at first time
function board = restarting(board)
for i=1:6
    for j=1:7
        board(i,j)=0;
    end
end
end