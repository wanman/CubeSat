%   changecase.m
%
%   Change upper case file names to lower case file names.
%   Demoz Gebre-Egziabher
%   9/28/98

flag1 = 0;
num_files = 0;
! ls > fnames.dat
fid = fopen('fnames.dat');

while ~flag1

    line_read = fgets(fid);

	if ~feof(fid)
		num_files = num_files + 1;
        r = length(line_read);
        new_line = lower(line_read);
        disp(new_line)
        evalstring = ['! mv ' line_read(1:r-1) ' ' new_line(1:r-1)];
        eval(evalstring);
	else
		flag1 = 1;
	end
end

fclose(fid);
! \rm fnames.dat
