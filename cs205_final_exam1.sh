
F"\t"
FILE=cs205_final_exam
{print "File name: " , $FILE} #prints out name of file
END{print "Total Pokemon: " , NR} #prints out total value of the last line numerically
{s += $7}
END{print "Avg. HP: " , s/NR} #print average by summing all values in the 7th field-the Hp column-and divides by total number of entries
{t += $8}
END{print "Avg. Attack: " , t/NR} #this does the exact thing but for the 8th field-the attack column
