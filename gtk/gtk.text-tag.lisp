;;; ----------------------------------------------------------------------------
;;; gtk.text-tag.lisp
;;;
;;; The documentation of this file is taken from the GTK+ 3 Reference Manual
;;; Version 3.24 and modified to document the Lisp binding to the GTK+ library.
;;; See <http://www.gtk.org>. The API documentation of the Lisp binding is
;;; available from <http://www.crategus.com/books/cl-cffi-gtk/>.
;;;
;;; Copyright (C) 2009 - 2011 Kalyanov Dmitry
;;; Copyright (C) 2011 - 2020 Dieter Kaiser
;;;
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU Lesser General Public License for Lisp
;;; as published by the Free Software Foundation, either version 3 of the
;;; License, or (at your option) any later version and with a preamble to
;;; the GNU Lesser General Public License that clarifies the terms for use
;;; with Lisp programs and is referred as the LLGPL.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU Lesser General Public License for more details.
;;;
;;; You should have received a copy of the GNU Lesser General Public
;;; License along with this program and the preamble to the Gnu Lesser
;;; General Public License.  If not, see <http://www.gnu.org/licenses/>
;;; and <http://opensource.franz.com/preamble.html>.
;;; ----------------------------------------------------------------------------
;;;
;;; GtkTextTag
;;;
;;;     A tag that can be applied to text in a GtkTextBuffer
;;;
;;; Types and Values
;;;
;;;     GtkTextAppearance                         ---> gtk.text-attributes.lisp
;;;     GtkTextAttributes                         ---> gtk.text-attributes.lisp
;;;
;;;     GtkTextTag
;;;
;;; Functions
;;;
;;;     gtk_text_tag_new
;;;     gtk_text_tag_get_priority
;;;     gtk_text_tag_set_priority
;;;     gtk_text_tag_event
;;;     gtk_text_tag_changed
;;;
;;;     gtk_text_attributes_new
;;;     gtk_text_attributes_copy
;;;     gtk_text_attributes_copy_values
;;;     gtk_text_attributes_unref
;;;     gtk_text_attributes_ref
;;;
;;; Properties
;;;
;;;             gboolean   accumulative-margin          Read / Write
;;;                gchar*  background                   Write
;;;             gboolean   background-full-height       Read / Write
;;;             gboolean   background-full-height-set   Read / Write
;;;             GdkColor*  background-gdk               Read / Write
;;;              GdkRGBA*  background-rgba              Read / Write
;;;             gboolean   background-set               Read / Write
;;;     GtkTextDirection   direction                    Read / Write
;;;             gboolean   editable                     Read / Write
;;;             gboolean   editable-set                 Read / Write
;;;             gboolean   fallback                     Read / Write
;;;             gboolean   fallback-set                 Read / Write
;;;                gchar*  family                       Read / Write
;;;             gboolean   family-set                   Read / Write
;;;                gchar*  font                         Read / Write
;;; PangoFontDescription*  font-desc                    Read / Write
;;;                gchar*  font-features                Read / Write
;;;             gboolean   font-features-set            Read / Write
;;;                gchar*  foreground                   Write
;;;             GdkColor*  foreground-gdk               Read / Write
;;;              GdkRGBA*  foreground-rgba              Read / Write
;;;             gboolean   foreground-set               Read / Write
;;;                 gint   indent                       Read / Write
;;;             gboolean   indent-set                   Read / Write
;;;             gboolean   invisible                    Read / Write
;;;             gboolean   invisible-set                Read / Write
;;;     GtkJustification   justification                Read / Write
;;;             gboolean   justification-set            Read / Write
;;;                gchar*  language                     Read / Write
;;;             gboolean   language-set                 Read / Write
;;;                 gint   left-margin                  Read / Write
;;;             gboolean   left-margin-set              Read / Write
;;;                 gint   letter-spacing               Read / Write
;;;             gboolean   letter-spacing-set           Read / Write
;;;                gchar*  name                         Read / Write / Construct
;;;                gchar*  paragraph-background         Write
;;;             GdkColor*  paragraph-background-gdk     Read / Write
;;;              GdkRGBA*  paragraph-background-rgba    Read / Write
;;;             gboolean   paragraph-background-set     Read / Write
;;;                 gint   pixels-above-lines           Read / Write
;;;             gboolean   pixels-above-lines-set       Read / Write
;;;                 gint   pixels-below-lines           Read / Write
;;;             gboolean   pixels-below-lines-set       Read / Write
;;;                 gint   pixels-inside-wrap           Read / Write
;;;             gboolean   pixels-inside-wrap-set       Read / Write
;;;                 gint   right-margin                 Read / Write
;;;             gboolean   right-margin-set             Read / Write
;;;                 gint   rise                         Read / Write
;;;             gboolean   rise-set                     Read / Write
;;;              gdouble   scale                        Read / Write
;;;             gboolean   scale-set                    Read / Write
;;;                 gint   size                         Read / Write
;;;              gdouble   size-points                  Read / Write
;;;             gboolean   size-set                     Read / Write
;;;         PangoStretch   stretch                      Read / Write
;;;             gboolean   stretch-set                  Read / Write
;;;             gboolean   strikethrough                Read / Write
;;;              GdkRGBA*  strikethrough-rgba           Read / Write
;;;             gboolean   strikethrough-rgba-set       Read / Write
;;;             gboolean   strikethrough-set            Read / Write
;;;           PangoStyle   style                        Read / Write
;;;             gboolean   style-set                    Read / Write
;;;        PangoTabArray*  tabs                         Read / Write
;;;             gboolean   tabs-set                     Read / Write
;;;       PangoUnderline   underline                    Read / Write
;;;              GdkRGBA*  underline-rgba               Read / Write
;;;             gboolean   underline-rgba-set           Read / Write
;;;             gboolean   underline-set                Read / Write
;;;         PangoVariant   variant                      Read / Write
;;;             gboolean   variant-set                  Read / Write
;;;                 gint   weight                       Read / Write
;;;             gboolean   weight-set                   Read / Write
;;;          GtkWrapMode   wrap-mode                    Read / Write
;;;             gboolean   wrap-mode-set                Read / Write
;;;
;;; Signals
;;;
;;;             gboolean   event                        Run Last
;;;
;;; Object Hierarchy
;;;
;;;     GObject
;;;     ╰── GtkTextTag
;;; ----------------------------------------------------------------------------

