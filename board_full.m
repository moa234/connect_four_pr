function full=board_full(board)
%this function checks if the board is full or not
%made by Abdelrahman Hamdy
%DATE 10\1\2020

full = 0;

v = board(1,:);
if all(v)
    full=1;
else
    full=0;
end
end