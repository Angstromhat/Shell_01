export FT_NBR1='\\\"?!'
export FT_NBR2='mrdoc'



echo $FT_NBR1 + $FT_NBR2 | tr "\'\\\\\"?!" "01234" | tr "mrdoc" "01234" | awk '{print "ibase=5; obase=A; " $0}' | bc | tr "0123456789" "gtaio luSnemf"

