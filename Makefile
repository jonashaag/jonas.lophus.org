dummy:
	@echo "Usage: make [publish | serve | generate]"

generate:
	pyll

publish: generate
	rsync -rv _output/ lophus:sites/jonas.lophus.org/

serve:
	pyll --server
