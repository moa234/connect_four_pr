function [win,player]=check_win(board)
%connect 4
%made by Abdelrahman Hamdy
%code:1200906
%email : abdelrahman.osman02@eng-st.cu.edu.eg
%this function checks potintial win in rows

win = 0;
player = 0;

%check_win_row
for row=1:6  
    for col=1:4
        if board(row,col)==1 && board(row,col+1)==1 && board(row,col+2)==1 && board(row,col+3)==1 
            %checks if there is 4 similar in a row for player 1
            win=1;
            player=1;
        elseif board(row,col)==2 && board(row,col+1)==2 && board(row,col+2)==2 && board(row,col+3)==2
            %checks if there is 4 similar in a row for player 1
            win=1;
            player=2;
        end
    end
end


%check_win_column

for col=1:7
    for row=1:3
         if board(row,col)==1 && board(row+1,col)==1 && board(row+2,col)==1 && board(row+3,col)==1 
            %checks if there is 4 similar in a row for player 1
            win=1;
            player=1;
     elseif board(row,col)==2 && board(row+1,col)==2 && board(row+2,col)==2 && board(row+3,col)==2
            %checks if there is 4 similar in a row for player 1
            win=1;
            player=2;
        end
    end
end


%check_win_diagonal(/)
 
for row=6:-1:4
    for col=1:4
        if board(row,col)==1 && board(row-1,col+1)==1 && board(row-2,col+2)==1 && board(row-3,col+3)==1
            % to check if there is 4 similar in a diagonal// for player 1
            win=1;
            player=1;
        elseif board(row,col)==2 && board(row-1,col+1)==2 && board(row-2,col+2)==2 && board(row-3,col+3)==2
             % to check if there is 4 similar in a diagonal// for player 2
            win=1;
            player=2;
        end
    end
end


%check_win_diagonal(\)

  for row=6:-1:4
      for col=7:-1:4
          if board(row,col)==1 && board(row-1,col-1)==1 && board(row-2,col-2)==1 && board(row-3,col-3)==1
          % to check if there is 4 similar in a diagonal\\ for player 1
          win=1;
          player=1;
          elseif board(row,col)==2 && board(row-1,col-1)==2 && board(row-2,col-2)==2 && board(row-3,col-3)==2
          % to check if there is 4 similar in a diagonal\\ for player 2
          win=1;
          player=2;
          end
      end
  end
end
