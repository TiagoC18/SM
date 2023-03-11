function [StreamOut] = EncodeImage_RLE(Image)
    [N,M] = size(Image);
    count = uint8(0);
    k = 1;
    StreamOut(k,1) = Image(1,1) 
    for n=1:N
        for m=1:M
            if Image(n,m) == StreamOut(k,1)
                count = count + 1;
                if count == 255
                    k = k + 1;
                    StreamOut(k,1) = count;
                    k = k+1;
                    StreamOut(k,1) = Image(n,m);
                    count = 1;
                end
            else
                k = k + 1;
                StreamOut(k,1) = count;
                k = k+1;
                StreamOut(k,1) = Image(n,m);
                count = 1;
            end
        end
    end
    k = k+1;
    StreamOut(k,1) = count;
end

