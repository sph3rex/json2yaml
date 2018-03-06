# json2yaml - convert JSON to YAML on command line

A trivial script to convert JSON to YAML.

# Usage

Pipe to stdin:

    echo '{"foo": 42}' | json2yaml

Or pass in a file parameter:

    json2yaml /path/to/baz.json

You can also create a bash alias into your $HOME/.bash_aliases and run it like an alias, or use directly the docker commands.

The corresponding YAML will be written to standard out.

# yaml2json - convert YAML to JSON on command line

A trivial script to convert YAML to JSON.

# Usage

Pipe to stdin:

    echo 'Foo: 42' | yaml2json

Or pass in a file parameter:

    yaml2json /path/to/baz.yml

You can also create a bash alias into your $HOME/.bash_aliases and run it like an alias, or use directly the docker commands.

The corresponding JSON will be written to standard out.


# Installation

Requires you to install Python3 and PyYAML locally or docker.

You can use it with:
- docker and the provided dockerfile
- virtual environment (using requirements.txt), or locally by installing PyYAML through pip.

# Original author
Aaron Maxwell - http://redsymbol.net

# Took some inspiration from
https://gist.github.com/oglops/c70fb69eef42d40bed06

# License
Public domain

