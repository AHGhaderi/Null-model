function [Null]=Null_model(A)

% A is an adjacency matrix
% The null model is a degree-preserved null model of the adjacency matrix A
% Developed by AmirHossein Ghaderi, 2024

NChannels=size(A,1);
    for i=1:NChannels
        idx=[];
        idx=randperm(NChannels-i);
        TotPerm=[];
        TotPerm(idx,1) = A(i+1:NChannels,i);
        Null_h(i,i+1:NChannels)=TotPerm;
    end
    Null=Null_h+Null_h';
end        
     
            
   