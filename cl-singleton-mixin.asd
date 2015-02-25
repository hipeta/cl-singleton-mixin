;;;; cl-singleton-mixin.asd
;;;;  
;;;; Copyright 2015 hipeta (rhipeta@gmail.com)
;;;;
;;;; This software is released under the MIT License.
;;;; http://opensource.org/licenses/mit-license.php

(asdf:defsystem :cl-singleton-mixin
  :serial t
  :description "provides singleton-mixin class."
  :author "hipeta"
  :license "MIT"
  :depends-on (:closer-mop :meta-propagate)
  :components ((:file "cl-singleton-mixin")))

