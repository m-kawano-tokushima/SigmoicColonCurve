function Rc=RadiusCylinder(Time, Rcb, CI)
% ‰~’Œ‚Ì”¼Œa‚ğŒˆ‚ß‚éŠÖ”
% “ü—ÍFTimeŠÔ, RcbŠî€”¼Œa, CI‚­‚Ú‚İŠÔŠu
% o—ÍFRcbŠÔ‚É‚¨‚¯‚é”¼Œa
if rem(Time, CI)==0
    Rc=Rcb*0.8;
else
    Rc=Rcb;
end
end