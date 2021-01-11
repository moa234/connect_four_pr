function chosencolumn=wheredropping(table, playerplaying, playercolour)
%This function is for recieving where the player will drop and if he can drop here or not and to check if he chose a right number between 1&7

fprintf('%s''s turn now with colour %s\n',playerplaying,playercolour)
%next is where he will drop
chosencolumn=input('Enter a column number you wish to drop in: ');
while chosencolumn < 1 || chosencolumn > 7
    chosencolumn=input('Enter a column number between 1 & 7 please: ');
end
%next is checking if the column he/she chose is already full
while table(1, chosencolumn)=='B' || table(1, chosencolumn)=='Y'
    chosencolumn=input('This column is full please enter another column number: ');
    while chosencolumn < 1 || chosencolumn > 7
        chosencolumn=input('Enter a column number between 1 & 7 please: ');
    end
end
end