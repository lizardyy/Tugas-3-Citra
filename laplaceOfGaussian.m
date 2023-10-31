% Pendeteksian tepi dengan dengan operator laplace of gaussian
function result = laplaceOfGaussian(grayImage, size, sigma, threshold)
    gauss = fspecial('gaussian',size,sigma);
    result = conv2(double(grayImage), double(gauss), 'same');
    % aktifkan dengan filter gauss lalu masukkan ke laplace
    laplace = [0, -1, 0; -1, 4, -1; 0, -1, 0];
    result = conv2(double(result), double(laplace), 'same');
    
    % thresholding to binary image
    result = uint8(result);
    result = result > threshold;
    
    % Change pixel tepi to 0 
    result([1 end], :) = 0; % Top and bottom rows
    result(:, [1 end]) = 0; % Left and right columns
end
