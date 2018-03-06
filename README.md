# json2yaml - convert JSON to YAML on command line

A trivial script to convert JSON to YAML.

# Usage

Pipe to stdin:

    echo '{"foo": 42}' | json2yaml

Or pass in a file parameter:

    json2yaml /path/to/baz.json

You can also create a bash alias into your $HOME/.bash_aliases and run like above, or use directly the docker commands.

The corresponding YAML will be written to standard out.



# Installation

Requires Python 3 and PyYAML or docker.

For now, you can:
 - create a virtual environment (using requirements.txt), or install PyYAML some other way onto the
system.
- use docker and the provided dockerfile

# Author

Aaron Maxwell - http://redsymbol.net

# License

Public domain

