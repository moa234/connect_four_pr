clear
clc


win = 0;
full = 0;

mode = input('Do you wish to player against a friend or a computer (P for player and C for computer: )','s');
while mode ~= 'c' || mode ~= 'p'
    mode = input('enter either c to play against a computer or p to play againt a friend: ','s');
end

while 1
    if mode == 'p'
        for i = 1:2
            col = wheredropping(board,i);
            rightraw(col,i);
            [win,player] = check_win(board);
            full = board_full(board);
            if win || full
                break;
            end
        end
    else
        col = wheredropping(board,1);
        [win,player] = check_win(board);
        full = board_full(board);
        complay(board);
        [win,player] = check_win(board);
        full = board_full(board);
    end
    if full
        fprintf('the board is full\n');
    elseif win
        fprintf('the winner is player %d\n',player);
    end
    if full || win
        again = input('would you like to play again? (y/n) :','s');
        while again ~= 'y' || again ~= 'n'
            again = input('enter y to play again, n to end the game: ','s');
        end
        if again == 'n'
            break;
        else
            board = restarting(board);
            mode = input('Do you wish to player against a friend or a computer (P for player and C for computer: )','s');
            while mode ~= 'c' || mode ~= 'p'
                mode = input('enter either c to play against a computer or p to play againt a friend: ','s');
            end
        end
    end
end