# cl-singleton-mixin

This project simply provides singleton-mixin class by using metap (https://github.com/hipeta/metap).

## Example

```
(ql:quickload :cl-singleton-mixin)

(defclass some-singleton (singleton-mixin) ())

(eq (make-instance 'some-singleton)
    (make-instance 'some-singleton))  ; => T
```

## Installation

1. download metap (https://github.com/hipeta/metap) and move it to quicklisp local-project.
1. download this project from git.
1. move the directory to quicklisp local-projecct directory.
1. (ql:quickload :cl-singleton-mixin)

## License

cl-singleton-mixin is released under the MIT License, see LICENSE file.
