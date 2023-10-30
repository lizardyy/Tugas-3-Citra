% Pendeteksian tepi dengan dengan operator priwit
function result = prewit(grayImage, threshold)
    result = sobel(grayImage, 1, threshold);
end
