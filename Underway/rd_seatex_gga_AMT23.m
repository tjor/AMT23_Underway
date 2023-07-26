function out = rd_seatex_gga_AMT23(fn)


  # fid = fopen(fn, 'r');

    # tmp = fgets(fid);

    # labels = strsplit(tmp, "\t");

    # tmp = fgets(fid);  # skip line
 
    # fmt = "%*f %*f %*f %*f %*f"
    
    # d = fscanf(fid, fmt, [5, Inf])';# 
   
   # fclose(fid);
    
   d = csvread(fn);
   
   out.time = y0(d(2,2))-1 + d(2:end,3); # col 3 is fractional j-day
   out.lat = d(2:end,end-1); # col 4 is lat
   out.lon = d(2:end,end);   # col 5 is lon
      

endfunction




