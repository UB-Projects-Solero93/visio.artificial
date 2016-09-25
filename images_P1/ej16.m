function [ output_args ] = ej16( input_args )
%EJ15 Summary of this function goes here
%   Detailed explanation goes here
    X = 256;
    black_square = zeros(128,128, 'uint8') .* 255;
    white_square = ones(128,128, 'uint8');
    chan1 = [black_square white_square; black_square white_square];
    chan2 = [black_square black_square; white_square white_square];
    chan3 = [white_square black_square; black_square black_square];
    
    final_image = zeros(X, X, 3);
    final_image(:, :, 1) = chan1;
    final_image(:, :, 2) = chan2;
    final_image(:, :, 3) = chan3;
    imwrite(final_image, '3channels.jpg')

end

