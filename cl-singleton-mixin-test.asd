;;;; cl-singleton-mixin-test.asd
;;;;  
;;;; Copyright 2015 hipeta (rhipeta@gmail.com)
;;;;
;;;; This software is released under the MIT License.
;;;; http://opensource.org/licenses/mit-license.php

(in-package :cl-user)
(defpackage cl-singleton-mixin-test-asd
  (:use :cl :asdf))
(in-package :cl-singleton-mixin-test-asd)

(defsystem cl-singleton-mixin-test
  :serial t
  :author "hipeta"
  :license "MIT"
  :description "cl-singleton-mixin test"
  :depends-on (:fiveam :cl-singleton-mixin)
  :components ((:file "cl-singleton-mixin-test")))

