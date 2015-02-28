;;;; cl-singleton-mixin.lisp
;;;;  
;;;; Copyright 2015 hipeta (rhipeta@gmail.com)
;;;;
;;;; This software is released under the MIT License.
;;;; http://opensource.org/licenses/mit-license.php

(in-package :cl-user)
(defpackage cl-singleton-mixin
  (:use :cl)
  (:export :singleton-class
           :singleton-mixin))
(in-package :cl-singleton-mixin)

(defclass singleton-class (standard-class)
  ((%the-singleton-instance :initform ())))
(defclass singleton-mixin () ())
(defmethod make-instance ((class singleton-class) &key)
  (with-slots (%the-singleton-instance) class
    (or %the-singleton-instance (setf %the-singleton-instance (call-next-method)))))

(metap:validate-superclass* (singleton-class standard-class t)
                            (singleton-class singleton-class t)
                            (standard-class singleton-class nil))
(metap:register-m1-m2-pair 'singleton-mixin 'singleton-class)
