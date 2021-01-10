function 
%this function checks if the board is full or not
%made by Abdelrahman Hamdy 
%DATE 10\1\2020

for col=7:-1:1
    for row=6:-1:1
        if board(row,col)==0
            disp('Continue playing')% the board is not full yet
            break
        else
            disp('Game Over,Draw')%the board is full,draw game
        end
    end
end
end


function %check_win_row
%this function checks potintial win in rows
 %made by Abdelrahman Hamdy 
 %DATE 10\1\2020

for row=1:6  
    for col=1:4
        if board(row,col)==1 && board(row,col+1)==1 && board(row,col+2)==1 && board(row,col+3)==1 
            %checks if there is 4 similar in a row for player 1
            disp('player 1 wins!!')
        elseif board(row,col)==2 && board(row,col+1)==2 && board(row,col+2)==2 && board(row,col+3)==2
            %checks if there is 4 similar in a row for player 1
            disp('player 2 wins!!')
        end
    end
end

end

function %check_win_column
%this function checks potintial win in column
 %made by Abdelrahman Hamdy 
 %DATE 10\1\2020

for col=1:7
    for row=1:3
         if board(row,col)==1 && board(row+1,col)==1 && board(row+2,col)==1 && board(row+3,col)==1 
            %checks if there is 4 similar in a row for player 1
            disp('player 1 wins!!')
     elseif board(row,col)==2 && board(row+1,col)==2 && board(row+2,col)==2 && board(row+3,col)==2
            %checks if there is 4 similar in a row for player 1
            disp('player 2 wins!!')
        end
    end
end

end

function %check_win_diagonal(/)
%this function checks potintial win in columns
 %made by Abdelrahman Hamdy 
 %DATE 10\1\2020
 
 
for col=1:4
    for row=4:6
        if board(row,col)==1 && board(row+1,col+1)==1 && board(row+2,col+2)==1 && board(row+3,col+3)==1
            % to check if there is 4 similar in a diagonal// for player 1
            disp('player 1 wins!!')
        elseif board(row,col)==2 && board(row+1,col+1)==2 && board(row+2,col+2)==2 && board(row+3,col+3)==2
             % to check if there is 4 similar in a diagonal// for player 2
            disp('player 2 wins!!')
        end
    end
end
end

function %check_win_diagonal(\)
%this function checks potintial win in columns
 %made by Abdelrahman Hamdy 
 %DATE 10\1\2020

  for row=6:-1:4
      for col=7:-1:4
          if board(row,col)==1 && board(row-1,col-1)==1 && board(row-2,col-2)==1 && board(row-3,col-3)==1
% to check if there is 4 similar in a diagonal\\ for player 1
              disp('player 1 wins!!')
          elseif board(row,col)==2 && board(row-1,col-1)==2 && board(row-2,col-2)==2 && board(row-3,col-3)==2
% to check if there is 4 similar in a diagonal\\ for player 2
              disp('player 2 wins!!')
          end
      end
  end
end
