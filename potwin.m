function [col,row] = potwin(board)
%connect4
%made by : moaaz tarek 
%code: 1200871
%email: moaaz.mohamed02@eng-st.cu.edu.eg
%this function searches for a potential winning placesand return the row and column of the place

%initalise counter values

col = 0;
row = 0;


%loop to check for winning place horizontally
for r = 6:-1:1
    for c = 1:4
        count0 = 0;
        count1 = 0;
        count2 = 0;
        will = board(r, c:c+3);   %record any 4 adjacent horizontal chips
        for k = 1:4   % count number of zeros, ones and twos in the selected 4
            if will(k) == 0
                count0 = count0 + 1;
            elseif will(k) == 1
                count1 = count1 + 1;
            else
                count2 = count2 + 1;
            end
        end
        if count0 == 1 && (count1 == 3 || count2 == 3)   % check if these four can have a winning move
            col = c + (find(will == 0)-1);               % record the free row and column
            row = r;
            if row ~= 6
                if board(row+1,col) ~=0    %check if this winning move is playable then return the values
                    return;
                else
                    break   % if not playable checks for other playable winning moves
                end
            else
                return
            end
        end
    end
end

%loop to check for winning place vertically
for r = 6:-1:4
    for c = 1:7
        count0 = 0;
        count1 = 0;
        count2 = 0;
        will = [board(r,c), board(r-1,c), board(r-2,c), board(r-3,c)];   %record 4 vertical chips
        for k = 1:4   % count number of zeros, ones and twos in the selected 4
            if will(k) == 0
                count0 = count0 + 1;
            elseif will(k) == 1
                count1 = count1 + 1;
            else
                count2 = count2 + 1;
            end
        end
        if count0 == 1 && (count1 == 3 || count2 == 3)   % check if these four can have a winning move
            col = c ;               % record the free row and column
            row = r-3 ;
            if row ~= 6
                if board(row+1,col) ~=0
                    return;
                else
                    break
                end
            else
                return
            end
        end
    end
end

%loop to check for winning place horizontallly (/)
for r = 6:-1:4
    for c = 1:4
        count0 = 0;
        count1 = 0;
        count2 = 0;
        will = [board(r,c), board(r-1,c+1),board(r-2,c+2),board(r-3,c+3)];   %record 4 chips diagonally (/) alligned
        for k = 1:4   % count number of zeros, ones and twos in the selected 4
            if will(k) == 0
                count0 = count0 + 1;
            elseif will(k) == 1
                count1 = count1 +1;
            else
                count2 = count2 + 1;
            end
        end
        if count0 == 1 && (count1 == 3 || count2 == 3)   % check if these four can have a winning move  (three places has the same chip type and one free)
            col = c + (find(will == 0)-1);               % record the free row and column
            row = r - (find(will == 0)-1);
            if row ~= 6
                if board(row+1,col) ~=0
                    return;
                else
                    break
                end
            else
                return
            end
        end
    end
end

%loop to check for winning place reverse horisontally (\)
for r = 6:-1:4
    for c = 7:-1:4
        count0 = 0;
        count1 = 0;
        count2 = 0;
        will = [board(r,c), board(r-1,c-1),board(r-2,c-2),board(r-3,c-3)];   %record 4 chips reverse diagonally (\) alligned
        for k = 1:4   % count number of zeros, ones and twos in the selected 4
            if will(k) == 0
                count0 = count0 + 1;
            elseif will(k) == 1
                count1 = count1 +1;
            else
                count2 = count2 + 1;
            end
        end
        if count0 == 1 && (count1 == 3 || count2 == 3)   % check if these four can have a winning move  (three places has the same chip type and one free)
            col = c - (find(will == 0)-1);               % record the free row and column
            row = r - (find(will == 0)-1);
            if row ~= 6
                if board(row+1,col) ~=0
                    return;
                else
                    break
                end
            else
                return
            end
        end
    end
end
end