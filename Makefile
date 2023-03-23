link: deadoralive.sh makehtml-bash
	ln -sf ~/.scripts/deadoralive.sh ~/bin/deadoralive.sh
	ln -sf ~/.scripts/makehtml-bash ~/bin/makehtml-bash
unlink: deadoralive.sh makehtmal-bash
	rm -f ~/deadoralive.sh ~/makehtml-bash
	cp ~/.scripts/deadoralive.sh ~/bin/deadoralive.sh
	cp ~/.scripts/makehtml-bash ~/bin/makehtml-bash
