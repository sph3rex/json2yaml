json2yaml() { # Convert json to yaml || programming
	context="/local/path/to/this/directory"
	image_exists=$(docker images --filter reference=json2yaml:* --format "{{ .Tag }}" | wc -l)
	if [ $image_exists == 0 ]; then
		docker build -t json2yaml "${context}"
	fi

	ARGS="$@"
	docker run \
		--rm \
		--interactive \
		--user $(id -u):$(id -g) \
		--workdir '/code/json2yaml' \
		json2yaml "$ARGS"
}	
