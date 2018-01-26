function c = chorus(son,dec)
%Crée un effet chorus
c = son;
for k = dec+1:length(c)
   c(k) = c(k)+son(k-dec);
end

c = c/max(abs(c));
