json2yaml() { # Convert json to yaml || programming
	context="/local/path/to/this/directory"
	image_exists=$(docker images --filter reference=json2yaml:* --format "{{ .Tag }}" | wc -l)
	if [ $image_exists == 0 ]; then
		docker build -t json2yaml "${context}"
	fi

	ARGS="$@"
	if [[ -z $ARGS ]]; then
		docker run \
			--rm \
			--user $(id -u):$(id -g) \
			--interactive \
			json2yaml
	else
		docker run \
			--rm \
			--user $(id -u):$(id -g) \
			--workdir $PWD \
			--volume $PWD:$PWD \
			json2yaml "$ARGS"
	fi
}	