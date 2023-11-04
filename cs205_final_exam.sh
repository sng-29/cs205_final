#!
# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like best_pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ===== SUMMARY OF DATA FILE =====
#    File name: [VALUE]
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ===== END SUMMARY =====
F"\t"
FILE=cs205_final_exam
{print "File name: " , $FILE} #prints out name of file
END{print "Total Pokemon: " , NR} #prints out total value of the last line numerically
{s += $7}
END{print "Avg. HP: " , s/NR} #print average by summing all values in the 7th field-the Hp column-and divides by total number of entries
{t += $8}
END{print "Avg. Attack: " , t/NR} #this does the exact thing but for the 8th field-the attack column
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called best_pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way best_pokemon.dat is formatted.
