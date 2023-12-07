function [sum] = series_sum(n)
sum=0;
    for i=1:n
        if mod(i,2)==1
            sum=sum+(i^2);
        else
            sum=sum-(i^2);
        end
    end
end
