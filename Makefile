current_dir = $(shell pwd)
current_uid = $(shell id -u)
current_gid = $(shell id -g)

build:
	docker run --rm -e "JEKYLL_UID=${current_uid}" -e "JEKYLL_GID=${current_gid}" --volume="${current_dir}:/srv/jekyll" -it jekyll/jekyll:3.8 jekyll build
