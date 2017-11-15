function dirs = lsdir(base_dir)

list = dir(base_dir);
dirs = {};
for i=1:length(list)
  if list(i).isdir && ~strcmp(list(i).name, '.') && ~strcmp(list(i).name, '..')
    dirs{end+1} = list(i).name;
  end
end

