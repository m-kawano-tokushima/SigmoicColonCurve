function Vs=Vsum(map, SumArea)
% ƒoƒ“ƒh‚ªŽw’èÛŒÀ(ÛŒÀ“à‚Å4•ªŠ„)‚É—^‚¦‚é‰e‹¿‚Ì(“dˆÊ‚Ì‘˜a)

VSUM=zeros(30,4);
for i=1:30
    switch SumArea
        case 1  % ‘æ1ÛŒÀ
            for j=32:51
                for k=1:20
                    if j>41
                        if k<12
                            VSUM(i,1) = VSUM(i,1) + map(j,k,i);   % 1-1ÛŒÀ
                        else
                            VSUM(i,4) = VSUM(i,4) + map(j,k,i);   % 1-4ÛŒÀ
                        end
                    else
                        if k<12
                            VSUM(i,2) = VSUM(i,2) + map(j,k,i);   % 1-2ÛŒÀ
                        else
                            VSUM(i,3) = VSUM(i,3) + map(j,k,i);   % 1-3ÛŒÀ
                        end
                    end
                end
            end

        case 2  % ‘æ2ÛŒÀ
            for j=1:20
                for k=1:20
                    if j>11
                        if k<12
                            VSUM(i,1) = VSUM(i,1) + map(j,k,i);   % 2-1ÛŒÀ
                        else
                            VSUM(i,4) = VSUM(i,4) + map(j,k,i);   % 2-4ÛŒÀ
                        end
                    else
                        if k<12
                            VSUM(i,2) = VSUM(i,2) + map(j,k,i);   % 2-2ÛŒÀ
                        else
                            VSUM(i,3) = VSUM(i,3) + map(j,k,i);   % 2-3ÛŒÀ
                        end
                    end
                end
            end

        case 3  % ‘æ3ÛŒÀ
            for j=1:20
                for k=32:51
                    if j>11
                        if k<42
                            VSUM(i,1) = VSUM(i,1) + map(j,k,i);   % 3-1ÛŒÀ
                        else
                            VSUM(i,4) = VSUM(i,4) + map(j,k,i);   % 3-4ÛŒÀ
                        end
                    else
                        if k<42
                            VSUM(i,2) = VSUM(i,2) + map(j,k,i);   % 3-2ÛŒÀ
                        else
                            VSUM(i,3) = VSUM(i,3) + map(j,k,i);   % 3-3ÛŒÀ
                        end
                    end
                end
            end

        case 4  % ‘æ4ÛŒÀ
            for j=32:51
                for k=32:51
                    if j>41
                        if k<42
                            VSUM(i,1) = VSUM(i,1) + map(j,k,i);   % 4-1ÛŒÀ
                        else
                            VSUM(i,4) = VSUM(i,4) + map(j,k,i);   % 4-4ÛŒÀ
                        end
                    else
                        if k<42
                            VSUM(i,2) = VSUM(i,2) + map(j,k,i);   % 4-2ÛŒÀ
                        else
                            VSUM(i,3) = VSUM(i,3) + map(j,k,i);   % 4-3ÛŒÀ
                        end
                    end
                end
            end    
    end
end

Vs=VSUM;
end
