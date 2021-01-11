%This function is to reload board everytime
function board=reloadboard()
board=xlsread('board.xlsx');
for i=1:6
    for j=1:7
        if board(i,j)==0
            board(i,j)='*';
        else
            board(i,j)=char(board(i,j));
        end
    end
end
end