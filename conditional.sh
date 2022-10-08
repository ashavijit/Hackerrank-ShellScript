read var
if [[$var = 'y' || $var = 'Y']]
then
 echo "Yes"
elif [[$var = 'n' || $var = 'N']]
then
 echo "No"
fi