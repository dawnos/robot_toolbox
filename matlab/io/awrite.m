function awrite(A, filename, precision)

if nargin < 3
  precision = 'uint8';
end

fid = fopen(filename, 'w');
B = permute(A, ndims(A):-1:1);
fwrite(fid, B, precision);
fclose(fid);
