function chosencolumn=wheredropping(table, playerplaying, playercolour)
%connect4
%made by : engy ahmed 
%code: 1200967
%email: engy.nasr95@eng-st.cu.edu.eg
%This function is for recieving where the player will drop and if he can drop here or not and to check if he chose a right number between 1&7

fprintf('%d''s turn now with colour %c\n',playerplaying,playercolour)
%next is where he will drop
chosencolumn=input('Enter a column number you wish to drop in: ','s');
chosencolumn=str2double(chosencolumn);
while chosencolumn ~= [1:7] 
    chosencolumn=input('Enter a column number between 1 & 7 please: ','s');
    chosencolumn=str2double(chosencolumn);
end
%next is checking if the column he/she chose is already full
while table(1, chosencolumn)==1 || table(1, chosencolumn)==2
    chosencolumn=input('This column is full please enter another column number: ','s');
    chosencolumn=str2double(chosencolumn);
    while chosencolumn ~= [1:7]
        chosencolumn=input('Enter a column number between 1 & 7 please: ','s');
        chosencolumn=str2double(chosencolumn);
    end
end
end