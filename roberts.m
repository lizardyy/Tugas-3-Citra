function result = roberts(grayImage,threshold)
    Rx  = [1, 0; 0, -1];
    Ry = [0, 1; -1, 0];
    Jx = conv2(double(grayImage),double(Rx),'same');
    Jy = conv2(double(grayImage),double(Ry),'same');
    Jedge = sqrt(Jx.^2 + Jy.^2);
    result = uint8(Jedge);
    result = result > threshold;
end