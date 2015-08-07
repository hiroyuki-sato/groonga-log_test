db:
	groonga -n database/test.db < schema.txt

clean:
	rm -rf database/* log/*
   
