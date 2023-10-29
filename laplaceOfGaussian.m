% Pendeteksian tepi dengan dengan operator laplace of gaussian
function result = laplaceOfGaussian(grayImage, threshold)

    logMask = [0, -1, 0; -1, 4, -1; 0, -1, 0];
    result = conv2(double(grayImage), double(logMask), 'same');
    
    % thresholding to binary image
    result = result > threshold;
    
    % Remove pixel tapi to 0 
    result([1 end], :) = 0; % Top and bottom rows
    result(:, [1 end]) = 0; % Left and right columns
end
