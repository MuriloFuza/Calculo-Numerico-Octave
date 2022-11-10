function somapi = aproxpi(n)
    somapi=0;
    for m=0:n
        somapi = somapi + ((16).^(-m))*(4/(8*m+1)-2/(8*m+4)-1/(8*m+5)-1/(8*m+6));
    end
    return 