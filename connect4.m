clear
clc


win = 0;
full = 0;
colour = ['B','Y'];



mode = input('Do you wish to player against a friend or a computer (P for player and C for computer): ','s');
while mode ~= 'c' && mode ~= 'p'
    mode = input('enter either c to play against a computer or p to play againt a friend: ','s');
end

contin = input('would you like to continue last game (Y/N): ','s');
if contin == 'y'
    board = xlsread('table.xlsx');
else
    board(1:6,1:7)=0;
    savetable(board);
end


while 1
    if mode == 'p'
        for i = 1:2
            showtable(board);
            col = wheredropping(board,i,colour(i));
            board = whichRowDropping(board,i,col);
            [win,player] = check_win(board);
            full = board_full(board);
            savetable(board);
            if win || full
                break;
            end
        end
    else
        showtable(board);
        col = wheredropping(board,1,'B');
        board = whichRowDropping(board,1,col);
        [win,player] = check_win(board);
        full = board_full(board);
        savetable(board);
        if ~win
            board = complay(board);
            [win,player] = check_win(board);
            full = board_full(board);
        end
    end
    if full
        showtable(board);
        fprintf('the board is full\n');
    elseif win
        showtable(board);
        fprintf('the winner is player %d\n',player);
    end
    if full || win
        again = input('would you like to play again? (y/n) :','s');
        while again ~= 'y' && again ~= 'n'
            again = input('enter y to play again, n to end the game: ','s');
        end
        if again == 'n'
            break;
        else
            board = restarting();
            mode = input('Do you wish to player against a friend or a computer (P for player and C for computer): ','s');
            while mode ~= 'c' && mode ~= 'p'
                mode = input('enter either c to play against a computer or p to play againt a friend: ','s');
            end
        end
    end
end