(in-package :gtk)

;;; ----------------------------------------------------------------------------
;;; struct GtkTextTag
;;; ----------------------------------------------------------------------------

(define-g-object-class "GtkTextTag" gtk-text-tag
  (:superclass g-object
   :export t
   :interfaces nil
   :type-initializer "gtk_text_tag_get_type")
  ((accumulative-margin
    gtk-text-tag-accumulative-margin
    "accumulative-margin" "gboolean" t t)
   (background
    gtk-text-tag-background
    "background" "gchararray" nil t)
   (background-full-height
    gtk-text-tag-background-full-height
    "background-full-height" "gboolean" t t)
   (background-full-height-set
    gtk-text-tag-background-full-height-set
    "background-full-height-set" "gboolean" t t)
   (background-gdk
    gtk-text-tag-background-gdk
    "background-gdk" "GdkColor" t t)
   (background-rgba
    gtk-text-tag-background-rgba
    "background-rgba" "GdkRGBA" t t)
   (background-set
    gtk-text-tag-background-set
    "background-set" "gboolean" t t)
   (direction
    gtk-text-tag-direction
    "direction" "GtkTextDirection" t t)
   (editable
    gtk-text-tag-editable
    "editable" "gboolean" t t)
   (editable-set
    gtk-text-tag-editable-set
    "editable-set" "gboolean" t t)
   #+gtk-3-16
   (fallback
    gtk-text-tag-fallback
    "fallback" "gboolean" t t)
   #+gtk-3-16
   (fallback-set
    gtk-text-tag-fallback-set
    "fallback-set" "gboolean" t t)
   (family
    gtk-text-tag-family
    "family" "gchararray" t t)
   (family-set
    gtk-text-tag-family-set
    "family-set" "gboolean" t t)
   (font
    gtk-text-tag-font
    "font" "gchararray" t t)
   (font-desc
    gtk-text-tag-font-desc
    "font-desc" "PangoFontDescription" t t)
   #+gtk-3-18
   (font-features
    gtk-text-tag-font-features
    "font-features" "gchararray" t t)
   #+gtk-3-18
   (font-features-set
    gtk-text-tag-font-features-set
    "font-features-set" "gboolean" t t)
   (foreground
    gtk-text-tag-foreground
    "foreground" "gchararray" nil t)
   (foreground-gdk
    gtk-text-tag-foreground-gdk
    "foreground-gdk" "GdkColor" t t)
   (foreground-rgba
    gtk-text-tag-foreground-rgba
    "foreground-rgba" "GdkRGBA" t t)
   (foreground-set
    gtk-text-tag-foreground-set
    "foreground-set" "gboolean" t t)
   (indent
    gtk-text-tag-indent
    "indent" "gint" t t)
   (indent-set
    gtk-text-tag-indent-set
    "indent-set" "gboolean" t t)
   (invisible
    gtk-text-tag-invisible
    "invisible" "gboolean" t t)
   (invisible-set
    gtk-text-tag-invisible-set
    "invisible-set" "gboolean" t t)
   (justification
    gtk-text-tag-justification
    "justification" "GtkJustification" t t)
   (justification-set
    gtk-text-tag-justification-set
    "justification-set" "gboolean" t t)
   (language
    gtk-text-tag-language
    "language" "gchararray" t t)
   (language-set
    gtk-text-tag-language-set
    "language-set" "gboolean" t t)
   (left-margin
    gtk-text-tag-left-margin
    "left-margin" "gint" t t)
   (left-margin-set
    gtk-text-tag-left-margin-set
    "left-margin-set" "gboolean" t t)
   #+gtk-3-16
   (letter-spacing
    gtk-text-tag-letter-spacing
    "letter-spacing" "gint" t t)
   #+gtk-3-16
   (letter-spacing-set
    gtk-text-tag-letter-spacing-set
    "letter-spacing-set" "gboolean" t t)
   (name
    gtk-text-tag-name
    "name" "gchararray" t nil)
   (paragraph-background
    gtk-text-tag-paragraph-background
    "paragraph-background" "gchararray" nil t)
   (paragraph-background-gdk
    gtk-text-tag-paragraph-background-gdk
    "paragraph-background-gdk" "GdkColor" t t)
   (paragraph-background-rgba
    gtk-text-tag-paragraph-background-rgba
    "paragraph-background-rgba" "GdkRGBA" t t)
   (paragraph-background-set
    gtk-text-tag-paragraph-background-set
    "paragraph-background-set" "gboolean" t t)
   (pixels-above-lines
    gtk-text-tag-pixels-above-lines
    "pixels-above-lines" "gint" t t)
   (pixels-above-lines-set
    gtk-text-tag-pixels-above-lines-set
    "pixels-above-lines-set" "gboolean" t t)
   (pixels-below-lines
    gtk-text-tag-pixels-below-lines
    "pixels-below-lines" "gint" t t)
   (pixels-below-lines-set
    gtk-text-tag-pixels-below-lines-set
    "pixels-below-lines-set" "gboolean" t t)
   (pixels-inside-wrap
    gtk-text-tag-pixels-inside-wrap
    "pixels-inside-wrap" "gint" t t)
   (pixels-inside-wrap-set
    gtk-text-tag-pixels-inside-wrap-set
    "pixels-inside-wrap-set" "gboolean" t t)
   (right-margin
    gtk-text-tag-right-margin
    "right-margin" "gint" t t)
   (right-margin-set
    gtk-text-tag-right-margin-set
    "right-margin-set" "gboolean" t t)
   (rise
    gtk-text-tag-rise
    "rise" "gint" t t)
   (rise-set
    gtk-text-tag-rise-set
    "rise-set" "gboolean" t t)
   (scale
    gtk-text-tag-scale
    "scale" "gdouble" t t)
   (scale-set
    gtk-text-tag-scale-set
    "scale-set" "gboolean" t t)
   (size
    gtk-text-tag-size
    "size" "gint" t t)
   (size-points
    gtk-text-tag-size-points
    "size-points" "gdouble" t t)
   (size-set
    gtk-text-tag-size-set
    "size-set" "gboolean" t t)
   (stretch
    gtk-text-tag-stretch
    "stretch" "PangoStretch" t t)
   (stretch-set
    gtk-text-tag-stretch-set
    "stretch-set" "gboolean" t t)
   (strikethrough
    gtk-text-tag-strikethrough
    "strikethrough" "gboolean" t t)
   #+gtk-3-16
   (strikethrough-rgba
    gtk-text-tag-strikethrough-rgba
    "strikethrough-rgba" "GdkRGBA" t t)
   #+gtk-3-16
   (strikethrough-rgba-set
    gtk-text-tag-strikethrough-rgba-set
    "strikethrough-rgba-set" "gboolean" t t)
   (strikethrough-set
    gtk-text-tag-strikethrough-set
    "strikethrough-set" "gboolean" t t)
   (style
    gtk-text-tag-style
    "style" "PangoStyle" t t)
   (style-set
    gtk-text-tag-style-set
    "style-set" "gboolean" t t)
   (tabs
    gtk-text-tag-tabs
    "tabs" "PangoTabArray" t t)
   (tabs-set
    gtk-text-tag-tabs-set
    "tabs-set" "gboolean" t t)
   (underline
    gtk-text-tag-underline
    "underline" "PangoUnderline" t t)
   #+gtk-3-16
   (underline-rgba
    gtk-text-tag-underline-rgba
    "underline-rgba" "GdkRGBA" t t)
   #+gtk-3-16
   (underline-rgba-set
    gtk-text-tag-underline-rgba-set
    "underline-rgba-set" "gboolean" t t)
   (underline-set
    gtk-text-tag-underline-set
    "underline-set" "gboolean" t t)
   (variant
    gtk-text-tag-variant
    "variant" "PangoVariant" t t)
   (variant-set
    gtk-text-tag-variant-set
    "variant-set" "gboolean" t t)
   (weight
    gtk-text-tag-weight
    "weight" "gint" t t)
   (weight-set
    gtk-text-tag-weight-set
    "weight-set" "gboolean" t t)
   (wrap-mode
    gtk-text-tag-wrap-mode
    "wrap-mode" "GtkWrapMode" t t)
   (wrap-mode-set
    gtk-text-tag-wrap-mode-set
    "wrap-mode-set" "gboolean" t t)))

