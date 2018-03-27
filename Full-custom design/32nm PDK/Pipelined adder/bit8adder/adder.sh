rm adder*.txt
cp bit8_tb.mt0 adder_modelanswer.txt
sed 's/\./0/g' adder_modelanswer.txt > adder_model1.txt
sed 's/[0-9]*e\-[0-9]*/0/g' adder_model1.txt > adder_model2.txt
sed 's/\-0/0/g' adder_model2.txt > adder_model3.txt
sed 's/[1][0-9]*/1/g' adder_model3.txt > adder_results.txt
diff adder_results.txt model_adder.txt -w > diff.txt
if [[ -s diff.txt ]]; then
echo "Failed"
else
echo "Passed"
fi;
