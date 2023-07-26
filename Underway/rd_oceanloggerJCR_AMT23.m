function tmp = rd_oceanloggerJCR_AMT23(fn,year)

%2015,265.000579,265,0.00057870, 2015  265  00:00:46,17.800000,66.180000,-0.200000,-400.200000,17.800000,65.400000,1.200000,-400.300000,1025.110000,1025.070000,18.874300,4.774590,35.813500,1519.230000,0.556000,18.800000,0.523669,18.471400,0.829633,18.471200

 #   fmt = "%f,%f,%f,%f, %f  %f  %f:%f:%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f\n";

  #  fid = fopen(fn, "r");

   #     d = fscanf(fid, fmt, [29, Inf])'; 
   
   # fclose(fid);   

   d = csvread(fn);
   

    tmp.time = y0(year)-1 + d(2:end,2); #
    
       

    tmp.air_temp1 = d(2:end,3); % [degC]
    tmp.humidity1 = d(2:end,4); % [%]
    tmp.par = d(2:end,5); % [umol/m2]]
    tmp.tir1 = d(2:end,6); % [W/m2]
    tmp.air_temp2 = d(2:end,7); % [degC]
    tmp.humidity2 = d(2:end,8); % [%]
    tmp.par2 = d(2:end,9); % [umol/m2]]
    tmp.tir2 = d(2:end,10); % [W/m2]
    tmp.baro1 = d(2:end,11); % [hPa]
    tmp.baro2 = d(2:end,12); % [hPa]
    tmp.thermosalinograph_temp = d(2:end,13); % [degC]
    tmp.conductivity = d(2:end,14); % [S/m]
    tmp.sal = d(2:end,15); % [psu]
    tmp.velocity = d(2:end,16); % [m/s]
    tmp.chl = d(2:end,17); % [ug/l]
    tmp.sample_temp = d(2:end,18); % [degC]
    tmp.flowrate = d(2:end,19); % [l/min]
    tmp.sst = d(2:end,20); % [degC]

    #tmp.field28th = d(:,28); - N/A
    #tmp.field29th = d(:,29);



endfunction
