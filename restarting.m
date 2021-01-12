function board = restarting(board)
%connect4
%made by : engy ahmed 
%code: 1200967
%email: engy.nasr95@eng-st.cu.edu.eg
%restarting is a function to provide a clear neat board again if the player(s) wishes to play again.

for i=1:6
    for j=1:7
        board(i,j)=0;
    end
end
end