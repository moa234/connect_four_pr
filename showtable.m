function showtable ( table )
%connect4
%made by : diana tarek 
%code: 1200934
%email: diana.akrab01@eng-st.cu.edu.eg
% this function is usd to show the table that player will play on it and the table is the matrix that contain the data of the player


fprintf('\n')
fprintf('----1------2------3------4------5------6------7----\n')
for r = 1 : 6
    % this loop used for numbers of rows 
    fprintf('|');
    for c = 1 : 7
        % this loop used for numbers of columns

        if table(r,c )== 0
            fprintf('   _   ');
        elseif table(r,c) == 1
            fprintf('   B   ');
        elseif table(r,c) == 2
            fprintf('   Y   ');
        end
    end
    fprintf('|\n')
end
fprintf('---------------------------------------------------\n')
end
