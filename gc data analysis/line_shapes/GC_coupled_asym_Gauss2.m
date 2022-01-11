%Licence: GNU General Public License version 2 (GPLv2)
function y = GC_coupled_asym_Gauss2(x, a0, a1, a2, a3, b0, b1, b2, b3)
    % from Anal. Chem. 1994, 66, 1294-1301
    % ft = fittype('asym_Gauss(x, a0, a1, a2, a3)');
    % a0: peak area
    % a1: elution time
    % a2: width of gaussian
    % a3: exponential damping term
    y = GC_asym_Gauss(x, a0, a1, a2, a3) ...
      + GC_asym_Gauss(x, b0, a1+b1, b2, b3);
end
