all: json

json: json.clay
	clay json.clay -o json

testrunner: testrunner.clay
	clay testrunner.clay -o testrunner

tests: testrunner
	find tests/ -name \*.json -print -exec ./testrunner {} \;

clean:
	rm -f json
	rm -f testrunner

.PHONY: clean all tests