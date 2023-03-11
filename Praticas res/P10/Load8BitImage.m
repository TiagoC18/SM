function [N,M,Im] = Load8BitImage(Filename)
    fid = fopen(Filename,'rb');
    N = fread(fid,1,'uint16');
    M = fread(fid,1,'uint16');
    
    Im = fread(fid,[N,M],'uint8');
    fclose(fid);
end

