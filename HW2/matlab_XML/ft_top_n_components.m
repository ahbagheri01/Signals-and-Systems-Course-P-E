function [w,yfft,frequencies] =  ft_top_n_components(x,n,fs)
f = linspace(-fs/2, fs/2, numel(x));
yFft = fft(x);
yFftshift = fftshift(yFft);
absoluteval = abs(yFftshift);
start_index = ceil(numel(x)/2);
end_index = numel(x);
abs_val = absoluteval(start_index:end_index);
[sortedX, sortedInds] = sort(abs_val(:),'descend');
index = sortedInds(1:n)+start_index-1;
yfft = yFftshift;
frequencies = f(index);
w = f;
end