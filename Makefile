say_hello: 
	@echo "Hello World"

lab1:
	@awk -f script.awk data_lab1/data.csv > info.csv
	@sort -r -t"," -k5 -o info.csv info.csv
	@awk -F, '{$$1=++i FS $$1;}1' OFS=, info.csv > output.csv
	@rm info.csv
	@head -3 output.csv
