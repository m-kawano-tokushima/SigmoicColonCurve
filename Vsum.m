function Vs=Vsum(map, SumArea)
% �o���h���w��ی�(�ی�����4����)�ɗ^����e����(�d�ʂ̑��a)

VSUM=zeros(30,4);
for i=1:30
    switch SumArea
        case 1  % ��1�ی�
            for j=32:51
                for k=1:20
                    if j>41
                        if k<12
                            VSUM(i,1) = VSUM(i,1) + map(j,k,i);   % 1-1�ی�
                        else
                            VSUM(i,4) = VSUM(i,4) + map(j,k,i);   % 1-4�ی�
                        end
                    else
                        if k<12
                            VSUM(i,2) = VSUM(i,2) + map(j,k,i);   % 1-2�ی�
                        else
                            VSUM(i,3) = VSUM(i,3) + map(j,k,i);   % 1-3�ی�
                        end
                    end
                end
            end

        case 2  % ��2�ی�
            for j=1:20
                for k=1:20
                    if j>11
                        if k<12
                            VSUM(i,1) = VSUM(i,1) + map(j,k,i);   % 2-1�ی�
                        else
                            VSUM(i,4) = VSUM(i,4) + map(j,k,i);   % 2-4�ی�
                        end
                    else
                        if k<12
                            VSUM(i,2) = VSUM(i,2) + map(j,k,i);   % 2-2�ی�
                        else
                            VSUM(i,3) = VSUM(i,3) + map(j,k,i);   % 2-3�ی�
                        end
                    end
                end
            end

        case 3  % ��3�ی�
            for j=1:20
                for k=32:51
                    if j>11
                        if k<42
                            VSUM(i,1) = VSUM(i,1) + map(j,k,i);   % 3-1�ی�
                        else
                            VSUM(i,4) = VSUM(i,4) + map(j,k,i);   % 3-4�ی�
                        end
                    else
                        if k<42
                            VSUM(i,2) = VSUM(i,2) + map(j,k,i);   % 3-2�ی�
                        else
                            VSUM(i,3) = VSUM(i,3) + map(j,k,i);   % 3-3�ی�
                        end
                    end
                end
            end

        case 4  % ��4�ی�
            for j=32:51
                for k=32:51
                    if j>41
                        if k<42
                            VSUM(i,1) = VSUM(i,1) + map(j,k,i);   % 4-1�ی�
                        else
                            VSUM(i,4) = VSUM(i,4) + map(j,k,i);   % 4-4�ی�
                        end
                    else
                        if k<42
                            VSUM(i,2) = VSUM(i,2) + map(j,k,i);   % 4-2�ی�
                        else
                            VSUM(i,3) = VSUM(i,3) + map(j,k,i);   % 4-3�ی�
                        end
                    end
                end
            end    
    end
end

Vs=VSUM;
end
