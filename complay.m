function complay(board)
%this function return the column of the chip that the computer will play in
%made by moaaz tarek
%date 9/1/2021

[row,col] = potwin(board);
if row == 1 || (board(row - 1, col) ~= 0)
    board(row,col) = 2;
else
    col = ceil(rand()*10);
    while col > 7
        col = ceil(rand()*10);
    end
    board(droprightraw(col);
end
end
