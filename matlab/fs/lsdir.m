function dirs = lsdir(base_dir)

if iscell(base_dir) && isscalar(base_dir) == 1
  base_dir = base_dir{1};
end

list = dir(base_dir);
dirs = {};
for i=1:length(list)
  if list(i).isdir && ~strcmp(list(i).name, '.') && ~strcmp(list(i).name, '..')
    dirs{end+1} = list(i).name;
  end
end

