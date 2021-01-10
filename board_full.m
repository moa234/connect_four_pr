function full=board_full(board)
%this function checks if the board is full or not
%made by Abdelrahman Hamdy 
%DATE 10\1\2020

    for col=1:7
        if board(1,col)==0
        break
            %the board is not full
           full=0
        else
           full=1;
            %the board is full
            %DRAW GAME
        end
    end
end