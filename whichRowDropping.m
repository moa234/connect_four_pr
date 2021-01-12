function table = whichRowDropping ( table , player , chosencolumn )
%connect4
%made by : diana tarek 
%code: 1200934
%email: diana.akrab01@eng-st.cu.edu.eg
% this function used to find the row drop and receive the form of table ,
% playercolour ,and the number of column that player chosen. And return the
% form of table after editing

for r = 6 : -1 : 1
    % Used this loop to determine the number of row at which the coin is dropping
    if table( r , chosencolumn ) ~= 1 && table( r , chosencolumn ) ~= 2 
        % then take the player colour and store it in the matrix (table)
        table( r , chosencolumn ) = player;
        break;
    end
end
end
        
        