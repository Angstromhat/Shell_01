export FT_LINE1=7
export FT_LINE2=15
cat /etc/passwd | grep -v '^#' | awk 'NR % 2 == 0' | cut -d':' -f1 | rev | sort -r | awk -v start=$FT_LINE1 -v end=$FT_LINE2 'NR >= start && NR <= end' | tr '\n' ',' | sed 's/,$/./'