#+cl-cffi-gtk-documentation
(setf (documentation 'gtk-text-tag 'type)
 "@version{2020-3-20}
  @begin{short}
    You may wish to begin by reading the text widget conceptual overview which
    gives an overview of all the objects and data types related to the text
    widget and how they work together.
  @end{short}

  Tags should be in the @class{gtk-text-tag-table} object for a given
  @class{gtk-text-buffer} object before using them with that buffer.

  The @fun{gtk-text-buffer-create-tag} function is the best way to create tags.
  See gtk3-demo for numerous examples.

  For each property of @sym{gtk-text-tag}, there is a \"set\" property, e. g.
  \"font-set\" corresponds to \"font\". These \"set\" properties reflect whether
  a property has been set or not. They are maintained by GTK+ and you should not
  set them independently.
  @begin[Signal Details]{dictionary}
    @subheading{The \"event\" signal}
      @begin{pre}
 lambda (tag object event iter)    : Run Last
      @end{pre}
      The \"event\" signal is emitted when an event occurs on a region of the
      buffer marked with this tag.
      @begin[code]{table}
        @entry[tag]{The @sym{gtk-text-tag} object on which the signal is
          emitted.}
        @entry[object]{The object the event was fired from (typically a
          @class{gtk-text-view} object).}
        @entry[event]{The event which triggered the signal.}
        @entry[iter]{A @class{gtk-text-iter} pointing at the location the event
          occured.}
        @entry[Returns]{@em{True} to stop other handlers from being invoked for
          the event. @em{False} to propagate the event further.}
      @end{table}
  @end{dictionary}
  @see-slot{gtk-text-tag-accumulative-margin}
  @see-slot{gtk-text-tag-background}
  @see-slot{gtk-text-tag-background-full-height}
  @see-slot{gtk-text-tag-background-full-height-set}
  @see-slot{gtk-text-tag-background-gdk}
  @see-slot{gtk-text-tag-background-rgba}
  @see-slot{gtk-text-tag-background-set}
  @see-slot{gtk-text-tag-direction}
  @see-slot{gtk-text-tag-editable}
  @see-slot{gtk-text-tag-editable-set}
  @see-slot{gtk-text-tag-family}
  @see-slot{gtk-text-tag-family-set}
  @see-slot{gtk-text-tag-font}
  @see-slot{gtk-text-tag-font-desc}
  @see-slot{gtk-text-tag-foreground}
  @see-slot{gtk-text-tag-foreground-gdk}
  @see-slot{gtk-text-tag-foreground-rgba}
  @see-slot{gtk-text-tag-foreground-set}
  @see-slot{gtk-text-tag-indent}
  @see-slot{gtk-text-tag-indent-set}
  @see-slot{gtk-text-tag-invisible}
  @see-slot{gtk-text-tag-invisible-set}
  @see-slot{gtk-text-tag-justification}
  @see-slot{gtk-text-tag-justification-set}
  @see-slot{gtk-text-tag-language}
  @see-slot{gtk-text-tag-language-set}
  @see-slot{gtk-text-tag-left-margin}
  @see-slot{gtk-text-tag-left-margin-set}
  @see-slot{gtk-text-tag-name}
  @see-slot{gtk-text-tag-paragraph-background}
  @see-slot{gtk-text-tag-paragraph-background-gdk}
  @see-slot{gtk-text-tag-paragraph-background-rgba}
  @see-slot{gtk-text-tag-paragraph-background-set}
  @see-slot{gtk-text-tag-pixels-above-lines}
  @see-slot{gtk-text-tag-pixels-above-lines-set}
  @see-slot{gtk-text-tag-pixels-below-lines}
  @see-slot{gtk-text-tag-pixels-below-lines-set}
  @see-slot{gtk-text-tag-pixels-inside-wrap}
  @see-slot{gtk-text-tag-pixels-inside-wrap-set}
  @see-slot{gtk-text-tag-right-margin}
  @see-slot{gtk-text-tag-right-margin-set}
  @see-slot{gtk-text-tag-rise}
  @see-slot{gtk-text-tag-rise-set}
  @see-slot{gtk-text-tag-scale}
  @see-slot{gtk-text-tag-scale-set}
  @see-slot{gtk-text-tag-size}
  @see-slot{gtk-text-tag-size-points}
  @see-slot{gtk-text-tag-size-set}
  @see-slot{gtk-text-tag-stretch}
  @see-slot{gtk-text-tag-stretch-set}
  @see-slot{gtk-text-tag-strikethrough}
  @see-slot{gtk-text-tag-strikethrough-set}
  @see-slot{gtk-text-tag-style}
  @see-slot{gtk-text-tag-style-set}
  @see-slot{gtk-text-tag-tabs}
  @see-slot{gtk-text-tag-tabs-set}
  @see-slot{gtk-text-tag-underline}
  @see-slot{gtk-text-tag-underline-set}
  @see-slot{gtk-text-tag-variant}
  @see-slot{gtk-text-tag-variant-set}
  @see-slot{gtk-text-tag-weight}
  @see-slot{gtk-text-tag-weight-set}
  @see-slot{gtk-text-tag-wrap-mode}
  @see-slot{gtk-text-tag-wrap-mode-set}")

;;; ----------------------------------------------------------------------------
;;; Property and Accessor Details
;;; ----------------------------------------------------------------------------

;;; --- gtk-text-tag-accumulative-margin ---------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "accumulative-margin"
                                               'gtk-text-tag) 't)
 "The @code{accumulative-margin} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether the margins accumulate or override each other. When set to @em{true}
  the margins of this tag are added to the margins of any other non-accumulative
  margins present. When set to @em{false} the margins override one another
  (the default). @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-accumulative-margin atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-accumulative-margin 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{accumulative-margin} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-background ------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "background" 'gtk-text-tag) 't)
 "The @code{background} property of type @code{:string} (Write) @br{}
  Background color as a string. @br{}
  Default value: @code{nil}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-background atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-background 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{background} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-background-full-height ------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "background-full-height"
                                               'gtk-text-tag) 't)
 "The @code{background-full-height} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether the background color fills the entire line height or only the height
  of the tagged characters. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-background-full-height atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-background-full-height 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{background-full-height} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-background-full-height-set --------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "background-full-height-set"
                                               'gtk-text-tag) 't)
 "The @code{background-full-height-set} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether this tag affects background height. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-background-full-height-set
               atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-background-full-height-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{background-full-height-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-background-gdk --------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "background-gdk"
                                               'gtk-text-tag) 't)
 "The @code{background-gdk} property of type @class{gdk-color}
  (Read / Write) @br{}
  Background color as a @sym{gdk-color}. @br{}
  @em{Warning:} The @code{background-gdk} property has been deprecated since
  version 3.4 and should not be used in newly-written code. Use the
  @code{background-rgba} property instead.")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-background-gdk atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-background-gdk 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{background-gdk} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-background-rgba -------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "background-rgba"
                                               'gtk-text-tag) 't)
 "The @code{background-rgba} property of type @class{gdk-rgba}
  (Read / Write) @br{}
  Background color as a @sym{gdk-rgba}.")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-background-rgba atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-background-rgba 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{background-rgba} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-background-set --------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "background-set"
                                               'gtk-text-tag) 't)
 "The @code{background-set} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether this tag affects the background color. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-background-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-background-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{background-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-direction -------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "direction" 'gtk-text-tag) 't)
 "The @code{direction} property of type @symbol{gtk-text-direction}
  (Read / Write) @br{}
  Text direction, e. g. right-to-left or left-to-right. @br{}
  Default value: @code{:none}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-direction atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-direction 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{direction} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-editable --------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "editable" 'gtk-text-tag) 't)
 "The @code{editable} property of type @code{:boolean} (Read / Write) @br{}
  Whether the text can be modified by the user. @br{}
  Default value: @em{true}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-editable atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-editable 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{editable} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-editable-set ----------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "editable-set" 'gtk-text-tag) 't)
 "The @code{editable-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects text editability. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-editable-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-editable-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{editable-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-fallback --------------------------------------------------

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (documentation (atdoc:get-slot-from-name "fallback" 'gtk-text-tag) 't)
 "The @code{fallback} property of type @code{:boolean} (Read / Write) @br{}
  Whether font fallback is enabled. When set to @em{true}, other fonts will be
  substituted where the current font is missing glyphs. Since 3.16 @br{}
  Default value: @em{true}")

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (gethash 'gtk-text-tag-fallback atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-fallback 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{fallback} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-fallback-set ----------------------------------------------

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (documentation (atdoc:get-slot-from-name "fallback-set" 'gtk-text-tag) 't)
 "The @code{fallback-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects font fallback. Since 3.16 @br{}
  Default value: @em{false}")

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (gethash 'gtk-text-tag-fallback-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-fallback-set 'function)
 "@version{2019-4-12}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{fallback-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}

  Since 3.16
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-family ----------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "family" 'gtk-text-tag) 't)
 "The @code{family} property of type @code{:string} (Read / Write) @br{}
  Name of the font family, e. g. Sans, Helvetica, Times, Monospace. @br{}
  Default value: @code{nil}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-family atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-family 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{family} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-family-set ------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "family-set" 'gtk-text-tag) 't)
 "The @code{family-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects the font family. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-family-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-family-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{family-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-font ------------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "font" 'gtk-text-tag) 't)
 "The @code{font} property of type @code{:string} (Read / Write) @br{}
  Font description as string, e. g. \"Sans Italic 12\".
  Note that the initial value of this property depends on the internals of the
  @class{pango-font-description} structure. @br{}
  Default value: @code{nil}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-font atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-font 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{font} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-font-desc -------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "font-desc" 'gtk-text-tag) 't)
 "The @code{font-desc} property of type @class{pango-font-description}
  (Read / Write) @br{}
  Font description as a @sym{pango-font-description} structure.")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-font-desc atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-font-desc 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{font-desc} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-font-features ---------------------------------------------

