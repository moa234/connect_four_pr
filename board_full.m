function full=board_full(board)
%connect 4
%made by Abdelrahman Hamdy
%code:1200906
%email : abdelrahman.osman02@eng-st.cu.edu.eg
%this function checks if the board is full or not



full = 0;

v = board(1,:);
if all(v)
    full=1;
else
    full=0;
end
end