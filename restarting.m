%This function is for restarting the board at first time
function theboard=restarting(drawnboard)
for i=1:6
    for j=1:7
        board(i,j)='*';
    end
end
end