#+(and gtk-3-18 cl-cffi-gtk-documentation)
(setf (documentation (atdoc:get-slot-from-name "font-features" 'gtk-text-tag)
      't)
 "The @code{font-features} property of type @code{:string} (Read / Write) @br{}
  OpenType font features, as a string. Since 3.18 @br{}
  Default value: @code{nil}")

#+(and gtk-3-18 cl-cffi-gtk-documentation)
(setf (gethash 'gtk-text-tag-font-features atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-font-features 'function)
 "@version{2019-4-12}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{font-features} slot of the
    @class{gtk-text-tag} class.
  @end{short}

  Since 3.18
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-font-features-set -----------------------------------------

#+(and gtk-3-18 cl-cffi-gtk-documentation)
(setf (documentation (atdoc:get-slot-from-name "font-features-set"
                                               'gtk-text-tag) 't)
 "The @code{font-features-set} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether this tag affects font features. Since 3.18 @br{}
  Default value: @em{false}")

#+(and gtk-3-18 cl-cffi-gtk-documentation)
(setf (gethash 'gtk-text-tag-font-features-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-font-features-set 'function)
 "@version{2019-4-12}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{font-features-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}

  Since 3.18
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-foreground ------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "foreground" 'gtk-text-tag) 't)
 "The @code{foreground} property of type @code{:string} (Write) @br{}
  Foreground color as a string. @br{}
  Default value: @code{nil}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-foreground atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-foreground 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{foreground} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-foreground-gdk --------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "foreground-gdk"
                                               'gtk-text-tag) 't)
 "The @code{foreground-gdk} property of type @class{gdk-color}
  (Read / Write) @br{}
  Foreground color as a @sym{gdk-color} @br{}
  @em{Warning:} The @code{foreground-gdk} property has been deprecated since
  version 3.4 and should not be used in newly-written code. Use the
  @code{foreground-rgba} property instead.")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-foreground-gdk atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-foreground-gdk 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{foreground-gdk} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-foreground-rgba -------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "foreground-rgba"
                                               'gtk-text-tag) 't)
 "The @code{foreground-rgba} property of type @class{gdk-rgba}
  (Read / Write) @br{}
  Foreground color as a @sym{gdk-rgba}.")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-foreground-rgba atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-foreground-rgba 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{foreground-rgba} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-foreground-set --------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "foreground-set"
                                               'gtk-text-tag) 't)
 "The @code{foreground-set} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether this tag affects the foreground color. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-foreground-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-foreground-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{foreground-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-indent ----------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "indent" 'gtk-text-tag) 't)
 "The @code{indent} property of type @code{:int} (Read / Write) @br{}
  Amount to indent the paragraph, in pixels. @br{}
  Default value: 0")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-indent atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-indent 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{indent} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-indent-set ------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "indent-set" 'gtk-text-tag) 't)
 "The @code{indent-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects indentation. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-indent-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-indent-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{indent-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-invisible -------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "invisible" 'gtk-text-tag) 't)
 "The @code{invisible} property of type @code{:boolean} (Read / Write) @br{}
  Whether this text is hidden.
  Note that there may still be problems with the support for invisible text,
  in particular when navigating programmatically inside a buffer containing
  invisible segments. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-invisible atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-invisible 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{invisible} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-invisible-set ---------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "invisible-set"
                                               'gtk-text-tag) 't)
 "The @code{invisible-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects text visibility. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-invisible-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-invisible-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{invisible-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-justification ---------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "justification"
                                               'gtk-text-tag) 't)
 "The @code{justification} property of type @symbol{gtk-justification}
  (Read / Write) @br{}
  Left, right, or center justification. @br{}
  Default value: @code{:left}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-justification atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-justification 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{justification} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-justification-set -----------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "justification-set"
                                               'gtk-text-tag) 't)
 "The @code{justification-set} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether this tag affects paragraph justification. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-justification-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-justification-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{justification-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-language --------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "language" 'gtk-text-tag) 't)
 "The @code{language} property of type @code{:string} (Read / Write) @br{}
  The language this text is in, as an ISO code. Pango can use this as a hint
  when rendering the text. If not set, an appropriate default will be used.
  Note that the initial value of this property depends on the current locale,
  see also the @fun{gtk-get-default-language} function. @br{}
  Default value: @code{nil}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-language atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-language 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{language} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-language-set ----------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "language-set" 'gtk-text-tag) 't)
 "The @code{language-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects the language the text is rendered as. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-language-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-language-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{language-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-left-margin -----------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "left-margin" 'gtk-text-tag) 't)
 "The @code{left-margin} property of type @code{:int} (Read / Write) @br{}
  Width of the left margin in pixels. @br{}
  Allowed values: >= 0 @br{}
  Default value: 0")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-left-margin atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-left-margin 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{left-margin} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-left-margin-set -------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "left-margin-set"
                                               'gtk-text-tag) 't)
 "The @code{left-margin-set} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether this tag affects the left margin. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-left-margin-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-left-margin-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{left-margin-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-letter-spacing --------------------------------------------

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (documentation (atdoc:get-slot-from-name "letter-spacing" 'gtk-text-tag)
      't)
 "The @code{letter-spacing} property of type @code{:int} (Read / Write) @br{}
  Extra spacing between graphemes, in Pango units. Since 3.16 @br{}
  Allowed values: >= 0 @br{}
  Default value: 0")

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (gethash 'gtk-text-tag-letter-spacing atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-letter-spacing 'function)
 "@version{2019-4-12}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{letter-spacing} slot of the
    @class{gtk-text-tag} class.
  @end{short}

  Since 3.16
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-letter-spacing-set ----------------------------------------

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (documentation (atdoc:get-slot-from-name "letter-spacing-set"
                                               'gtk-text-tag) 't)
 "The @code{letter-spacing-set} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether this tag affects letter spacing. Since 3.16 @br{}
  Default value: @em{false}")

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (gethash 'gtk-text-tag-letter-spacing-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-letter-spacing-set 'function)
 "@version{2019-4-12}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{letter-spacing-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}

  Since 3.16
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-name ------------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "name" 'gtk-text-tag) 't)
 "The @code{name} property of type @code{:string}
  (Read / Write / Construct) @br{}
  Name used to refer to the text tag. @code{Nil} for anonymous tags. @br{}
  Default value: @code{nil}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-name atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-name 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{name} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-paragraph-background --------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "paragraph-background"
                                               'gtk-text-tag) 't)
 "The @code{paragraph-background} property of type @code{:string}
  (Write) @br{}
  The paragraph background color as a string. @br{}
  Default value: @code{nil}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-paragraph-background atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-paragraph-background 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{paragraph-background} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-paragraph-background-gdk ----------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "paragraph-background-gdk"
                                               'gtk-text-tag) 't)
 "The @code{paragraph-background-gdk} property of type @class{gdk-color}
  (Read / Write) @br{}
  The paragraph background color as a as a @sym{gdk-color}. @br{}
  @em{Warning:} The @code{paragraph-background-gdk} property has been deprecated
  since version 3.4 and should not be used in newly-written code. Use the
  @code{paragraph-background-rgba} property instead.")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-paragraph-background-gdk
               atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-paragraph-background-gdk 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{paragraph-background-gdk} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-paragraph-background-rgba ---------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "paragraph-background-rgba"
                                               'gtk-text-tag) 't)
 "The @code{paragraph-background-rgba} property of type @class{gdk-rgba}
  (Read / Write) @br{}
  The paragraph background color as a as a @sym{gdk-rgba}.")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-paragraph-background-rgba
               atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-paragraph-background-rgba 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{paragraph-background-rgba} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-paragraph-background-set ----------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "paragraph-background-set"
                                               'gtk-text-tag) 't)
 "The @code{paragraph-background-set} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether this tag affects the paragraph background color. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-paragraph-background-set
               atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-paragraph-background-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{paragraph-background-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-pixels-above-lines ----------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "pixels-above-lines"
                                               'gtk-text-tag) 't)
 "The @code{pixels-above-lines} property of type @code{:int}
  (Read / Write) @br{}
  Pixels of blank space above paragraphs. @br{}
  Allowed values: >= 0 @br{}
  Default value: 0")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-pixels-above-lines atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-pixels-above-lines 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{pixels-above-lines} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-pixels-above-lines-set ------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "pixels-above-lines-set"
                                               'gtk-text-tag) 't)
 "The @code{pixels-above-lines-set} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether this tag affects the number of pixels above lines. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-pixels-above-lines-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-pixels-above-lines-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{pixels-above-lines-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-pixels-below-lines ----------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "pixels-below-lines"
                                               'gtk-text-tag) 't)
 "The @code{pixels-below-lines} property of type @code{:int}
  (Read / Write) @br{}
  Pixels of blank space below paragraphs. @br{}
  Allowed values: >= 0 @br{}
  Default value: 0")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-pixels-below-lines atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-pixels-below-lines 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{pixels-below-lines} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-clas{gtk-text-tag}")

