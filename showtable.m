function showtable ( table )
% this function is usd to show the table that player will play on it and the table is the matrix that contain the data of the player 
%made by diana tarek  

fprintf('\n')
fprintf('----1------2------3------4------5------6------7----\n')
for r = 1 : 6
    % this loop used for numbers of rows that show in output 
    fprintf('|');
    for c = 1 : 7 
        % this loop used for numbers of columns that show in output 
        
        if table(r,c)~= 'Y' && table(r,c)~='B'
            table(r,c)='_';
        end
        fprintf('   %c   ',table(r,c))
    end
    fprintf('|\n')
end
fprintf('--------------------------------------------------------\n')
end
