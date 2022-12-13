#!bin/bash
touch finalfile.txt
cat file1.txt file2.txt file3.txt file4.txt file5.txt > finalfile.txt
echo "Concatenated all files : \n$(cat finalfile.txt)"
sed -i 's/hello/hi/g' finalfile.txt
echo "Replaced hello to hi: \n$(cat finalfile.txt)"
sed -i 's/ /\n/g'  finalfile.txt
echo "Broken into one word lines : \n$(cat finalfile.txt)"
num_words=$(cat finalfile.txt | wc -w)
echo "Number of words in finalfile.txt is $num_words"
java_pid=$(ps -ef | grep java| grep -v grep |  cut -d " " -f 3)
echo "java process id is $java_pid"
exit


