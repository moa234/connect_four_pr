function [col,row] = potwin(board)
%this function searches for a potential winning places
%made by moaaz tarek

%initalise counter values
count0 = 0;
count1 = 0;
count2 = 0;

%loop to check for winning place horizontally
for r = 6:-1:1
    for c = 1:4
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
            break;
        end
    end
    if count0 == 1 && (count1 == 3 || count2 == 3)   % if a winning move is found exit the entire loop
        break;
    end
end

%loop to check for winning place vertically
for r = 6:-1:4
    for c = 1:7
        will = board(r:r-3, c);   %record 4 vertical chips
        if (will(1:3) == 1 || will(1:3) == 2) && will(4) == 0   %check if there is a freeplay on top of 3 exact chips
            col = c;                                            % record the free row and column
            row = r - 3;
            break;
        end
    end
    if (will(1:3) == 1 || will(1:3) == 2) && will(4) == 0   % if a winning move is found exit the entire loop
        break;
    end
end

%loop to check for winning place horizontallly (/)
for r = 6:-1:4
    for c = 1:4
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
            break;
        end
    end
    if count0 == 1 && (count1 == 3 || count2 == 3)    % if a winning move is found exit the entire loop
        break;
    end
end

%loop to check for winning place reverse horisontally (\)
for r = 6:-1:4
    for c = 7:-1:4
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
            break;
        end
    end
    if count0 == 1 && (count1 == 3 || count2 == 3)   % if a winning move is found exit the entire loop
        break;
    end
end
end