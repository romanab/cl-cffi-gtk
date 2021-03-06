;;;; Printing
;;;;
;;;; GtkPrintOperation offers a simple API to support printing in a
;;;; cross-platform way.

(in-package :gtk-demo)

(defstruct print-data
  filename
  header-height
  header-gap
  header-font-size
  font-size
  lines
  lines-per-page
  number-lines
  number-pages)

(defvar *data* (make-print-data :filename (rel-path "printing.lisp")
                                :font-size 11
                                :header-font-size 11
                                :header-height 22
                                :header-gap 11))

(defun begin-print (operation context)
  ;; Load and split the file to print into a list of lines
  (setf (print-data-lines *data*)
        (split-sequence #\linefeed (read-file (print-data-filename *data*))))
  ;; Calculate and save the number of lines to print
  (setf (print-data-number-lines *data*)
        (length (print-data-lines *data*)))
  ;; Calculate and save the number of lines per page
  (setf (print-data-lines-per-page *data*)
        (floor (/ (- (gtk-print-context-height context)
                     (print-data-header-height *data*)
                     (print-data-header-gap *data*))
                  (print-data-font-size *data*))))
  ;; Calculate and save the number of pages to print
  (setf (print-data-number-pages *data*)
        (ceiling (/ (print-data-number-lines *data*)
                 (print-data-lines-per-page *data*))))
  ;; Set the number of pages to the print operation
  (setf (gtk-print-operation-n-pages operation)
        (print-data-number-pages *data*)))

(defun draw-page (operation context page-nr)
  (declare (ignore operation))
  (let ((cr (gtk-print-context-get-cairo-context context))
        (width (floor (gtk-print-context-width context)))
        (layout (gtk-print-context-create-pango-layout context)))

    ;; 1. Print the header

    ;; Print a grey colored bar
    (cairo-rectangle cr 0 0 width (print-data-header-height *data*))
    (cairo-set-source-rgb cr 0.9 0.9 0.9)
    (cairo-fill cr)

    ;; Set the font for the header
    (let ((desc (pango-font-description-from-string "sans")))
      (setf (pango-font-description-size desc)
            (* (print-data-header-font-size *data*) +pango-scale+))
      (setf (pango-layout-font-description layout) desc))
    ;; Set the text for the header
    (setf (pango-layout-text layout) (print-data-filename *data*))
    (setf (pango-layout-width layout) (* width +pango-scale+))
    (setf (pango-layout-alignment layout) :center)

    ;; Print the filename in the header
    (multiple-value-bind (text-width text-height)
        (pango-layout-pixel-size layout)
      (declare (ignore text-width))
      ;; Set color to black and center the text in header
      (cairo-set-source-rgb cr 0.0 0.0 0.0)
      (cairo-move-to cr 0 (floor (/ (- (print-data-header-height *data*)
                                       text-height)
                                    2)))
      (pango-cairo-show-layout cr layout))

    ;; Print the page number in the header
    (setf (pango-layout-text layout)
          (format nil "~d/~d" (+ page-nr 1) (print-data-number-pages *data*)))
    (setf (pango-layout-width layout) -1)
    (multiple-value-bind (text-width text-height)
        (pango-layout-pixel-size layout)
      (cairo-move-to cr (floor (- width text-width 4))
                        (floor (/ (- (print-data-header-height *data*)
                                     text-height)
                                  2)))
      (pango-cairo-show-layout cr layout))

    ;; 2. Print the text on the page

    (setf layout (gtk-print-context-create-pango-layout context))
    ;; Set the font for the page
    (let ((desc (pango-font-description-from-string "monospace")))
      (setf (pango-font-description-size desc)
            (* (print-data-font-size *data*) +pango-scale+))
      (setf (pango-layout-font-description layout) desc))
    ;; Move to the start of the page
    (cairo-move-to cr 0 (+ (print-data-header-height *data*)
                           (print-data-header-gap *data*)))

    ;; Print the lines on the page
    (do ((i 0 (+ i 1))
         (line (* page-nr (print-data-lines-per-page *data*)) (+ line 1)))
        ((or (>= i (print-data-lines-per-page *data*))
             (>= line (print-data-number-lines *data*))))
      (setf (pango-layout-text layout)
            (pop (print-data-lines *data*)))
      (pango-cairo-show-layout cr layout)
      (cairo-rel-move-to cr 0 (print-data-font-size *data*)))))

(defvar *print-settings* nil)

(defun do-print-operation (window)
  (let ((response nil)
        (print (gtk-print-operation-new)))
    ;; Connect signal handlers for the print operation
    (g-signal-connect print "draw-page" #'draw-page)
    (g-signal-connect print "begin-print" #'begin-print)
    ;; Restore the print settings
    (when *print-settings*
      (setf (gtk-print-operation-print-settings print) *print-settings*))
    ;; Perform the print operation
    (setf response (gtk-print-operation-run print :print-dialog window))
    ;; Check the response and save the print settings
    (when (eq :apply response)
      (setf *print-settings* (gtk-print-operation-print-settings print)))))

(defun example-print-operation ()
  (within-main-loop
    (let ((window (make-instance 'gtk-window :type :toplevel
                                             :default-width 400
                                             :default-height 320
                                             :border-width 24))
          (button (make-instance 'gtk-button :label "Do Print")))

      (g-signal-connect window "destroy"
                        (lambda (widget)
                          (declare (ignore widget))
                          (leave-gtk-main)))

      (g-signal-connect button "clicked"
                        (lambda (widget)
                          (declare (ignore widget))
                          (do-print-operation window)))

      (gtk-container-add window button)
      (gtk-widget-show-all window))))

