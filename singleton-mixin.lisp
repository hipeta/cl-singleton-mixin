;;;; singleton-mixin.lisp
;;;;  
;;;; Copyright 2015 hipeta (rhipeta@gmail.com)
;;;;
;;;; This software is released under the MIT License.
;;;; http://opensource.org/licenses/mit-license.php

(in-package :cl-user)
(defpackage singleton-mixin
  (:use :cl)
  (:export :singleton-class
           :singleton-mixin))
(in-package :singleton-mixin)

(defclass singleton-class (standard-class)
  ((%the-singleton-instance :initform ())))
(defclass singleton-mixin () ())

(defmethod c2mop:validate-superclass ((class singleton-class) (super standard-class)) t)
(defmethod c2mop:validate-superclass ((class singleton-class) (super singleton-class)) t)
(defmethod c2mop:validate-superclass ((class standard-class) (super singleton-class)) nil)

(defmethod make-instance ((class singleton-class) &key)
  (with-slots (%the-singleton-instance) class
    (or %the-singleton-instance (setf %the-singleton-instance (call-next-method)))))

(metap:register-m1-m2-pair 'singleton-mixin 'singleton-class)