;;; --- gtk-text-tag-pixels-below-lines-set ------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "pixels-below-lines-set"
                                               'gtk-text-tag) 't)
 "The @code{pixels-below-lines-set} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether this tag affects the number of pixels above lines. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-pixels-below-lines-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-pixels-below-lines-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{pixels-below-lines-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-pixels-inside-wrap ----------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "pixels-inside-wrap"
                                               'gtk-text-tag) 't)
 "The @code{pixels-inside-wrap} property of type @code{:int}
  (Read / Write) @br{}
  Pixels of blank space between wrapped lines in a paragraph. @br{}
  Allowed values: >= 0 @br{}
  Default value: 0")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-pixels-inside-wrap atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-pixels-inside-wrap 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{pixels-inside-wrap} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-pixels-inside-wrap-set ------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "pixels-inside-wrap-set"
                                               'gtk-text-tag) 't)
 "The @code{pixels-inside-wrap-set} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether this tag affects the number of pixels between wrapped lines. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-pixels-inside-wrap-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-pixels-inside-wrap-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{pixels-inside-wrap-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-right-margin ----------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "right-margin" 'gtk-text-tag) 't)
 "The @code{right-margin} property of type @code{:int} (Read / Write) @br{}
  Width of the right margin in pixels. @br{}
  Allowed values: >= 0 @br{}
  Default value: 0")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-right-margin atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-right-margin 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{right-margin} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-right-margin-set ------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "right-margin-set"
                                               'gtk-text-tag) 't)
 "The @code{right-margin-set} property of type @code{:boolean}
  Read / Write) @br{}
  Whether this tag affects the right margin. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-right-margin-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-right-margin-set 'function)
 "@version{2029-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{right-margin-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-rise ------------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "rise" 'gtk-text-tag) 't)
 "The @code{rise} property of type @code{:int} (Read / Write) @br{}
  Offset of text above the baseline (below the baseline if rise is negative)
  in Pango units. @br{}
  Default value: 0")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-rise atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-rise 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{rise} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-rise-set --------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "rise-set" 'gtk-text-tag) 't)
 "The @code{rise-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects the rise. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-rise-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-rise-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{rise-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-scale -----------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "scale" 'gtk-text-tag) 't)
 "The @code{scale} property of type @code{:double} (Read / Write) @br{}
  Font size as a scale factor relative to the default font size. This properly
  adapts to theme changes etc. so is recommended. Pango predefines some scales
  such as @code{PANGO_SCALE_X_LARGE}. @br{}
  Allowed values: >= 0 @br{}
  Default value: 1")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-scale atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-scale 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{scale} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-scale-set -------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "scale-set" 'gtk-text-tag) 't)
 "The @code{scale-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag scales the font size by a factor. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-scale-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-scale-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-view]{scale-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-size ------------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "size" 'gtk-text-tag) 't)
 "The @code{size} property of type @code{:int} (Read / Write) @br{}
  Font size in Pango units. @br{}
  Allowed values: >= 0 @br{}
  Default value: 0")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-size atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-size 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{size} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-size-points -----------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "size-points" 'gtk-text-tag) 't)
 "The @code{size-points} property of type @code{:double} (Read / Write) @br{}
  Font size in points. @br{}
  Allowed values: >= 0 @br{}
  Default value: 0")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-size-points atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-size-points 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{size-points} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-size-set --------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "size-set" 'gtk-text-tag) 't)
 "The @code{size-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects the font size. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-size-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-size-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{size-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-stretch ---------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "stretch" 'gtk-text-tag) 't)
 "The @code{stretch} property of type @code{PangoStretch}
  (Read / Write) @br{}
  Font stretch as a @symbol{pango-stretch} enumeration, e. g. the value
  @code{:condensed}. @br{}
  Default value: @code{:normal}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-stretch atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-stretch 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{stretch} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-stretch-set -----------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "stretch-set" 'gtk-text-tag) 't)
 "The @code{stretch-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects the font stretch. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-stretch-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-stretch-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{stretch-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-strikethrough ---------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "strikethrough"
                                               'gtk-text-tag) 't)
 "The @code{strikethrough} property of type @code{:boolean} (Read / Write) @br{}
  Whether to strike through the text. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-strikethrough atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-strikethrough 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{strikethrough} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-strikethrough-rgba ----------------------------------------

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (documentation (atdoc:get-slot-from-name "strikethrough-rgba"
                                               'gtk-text-tag) 't)
 "The @code{strikethrough-rgba} property of type @class{gdk-rgba}
  (Read / Write) @br{}
  This property modifies the color of strikeouts. If not set, strikeouts will
  use the forground color. Since 3.16")

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (gethash 'gtk-text-tag-strikethrough-rgba atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-strikethrough-rgba 'function)
 "@version{2019-4-12}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{strikethrough-rgba} slot of the
    @class{gtk-text-tag} class.
  @end{short}

  Since 3.16
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-strikethrough-rgba-set ------------------------------------

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (documentation (atdoc:get-slot-from-name "strikethrough-rgba-set"
                                               'gtk-text-tag) 't)
 "The @code{strikethrough-rgba-set} property of type @code{:boolean}
  (Read / Write) @br{}
  If the @code{strikethrough-rgba} property has been set. Since 3.16 @br{}
  Default value: @em{false}")

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (gethash 'gtk-text-tag-strikethrough-rgba-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-strikethrough-rgba-set 'function)
 "@version{2019-4-12}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{strikethrough-rgba-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}

  Since 3.16
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-strikethrough-set -----------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "strikethrough-set"
                                       'gtk-text-tag) 't)
 "The @code{strikethrough-set} property of type @code{:boolean}
  (Read / Write) @br{}
  Whether this tag affects strikethrough. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-strikethrough-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-strikethrough-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{strikethrough-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-style -----------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "style" 'gtk-text-tag) 't)
 "The @code{style} property of type @symbol{pango-style} (Read / Write) @br{}
  Font style as a value of the @sym{pango-style} enumeration, e. g.
  @code{:italic}. @br{}
  Default value: @code{:normal}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-style atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-style 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{style} slot of the @class{gtk-text-tag}
    class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-style-set -------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "style-set" 'gtk-text-tag) 't)
 "The @code{style-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects the font style. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-style-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-style-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{style-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-tabs ------------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "tabs" 'gtk-text-tag) 't)
 "The @code{tabs} property of type @class{pango-tab-array} (Read / Write) @br{}
  Custom tabs for this text.")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-tabs atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-tabs 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{tabs} slot of the @class{gtk-text-tag}
    class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-tabs-set --------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "tabs-set" 'gtk-text-tag) 't)
 "The @code{tabs-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects tabs. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-tabs-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-tabs-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{tabs-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-underline -------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "underline" 'gtk-text-tag) 't)
 "The @code{underline} property of type @symbol{pango-underline}
  (Read / Write) @br{}
  Style of underline for this text. @br{}
  Default value: @code{:none}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-underline atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-underline 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{underline} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-underline-rgba --------------------------------------------

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (documentation (atdoc:get-slot-from-name "underline-rgba"
                                               'gtk-text-tag) 't)
 "The @code{underline-rgba} property of type @class{gdk-rgba}
  (Read / Write) @br{}
  This property modifies the color of underlines. If not set, underlines will
  use the forground color. If the @code{underline} property is set to the value
  @code{:error} of the @symbol{pango-underline} enumeration, an alternate color
  may be applied instead of the foreground. Setting this property will always
  override those defaults. Since 3.16")

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (gethash 'gtk-text-tag-underline-rgba atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-underline-rgba 'function)
 "@version{2019-4-12}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{underline-rgba} slot of the
    @class{gtk-text-tag} class.
  @end{short}

  Since 3.16
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-underline-rgba-set ----------------------------------------

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (documentation (atdoc:get-slot-from-name "underline-rgba-set"
                                               'gtk-text-tag) 't)
 "The @code{underline-rgba-set} property of type @code{:boolean}
  (Read / Write) @br{}
  If the @code{underline-rgba} property has been set. Since 3.16 @br{}
  Default value: @em{false}")

#+(and gtk-3-16 cl-cffi-gtk-documentation)
(setf (gethash 'gtk-text-tag-underline-rgba-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-underline-rgba-set 'function)
 "@version{2019-4-12}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{underline-rgba-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}

  Since 3.16
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-underline-set ---------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "underline-set"
                                               'gtk-text-tag) 't)
 "The @code{underline-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects underlining. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-underline-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-underline-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{underline-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-variant ---------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "variant" 'gtk-text-tag) 't)
 "The @code{variant} property of type @symbol{pango-variant}
  (Read / Write) @br{}
  Font variant as a value of the @sym{pango-variant} enumeration, e. g.
  @code{:small-caps}. @br{}
  Default value: @code{:normal}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-variant atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-variant 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-view]{variant} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-variant-set -----------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "variant-set" 'gtk-text-tag) 't)
 "The @code{variant-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects the font variant. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-variant-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-variant-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{variant-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-weight ----------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "weight" 'gtk-text-tag) 't)
 "The @code{weight} property of type @code{:int} (Read / Write) @br{}
  Font weight as an integer, see predefined values in the @symol{pango-weight}
  enumeration; for example, @code{:bold}. @br{}
  Allowed values: >= 0 @br{}
  Default value: 400")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-weight atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-weight 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{weight} slot of the @class{gtk-text-tag}
    class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-weight-set ------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "weight-set" 'gtk-text-tag) 't)
 "The @code{weight-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects the font weight. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-weight-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-weight-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{weight-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-wrap-mode -------------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "wrap-mode" 'gtk-text-tag) 't)
 "The @code{wrap-mode} property of type @symbol{gtk-wrap-mode}
  (Read / Write) @br{}
  Whether to wrap lines never, at word boundaries, or at character
  boundaries. @br{}
  Default value: @code{:none}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-wrap-mode atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-wrap-mode 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{wrap-mode} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; --- gtk-text-tag-wrap-mode-set ---------------------------------------------

