%Stat Conn HW1
%Sandya Subramanian

%Make a graph that makes K-means fail

A = [0 0 0 1 0 0 0 0 0 0 0 0;...
    0 0 1 0 0 0 0 1 0 0 0 0;...
    0 1 0 1 0 0 0 0 1 0 0 0;...
    1 0 1 0 1 0 1 0 0 1 0 0;...
    0 0 0 1 0 0 0 0 1 1 0 0;...
    0 0 0 0 0 0 1 0 0 0 0 0;...
    0 0 0 1 1 1 0 1 0 0 0 0;...
    0 1 0 0 0 0 1 0 0 1 0 0;...
    0 0 1 0 1 0 0 0 0 1 0 0;...
    0 0 0 1 1 0 0 1 1 0 0 0;...
    0 0 0 0 0 0 0 0 0 0 0 1;...
    0 0 0 0 0 0 0 0 0 0 1 0]

%Vertices 1-10 form a connected component, and 11 and 12 form another
%components. The two components are completely disconnected from each
%other, so you'd intuitively want it to separate 2 clusters as 1-10 and
%11-12...

imagesc(A)

for i = 1:10
    kmeans(A,2)
end

%... but it doesn't.
