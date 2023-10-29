% Pendeteksian tepi dengan dengan operator laplace of gaussian
function result = sobel(grayImage, threshold)

    % Sobel Kernels
    sobelHorizontal = [-1, 0, 1; -2, 0, 2; -1, 0, 1];
    sobelVertical = [1, 2, 1; 0, 0, 0; -1, -2, -1];

    % Convolve image with Sobel kernels
    gradientX = conv2(double(grayImage), double(sobelHorizontal), 'same');
    gradientY = conv2(double(grayImage), double(sobelVertical), 'same');

    % Gradient Magnitude and Direction
    result = uint8(sqrt(gradientX.^2 + gradientY.^2));
    result = result > threshold;
    
    % Remove pixel tapi to 0 
    result([1 end], :) = 0; % Top and bottom rows
    result(:, [1 end]) = 0; % Left and right columns
end

