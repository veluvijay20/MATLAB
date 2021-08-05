R = [1, 3, 4, 5, 2];
file = input('enter file name: ', 's'); fid = fopen(file, 'w');
if fid > 0
cnt = fwrite(fid, R, 'float64'); disp([num2str(cnt) ' values written']); status = fclose(fid);
else
disp('file error');
end



file = input('enter file name: ', 's'); fid = fopen(file, 'r');
if fid > 0
[R, cnt] = fread(fid, [1, 5], 'float64'); disp([num2str(cnt) ' values read']); status = fclose(fid);
else
disp('file error');
end

R