function Save8BitStream(Filename,N,M,Stream)
    fid = fopen(Filename, 'wb');
    fwrite(fid, N, 'uint16');
    fwrite(fid, M, 'uint16');
    fwrite(fid, Stream, 'uint8');
    fclose(fid);
end

