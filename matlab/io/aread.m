function A = aread(filename, size, precision)

if nargin < 2
  precision = 'uint8';
end

fid = fopen(filename, 'r');
% B = permute(A, ndims(A):-1:1);
A = fread(fid, inf, precision);
fclose(fid);

A = reshape(A, size);
