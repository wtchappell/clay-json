all: json

json: json.clay
	clay json.clay -o json

clean:
	rm json

.PHONY: clean all
