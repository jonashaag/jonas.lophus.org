dummy:
	@echo "Usage: make [publish | server | generate]"

generate:
	pyll

publish: generate
	rsync -rv _output/ lophus:sites/jonas.lophus.org/

serve:
	pyll --server
