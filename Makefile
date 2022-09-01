watch:
	stack exec site -- watch

build:
	stack build
	stack exec site -- build
	npm install
	npm run dev:css

clean-all:
	stack exec site -- clean
	stack clean
	rm -rf node_modules

update:
	git stash
	git fetch origin
	git rebase origin/develop
	git stash apply

commit:
	git add .
	git commit -m "Update at (`date '+%F %T %Z'`)"
	git push origin head
