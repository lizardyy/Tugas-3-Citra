% Pendeteksian tepi dengan dengan operator canny
function result = canny(I, threshold)
    result = edge(I,"canny", threshold);
end
