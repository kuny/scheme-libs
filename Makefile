.PHONY: test

test:
	@chez --libdirs libs:. --script test/test.ss

