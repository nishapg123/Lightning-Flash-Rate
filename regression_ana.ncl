load "$NCARG_ROOT/lib/ncarg/nclscripts/csm/contributed.ncl"

       diri    = "./"
       fili    = "srfl_asbbohcmadv.dat"
       
       ncol    = numAsciiCol(diri+fili)
       data    = readAsciiTable( diri+fili, ncol, "float" , 1)  ; one header 

       y       = data(:,0)
       x       = data(:,1:)

       opt = True
       opt@print_anova = True

       b    =  reg_multlin_stats(y,x,opt) ; partial regression coef
       print(b)
            
