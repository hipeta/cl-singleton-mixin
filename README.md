# Cl-singleton-mixin

Cl-singleton-mixin simply provides singleton-mixin class by using metap (https://github.com/hipeta/metap).

## Example

```
(ql:quickload :cl-singleton-mixin)

(metap:enable-metap)

(defclass some-singleton (singleton-mixin) ())

(eq (make-instance 'some-singleton)
    (make-instance 'some-singleton))  ; => T

(defclass some-child (some-singleton) ())

(eq (make-instance 'some-child)
    (make-instance 'some-child))  ; => T
```

## Installation

1. Download metap (https://github.com/hipeta/metap) and move it to quicklisp local-project.
1. Download this project from git.
1. Move the directory to quicklisp local-projecct directory.
1. (ql:quickload :cl-singleton-mixin)

## License

Cl-singleton-mixin is released under the MIT License, see LICENSE file.
