function shuffledMatrix = shuffleSymmetricMatrixKeepDiagonal(matrix)
    % input is an adjacency matrix
    % The output is a null model of the adjacency matrix A. 

    [n, m] = size(matrix);
    
    if n ~= m
        error('error');
    end
    
    shuffledMatrix = matrix;
    
    for i = 1:n
        for j = i+1:m 
           
            randRow = randi(n);
            randCol = randi(m);
            
            while randRow == randCol || randRow >= randCol
                randRow = randi(n);
                randCol = randi(m);
            end
          
            temp = shuffledMatrix(i, j);
            shuffledMatrix(i, j) = shuffledMatrix(randRow, randCol);
            shuffledMatrix(randRow, randCol) = temp;
            
            shuffledMatrix(j, i) = shuffledMatrix(i, j);
            shuffledMatrix(randCol, randRow) = shuffledMatrix(randRow, randCol);
        end
    end
end