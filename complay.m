function board = complay(board)
%connect4
%made by : moaaz tarek 
%code: 1200871
%email: moaaz.mohamed02@eng-st.cu.edu.eg
%this function makes the computer move

[col,row] = potwin(board);  %get the row and column of any potential win
if col ~=0 && row ~=0  %enter loop if there is a potential win place
    if row == 6
        board(row,col) = 2;
    elseif board(row+1,col) ~=0  % play the computer chip if the row below is not empty
        board(row,col) = 2;
    else
        col = ceil(rand()*10);   % makes the computer play in a random place
        while col > 7 || board(1,col) ~=0
            col = ceil(rand()*10);   
        end
        board = whichRowDropping(board,2,col);   %play the computer chip in the correct row
    end
else
    col = ceil(rand()*10);
    while col > 7 || board(1,col) ~=0
        col = ceil(rand()*10);
    end
    board = whichRowDropping(board,2,col);
end
end
