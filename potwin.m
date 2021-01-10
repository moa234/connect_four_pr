function [col,row] = potwin(board)
%this function searches for a potential winning places
%made by moaaz tarek


count0 = 0;
count1 = 0;
count2 = 0;


for r = 6:-1:1
    for c = 1:4
        will = board(r, c:c+3);
        for k = 1:4
            if will(k) == 0
                count0 = count0 + 1;
            elseif will(k) == 1
                count1 = count1 +1;
            else
                count2 = count2 + 1;
            end
        end
        if count0 == 1 && (count1 == 3 || count2 == 3)
            col = c + (find(will == 0)-1);
            row = r;
            break;
        end
    end
    if count0 == 1 && (count1 == 3 || count2 == 3)
        break;
    end
end

for r = 6:-1:4
    for c = 1:7
        will = board(r:r-3, c);
        if (will(1:3) == 1 || will(1:3) == 2) && will(4) == 0
            col = c;
            row = r - 3;
            break;
        end
    end
    if (will(1:3) == 1 || will(1:3) == 2) && will(4) == 0
        break;
    end
end
for r = 6:-1:4
    for c = 1:4
        will = [board(r,c), board(r-1,c+1),board(r-2,c+2),board(r-3,c+3)];
        for k = 1:4
            if will(k) == 0
                count0 = count0 + 1;
            elseif will(k) == 1
                count1 = count1 +1;
            else
                count2 = count2 + 1;
            end
        end
        if count0 == 1 && (count1 == 3 || count2 == 3)
            col = c + (find(will == 0)-1);
            row = r - (find(will == 0)-1);
            break;
        end
    end
    if count0 == 1 && (count1 == 3 || count2 == 3)
        break;
    end
end

for r = 6:-1:4
    for c = 7:-1:4
        will = [board(r,c), board(r-1,c-1),board(r-2,c-2),board(r-3,c-3)];
        for k = 1:4
            if will(k) == 0
                count0 = count0 + 1;
            elseif will(k) == 1
                count1 = count1 +1;
            else
                count2 = count2 + 1;
            end
        end
        if count0 == 1 && (count1 == 3 || count2 == 3)
            col = c - (find(will == 0)-1);
            row = r - (find(will == 0)-1);
            break;
        end
    end
    if count0 == 1 && (count1 == 3 || count2 == 3)
        break;
    end
end