dummy:
	@echo "Usage: make [publish | serve | generate]"

generate:
	pyll

publish: generate upload

upload:
	rsync -rv _output/ l:sites/jonas.lophus.org/

serve:
	pyll --server
