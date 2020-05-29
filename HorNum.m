function HEMN = HorNum(a)
%UNTITLED Function checks the horizontal eye movement column in EOG detects whenever the
%state changes either from opened to closed or from closed to opened and
%counts number of blinks. A is a matrix with EOG signal, b is number of
%rows in the matrix
%   for each row checking if the cell in the horizontal eye movement column is different or
%   the same from the previous cell in the blink column. If not it means
%   that there was a change in the eye state. Than the counting variable is
%   increased.
counter=0;
b=size(a,1);
for x=2:b
    y=x-1;
    if a(x,6)==a(y,6)
    else
        counter=counter+1;
    end
    HEMN=counter/2;
end
