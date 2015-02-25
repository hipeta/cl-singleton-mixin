# cl-singleton-mixin

This project simply provides singleton-mixin class by using meta-propagation (https://github.com/hipeta/meta-propagate)

## Environment

- sbcl 1.2.1 or higher

## Usage

1. download meta-propagation (https://github.com/hipeta/meta-propagate) and move it to quicklisp local-project.
1. download this project from git.
1. move the directory to quicklisp local-projecct directory.
1. (ql:quickload :cl-singleton-mixin)
1. make your-class inherit singleton-mixin and your-class (and subclasses of your-class) become singleton classes.

## License

This software is released under the MIT License, see LICENSE file.
