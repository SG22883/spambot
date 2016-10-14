.PHONY: test


body.txt: body.html
	w3m -dump body.html > body.txt

# BUG: 'w3m -dump' will remove url links (only show text)


test:
	echo luke.huynugyen@gmail.com | python main.py -s "Testing SpamBot"

# @todo add --no-wait for test target
