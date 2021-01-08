clear 
clc

bp = input(' enter list of blood preassures: ');
chbp = 0;
cphbp = 0;
cibp = 0;
clbp = 0;

for i = 1:length(bp)
    if bp(i) >= 140 
        chbp = chbp + 1;
    elseif bp(i)>= 120
        cphbp = cphbp + 1;
    elseif bp(i) >= 90
        cibp = cibp + 1;
    elseif bp(i) >= 70
        clbp = clbp + 1;
    end
end
fprintf('LBP = %i\nIBP = %i\nPHBP = %i\nHBP = %i\n', clbp, cibp , cphbp, chbp)
fprintf('output in an array: %i %i %i %i\n', clbp, cibp , cphbp, chbp)