#+cl-cffi-gtk-documentation
(setf (documentation (atdoc:get-slot-from-name "wrap-mode-set"
                                               'gtk-text-tag) 't)
 "The @code{wrap-mode-set} property of type @code{:boolean} (Read / Write) @br{}
  Whether this tag affects line wrap mode. @br{}
  Default value: @em{false}")

#+cl-cffi-gtk-documentation
(setf (gethash 'gtk-text-tag-wrap-mode-set atdoc:*function-name-alias*)
      "Accessor"
      (documentation 'gtk-text-tag-wrap-mode-set 'function)
 "@version{2020-3-21}
  @begin{short}
    Accessor of the @slot[gtk-text-tag]{wrap-mode-set} slot of the
    @class{gtk-text-tag} class.
  @end{short}
  @see-class{gtk-text-tag}")

;;; ----------------------------------------------------------------------------
;;; gtk_text_tag_new ()
;;; ----------------------------------------------------------------------------

(defun gtk-text-tag-new (name &rest args)
 #+cl-cffi-gtk-documentation
 "@version{2020-3-22}
  @argument[name]{a @code{:string} with the tag name, or @code{nil}}
  @argument[args]{list of property keywords and values}
  @return{A new @class{gtk-text-tag} object.}
  @begin{short}
    Creates a @class{gtk-text-tag} object.
  @end{short}
  @begin[Example]{dictionary}
 (gtk-text-tag-new \"font-italic\" :font \"fixed\" :style :italic)
=> #<GTK-TEXT-TAG {1006C86E63@}>
  @end{dictionary}
  @see-class{gtk-text-tag}"
  (apply #'make-instance (list* 'gtk-text-tag :name name args)))

(export 'gtk-text-tag-new)

;;; ----------------------------------------------------------------------------
;;; gtk_text_tag_get_priority ()
;;; gtk_text_tag_set_priority ()
;;; ----------------------------------------------------------------------------

(defun (setf gtk-text-tag-priority) (priority tag)
  (foreign-funcall "gtk_text_tag_set_priority"
                   (g-object gtk-text-tag) tag :int priority :void)
  priority)

(defcfun ("gtk_text_tag_get_priority" gtk-text-tag-priority) :int
 #+cl-cffi-gtk-documentation
 "@version{2020-3-21}
  @syntax[]{(gtk-text-tag-priority tag) => priority}
  @syntax[]{(setf (gtk-text-tag-priority tag) priority)}
  @argument[tag]{a @class{gtk-text-tag} object}
  @argument[priority]{a @code{:int} with the priority}
  @begin{short}
    Accessor for the priority of a @class{gtk-text-tag} object.
  @end{short}

  The function @sym{gtk-text-tag-priority} gets the tag priority. The function
  @sym{(setf gtk-text-tag-priority)} sets the priority of a
  @class{gtk-text-tag}.

  Valid priorities are start at 0 and go to one less than the value of
  @fun{gtk-text-tag-table-size}. Each tag in a table has a unique priority;
  setting the priority of one tag shifts the priorities of all the other tags
  in the table to maintain a unique priority for each tag. Higher priority tags
  \"win\" if two tags both set the same text attribute. When adding a tag to a
  tag table, it will be assigned the highest priority in the table by default;
  so normally the precedence of a set of tags is the order in which they were
  added to the table, or created with the function
  @fun{gtk-text-buffer-create-tag}, which adds the tag to the buffer's table
  automatically.
  @see-class{gtk-text-tag}
  @see-function{gtk-text-tag-table-size}
  @see-function{gtk-text-buffer-create-tag}"
  (tag (g-object gtk-text-tag)))

(export 'gtk-text-tag-priority)

;;; ----------------------------------------------------------------------------
;;; gtk_text_tag_event ()
;;; ----------------------------------------------------------------------------

(defcfun ("gtk_text_tag_event" gtk-text-tag-event) :boolean
 #+cl-cffi-gtk-documentation
 "@version{2020-3-22}
  @argument[tag]{a @class{gtk-text-tag} object}
  @argument[event-object]{the @class{g-object} that received the event}
  @argument[event]{the event of type @class{gdk-event}}
  @argument[iter]{a @class{gtk-text-iter} iterator with the location where the
    event was received}
  @return{A @code{:boolean} wether the event was handled.}
  @begin{short}
    Emits the \"event\" signal on the tag object.
  @end{short}
  @see-class{gtk-text-tag}
  @see-class{gtk-text-iter}
  @see-class{gdk-event}"
  (tag (g-object gtk-text-tag))
  (event-object g-object)
  (event (g-boxed-foreign gdk-event))
  (iter (g-boxed-foreign gtk-text-iter)))

(export 'gtk-text-tag-event)

;;; ----------------------------------------------------------------------------
;;; gtk_text_tag_changed ()
;;; ----------------------------------------------------------------------------

#+gtk-3-20
(defcfun ("gtk_text_tag_changed" gtk-text-tag-changed) :void
 #+cl-cffi-gtk-documentation
 "@version{2020-3-22}
  @argument[tag]{a @class{gtk-text-tag} object}
  @argument[size-changed]{a @code{:boolean} wether the change affects the
    @class{gtk-text-view} layout}
  @begin{short}
    Emits the \"tag-changed\" signal on the @class{gtk-text-tag-table} object
    where the tag is included.
  @end{short}

  The signal is already emitted when setting a @class{gtk-text-tag} property.
  This function is useful for a @class{gtk-text-tag} subclass.

  Since 3.20
  @see-class{gtk-text-tag}
  @see-class{gtk-text-iter}
  @see-class{gdk-event}"
  (tag (g-object gtk-text-tag))
  (size-changed :boolean))

#+gtk-3-20
(export 'gtk-text-tag-changed)

;;; --- End of file gtk.text-tag.lisp ------------------------------------------
