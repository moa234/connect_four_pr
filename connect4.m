%connect4
%made by : moaaz tarek 
%code: 1200871
%email: moaaz.mohamed02@eng-st.cu.edu.eg

clear
clc


win = 0;
full = 0;
colour = ['B','Y'];


%ask the user to choose the mode ( to play against ai or another player)
mode = input('Do you wish to play against a friend or a computer (p for player and c for computer): ','s'); 
while mode ~= 'c' && mode ~= 'p'
    mode = input('enter either c to play against a computer or p to play againt a friend: ','s');
end

previous = xlsread('previous.xlsx'); %save a logical value if there was a previous unfinished game
if previous
    contin = input('would you like to continue last game (Y/N): ','s');   %ask user if he wish to continue the game
    if contin == 'y'
        board = xlsread('table.xlsx');   %get the previous game data
    else
        board(1:6,1:7)=0;  %else assign the board to zeros
        savetable(board);   %save the board to excel file
    end
else
    board(1:6,1:7)=0;
    savetable(board);
end
xlswrite('previous.xlsx',1);   % change the value in the file as there is a previous game

while 1   % make an infinite loop that exits only when breaked
    if mode == 'p' 
        for i = 1:2
            showtable(board);   %print the board
            col = wheredropping(board,i,colour(i));   %make the user to choose which column would he like to play in
            board = whichRowDropping(board,i,col);   %add the chip to the free row in his chosen column
            [win,player] = check_win(board);   %check for a win
            full = board_full(board);    %check if the board is full
            savetable(board);   %save board into excel file
            if win || full   % stop any player from playing if someone won or if the board is full
                break;
            end
        end
    else
        showtable(board);
        col = wheredropping(board,1,'B');   % player choose column
        board = whichRowDropping(board,1,col);   %add player's chip in right row in the column he chose
        [win,player] = check_win(board);   %check if player won
        full = board_full(board);   %check if board is full
        savetable(board);
        if ~win   % let the computer play as long as the player didnt win
            board = complay(board);   % computer make move
            [win,player] = check_win(board);   %check if computer won
            full = board_full(board);   
            savetable(board);
        end
    end
    if full   %stops and notify the player that the board is full
        showtable(board);
        fprintf('the board is full\n');
    elseif win  % stops and notify the player that someone won
        showtable(board);
        fprintf('the winner is player %d\n',player);
    end
    if full || win   % ask the user if he want to play again when the game stops
        xlswrite('previous.xlsx',0);  %if game is finished ther wont be a previous game
        again = input('would you like to play again? (y/n) :','s');
        while again ~= 'y' && again ~= 'n'
            again = input('enter y to play again, n to end the game: ','s');
        end
        if again == 'n'
            break;
        else
            board = restarting(board);  % reset the board
            mode = input('Do you wish to player against a friend or a computer (P for player and C for computer): ','s');
            while mode ~= 'c' && mode ~= 'p'   % asks for the mode
                mode = input('enter either c to play against a computer or p to play againt a friend: ','s');
            end
        end
    end
end