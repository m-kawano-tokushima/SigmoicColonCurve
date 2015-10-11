function hikaku=VVV(map3)
%   ÉoÉìÉhÇ™äeè€å¿Ç…ó^Ç¶ÇÈâeãø(ìdà ÇÃëçòa)

VV=zeros(30,4);

for i=1:30
    for j=32:51
        for k=1:20
        VV(i,1)=VV(i,1)+map3(j,k,i);
        end
    end
    
    for j=1:20
        for k=1:20
        VV(i,2)=VV(i,2)+map3(j,k,i);
        end
    end
    
    for j=1:20
        for k=32:51
        VV(i,3)=VV(i,3)+map3(j,k,i);
        end
    end
    
    for j=32:51
        for k=32:51
        VV(i,4)=VV(i,4)+map3(j,k,i);
        end
    end
    
%     for j=1:51
%         for k=1:51
%             if j==25 || j==26 || j==27 || k==24 || k==25 || k==26 || k==27 || k==28
%             else
%         VV(i,5)=VV(i,5)+map3(j,k,i);
%             end
%         end
%     end
    
    hikaku=VV(:,:);
end
