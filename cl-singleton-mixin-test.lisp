;;;; cl-singleton-mixin-test.lisp
;;;;  
;;;; Copyright 2015 hipeta (rhipeta@gmail.com)
;;;;
;;;; This software is released under the MIT License.
;;;; http://opensource.org/licenses/mit-license.php

(in-package :cl-user)
(defpackage cl-singleton-mixin-test
  (:use :cl :fiveam :cl-singleton-mixin))
(in-package :cl-singleton-mixin-test)

(in-suite* all)

(defclass a (singleton-mixin) ())
(defclass b (a) ())
(defclass c (b) ())
(defclass d (a) ())
(defclass e (c d) ())

(test singleton-test
  (is (eq (make-instance 'a) (make-instance 'a)))
  (is (eq (make-instance 'b) (make-instance 'b)))
  (is (eq (make-instance 'c) (make-instance 'c)))
  (is (eq (make-instance 'd) (make-instance 'd)))
  (is (eq (make-instance 'e) (make-instance 'e)))
  (is (not (eq (make-instance 'a) (make-instance 'b))))
  (is (not (eq (make-instance 'a) (make-instance 'c))))
  (is (not (eq (make-instance 'a) (make-instance 'd))))
  (is (not (eq (make-instance 'a) (make-instance 'e))))
  (is (not (eq (make-instance 'b) (make-instance 'c))))
  (is (not (eq (make-instance 'b) (make-instance 'd))))
  (is (not (eq (make-instance 'b) (make-instance 'e))))
  (is (not (eq (make-instance 'c) (make-instance 'd))))
  (is (not (eq (make-instance 'c) (make-instance 'e))))
  (is (not (eq (make-instance 'd) (make-instance 'e)))))
