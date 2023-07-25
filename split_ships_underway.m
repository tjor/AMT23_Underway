# script to separate ship's underway files in days
clear all

din_anc = "../../../Ship_data/Compress/Compress/";
dout_anc = "../../../Ship_data/Compress/Compress/days/";

# extract instruments
fns = glob([din_anc "*ACO"]);

# for each instrument separate file into dayily values

for ifn = 13:13#length(fns)

   # extract instrument name
   fn = strsplit( fns{ifn}, "/"){end};
   instr = strsplit(fn,'.'){1};
   
   # check if output dir exists, otherwise create it
   dout = [dout_anc instr "/"];  
   if ~isdir(dout)   
      mkdir(dout);
   endif

   # read start day
   [status, doy_start] = system(["head -n1 " fns{ifn} " | awk -F   \"\\\"\*,\\\"\*\"   \'{print $3}\'"], 1);
   doy_start = str2num(doy_start);


   # read end day
   [status, doy_stop] = system(["tail -n1 " din_anc  fn " | awk -F   \"\\\"\*,\\\"\*\"  \'{print $3}\'"], 1);
   doy_stop = str2num(doy_stop);


   for iday = doy_start:doy_stop
   
      # run bash script to extract a given day
      system(["sed -nr \'\/," num2str(iday) ",\/p' " fns{ifn} " > " dout_anc  instr "/" instr "." num2str(iday)]);

   endfor

endfor


