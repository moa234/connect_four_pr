function board = complay(board)
%this function return the column of the chip that the computer will play in
%made by moaaz tarek
%date 9/1/2021

[col,row] = potwin(board);
if col ~=0 && row ~=0
    if row == 6
        board(row,col) = 2;
    elseif board(row+1,col) ~=0
        board(row,col) = 2;
    end
else
    col = ceil(rand()*10);
    while col > 7
        col = ceil(rand()*10);
    end
    board = whichRowDropping(board,2,col);
end
end
