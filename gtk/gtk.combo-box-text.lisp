;;; ----------------------------------------------------------------------------
;;; gtk.combo-box-text.lisp
;;;
;;; The documentation of this file is taken from the GTK+ 3 Reference Manual
;;; Version 3.24 and modified to document the Lisp binding to the GTK library.
;;; See <http://www.gtk.org>. The API documentation of the Lisp binding is
;;; available from <http://www.crategus.com/books/cl-cffi-gtk/>.
;;;
;;; Copyright (C) 2009 - 2011 Kalyanov Dmitry
;;; Copyright (C) 2011 - 2019 Dieter Kaiser
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
;;; GtkComboBoxText
;;;
;;;     A simple, text-only combo box
;;;
;;; Synopsis
;;;
;;;     GtkComboBoxText
;;;
;;; Functions
;;;
;;;     gtk_combo_box_text_new
;;;     gtk_combo_box_text_new_with_entry
;;;     gtk_combo_box_text_append
;;;     gtk_combo_box_text_prepend
;;;     gtk_combo_box_text_insert
;;;     gtk_combo_box_text_append_text
;;;     gtk_combo_box_text_prepend_text
;;;     gtk_combo_box_text_insert_text
;;;     gtk_combo_box_text_remove
;;;     gtk_combo_box_text_remove_all
;;;     gtk_combo_box_text_get_active_text
;;;
;;; Object Hierarchy
;;;
;;;     GObject
;;;     ╰── GInitiallyUnowned
;;;         ╰── GtkWidget
;;;             ╰── GtkContainer
;;;                 ╰── GtkBin
;;;                     ╰── GtkComboBox
;;;                         ╰── GtkComboBoxText
;;;
;;; Implemented Interfaces
;;;
;;;     GtkComboBoxText implements AtkImplementorIface, GtkBuildable,
;;;      GtkCellLayout and GtkCellEditable.
;;; ----------------------------------------------------------------------------

(in-package :gtk)

;;; ----------------------------------------------------------------------------
;;; struct GtkComboBoxText
;;; ----------------------------------------------------------------------------

(define-g-object-class "GtkComboBoxText" gtk-combo-box-text
  (:superclass gtk-combo-box
   :export t
   :interfaces ("AtkImplementorIface"
                "GtkBuildable"
                "GtkCellEditable"
                "GtkCellLayout")
   :type-initializer "gtk_combo_box_text_get_type")
  nil)

#+cl-cffi-gtk-documentation
(setf (documentation 'gtk-combo-box-text 'type)
 "@version{2013-8-15}
  @begin{short}
    A @sym{gtk-combo-box-text} is a simple variant of @class{gtk-combo-box} that
    hides the model-view complexity for simple text-only use cases.
  @end{short}

  To create a @sym{gtk-combo-box-text}, use the @fun{gtk-combo-box-text-new} or
  @fun{gtk-combo-box-text-new-with-entry} functions.

  You can add items to a @sym{gtk-combo-box-text} with the
  @fun{gtk-combo-box-text-append-text}, @fun{gtk-combo-box-text-insert-text} or
  @fun{gtk-combo-box-text-prepend-text} functions and remove options with the
  @fun{gtk-combo-box-text-remove} function.

  If the @sym{gtk-combo-box-text} contains an entry via the
  @code{has-entry} property, its contents can be retrieved using the
  @fun{gtk-combo-box-text-get-active-text} function. The entry itself can be
  accessed by calling the @fun{gtk-bin-get-child} function on the combo box.

  You should not call the @fun{gtk-combo-box-model} slot access function or
  attempt to pack more cells into this combo box via its @class{gtk-cell-layout}
  interface.

  @begin[GtkComboBoxText as GtkBuildable]{dictionary}
    The @sym{gtk-combo-box-text} implementation of the @class{gtk-buildable}
    interface supports adding items directly using the @code{<items>} element
    and specifying @code{<item>} elements for each item. Each @code{<item>}
    element supports the regular translation attributes \"translatable\",
    \"context\" and \"comments\".

    @b{Example:} A UI definition fragment specifying @sym{gtk-combo-box-text}
    items
    @begin{pre}
 <object class=\"GtkComboBoxText\">
   <items>
     <item translatable=\"yes\">Factory</item>
     <item translatable=\"yes\">Home</item>
     <item translatable=\"yes\">Subway</item>
   </items>
 </object>
    @end{pre}
  @end{dictionary}
  @begin[CSS nodes]{dictionary}
    @begin{pre}
 combobox
 ╰── box.linked
     ├── entry.combo
     ├── button.combo
     ╰── window.popup
    @end{pre}
    @sym{gtk-combo-box-text} has a single CSS node with name @code{combobox}. It
    adds the style class @code{.combo} to the main CSS nodes of its entry and
    button children, and the @code{.linked} class to the node of its internal
    box.
  @end{dictionary}
  @see-function{gtk-combo-box-text-new}
  @see-function{gtk-combo-box-text-new-with-entry}
  @see-function{gtk-combo-box-text-append-text}
  @see-function{gtk-combo-box-text-insert-text}
  @see-function{gtk-combo-box-text-prepend-text}
  @see-function{gtk-combo-box-text-remove}
  @see-function{gtk-combo-box-text-get-active-text}
  @see-function{gtk-combo-box-model}
  @see-function{gtk-bin-get-child}")

;;; ----------------------------------------------------------------------------
;;; gtk_combo_box_text_new ()
;;; ----------------------------------------------------------------------------

(declaim (inline gtk-combo-box-text-new))

(defun gtk-combo-box-text-new ()
 #+cl-cffi-gtk-documentation
 "@version{2013-8-15}
  @return{A new @class{gtk-combo-box-text} widget.}
  @begin{short}
    Creates a new @class{gtk-combo-box-text} widget, which is a
    @class{gtk-combo-box} just displaying strings.
  @end{short}
  @see-class{gtk-combo-box-text}
  @see-function{gtk-combo-box-text-new-with-entry}"
  (make-instance 'gtk-combo-box-text))

(export 'gtk-combo-box-text-new)

;;; ----------------------------------------------------------------------------
;;; gtk_combo_box_text_new_with_entry ()
;;; ----------------------------------------------------------------------------

;; TODO: A ComboBoxText with an entry seems not to work as expected.

(defun gtk-combo-box-text-new-with-entry ()
 #+cl-cffi-gtk-documentation
 "@version{2013-8-15}
  @return{A new @class{gtk-combo-box-text} widget.}
  @begin{short}
    Creates a new @class{gtk-combo-box-text} widget, which is a
    @class{gtk-combo-box} just displaying strings. The combo box created by
    this function has an entry.
  @end{short}
  @see-class{gtk-combo-box-text}
  @see-function{gtk-combo-box-text-new}"
  (make-instance 'gtk-combo-box-text
                 :has-entry t))

(export 'gtk-combo-box-text-new-with-entry)

;;; ----------------------------------------------------------------------------
;;; gtk_combo_box_text_append ()
;;; ----------------------------------------------------------------------------

(defcfun ("gtk_combo_box_text_append" %gtk-combo-box-text-append) :void
  (combo-box (g-object gtk-combo-box-text))
  (id :string)
  (text :string))

(defun gtk-combo-box-text-append (combo-box id text)
 #+cl-cffi-gtk-documentation
 "@version{2013-8-15}
  @argument[combo-box]{a @class{gtk-combo-box-text} widget}
  @argument[id]{a string ID for this value, or @code{nil}}
  @argument[text]{a string}
  @begin{short}
    Appends @arg{text} to the list of strings stored in @arg{combo-box}. If ID
    is non-@code{nil} then it is used as the ID of the row.
  @end{short}

  This is the same as calling the function @fun{gtk-combo-box-text-insert} with
  a position of -1.
  @see-class{gtk-combo-box-text}
  @see-function{gtk-combo-box-text-insert}
  @see-function{gtk-combo-box-text-prepend}"
  (%gtk-combo-box-text-append combo-box
                              (if id id (null-pointer))
                              text))

(export 'gtk-combo-box-text-append)

;;; ----------------------------------------------------------------------------
;;; gtk_combo_box_text_prepend ()
;;; ----------------------------------------------------------------------------

(defcfun ("gtk_combo_box_text_prepend" %gtk-combo-box-text-prepend) :void
  (combo-box (g-object gtk-combo-box-text))
  (id :string)
  (text :string))

(defun gtk-combo-box-text-prepend (combo-box id text)
 #+cl-cffi-gtk-documentation
 "@version{2013-8-15}
  @argument[combo-box]{a @class{gtk-combo-box} widget}
  @argument[id]{a string ID for this value, or @code{nil}}
  @argument[text]{a string}
  @begin{short}
    Prepends text to the list of strings stored in @arg{combo-box}. If ID is
    non-@code{nil} then it is used as the ID of the row.
  @end{short}

  This is the same as calling the function @fun{gtk-combo-box-text-insert} with
  a position of 0.
  @see-class{gtk-combo-box-text}
  @see-function{gtk-combo-box-text-insert}"
  (%gtk-combo-box-text-prepend combo-box
                               (if id id (null-pointer))
                               text))

(export 'gtk-combo-box-text-prepend)

;;; ----------------------------------------------------------------------------
;;; gtk_combo_box_text_insert ()
;;; ----------------------------------------------------------------------------

(defcfun ("gtk_combo_box_text_insert" %gtk-combo-box-text-insert) :void
  (combo-box (g-object gtk-combo-box-text))
  (position :int)
  (id :string)
  (text :string))

(defun gtk-combo-box-text-insert (combo-box position id text)
 #+cl-cffi-gtk-documentation
 "@version{2013-8-15}
  @argument[combo-box]{a @class{gtk-combo-box-text} widget}
  @argument[position]{an index to insert text}
  @argument[id]{a string ID for this value, or @code{nil}}
  @argument[text]{a string to display}
  @begin{short}
    Inserts @arg{text} at @arg{position} in the list of strings stored in
    @arg{combo-box}. If @arg{id} is non-@code{nil} then it is used as the ID of
    the row.
  @end{short}
  See the @slot[gtk-combo-box]{id-column} property of the @class{gtk-combo-box}.

  If @arg{position} is negative then @arg{text} is appended.
  @see-class{gtk-combo-box-text}"
  (%gtk-combo-box-text-insert combo-box
                              position
                              (if id id (null-pointer))
                              text))

(export 'gtk-combo-box-text-insert)

;;; ----------------------------------------------------------------------------
;;; gtk_combo_box_text_append_text ()
;;; ----------------------------------------------------------------------------

(defcfun ("gtk_combo_box_text_append_text" gtk-combo-box-text-append-text) :void
 #+cl-cffi-gtk-documentation
 "@version{2013-8-15}
  @argument[combo-box]{a @class{gtk-combo-box-text} widget}
  @argument[text]{a string}
  @begin{short}
    Appends @arg{text} to the list of strings stored in @arg{combo-box}.
  @end{short}

  This is the same as calling the function @fun{gtk-combo-box-text-insert-text}
  with a position of -1.
  @see-class{gtk-combo-box-text}
  @see-function{gtk-combo-box-text-insert-text}
  @see-function{gtk-combo-box-text-prepend}"
  (combo-box (g-object gtk-combo-box-text))
  (text :string))

(export 'gtk-combo-box-text-append-text)

;;; ----------------------------------------------------------------------------
;;; gtk_combo_box_text_prepend_text ()
;;; ----------------------------------------------------------------------------

(defcfun ("gtk_combo_box_text_prepend_text" gtk-combo-box-text-prepend-text)
    :void
 #+cl-cffi-gtk-documentation
 "@version{2013-8-15}
  @argument[combo-box]{a @class{gtk-combo-box} widget}
  @argument[text]{a string}
  @begin{short}
    Prepends @arg{text} to the list of strings stored in @arg{combo-box}.
  @end{short}

  This is the same as calling the function @fun{gtk-combo-box-text-insert-text}
  with a position of 0.
  @see-class{gtk-combo-box-text}
  @see-function{gtk-combo-box-text-insert-text}
  @see-function{gtk-combo-box-text-append-text}"
  (combo-box (g-object gtk-combo-box-text))
  (text :string))

(export 'gtk-combo-box-text-prepend-text)

;;; ----------------------------------------------------------------------------
;;; gtk_combo_box_text_insert_text ()
;;; ----------------------------------------------------------------------------

(defcfun ("gtk_combo_box_text_insert_text" gtk-combo-box-text-insert-text) :void
 #+cl-cffi-gtk-documentation
 "@version{2013-8-15}
  @argument[combo-box]{a @class{gtk-combo-box-text} widget}
  @argument[position]{an index to insert text}
  @argument[text]{a string}
  @begin{short}
    Inserts @arg{text} at @arg{position} in the list of strings stored in
    @arg{combo-box}.
  @end{short}

  If @arg{position} is negative then @arg{text} is appended.

  This is the same as calling the function @fun{gtk-combo-box-text-insert} with
  a @code{nil} ID string.
  @see-class{gtk-combo-box-text}
  @see-function{gtk-combo-box-text-insert}"
  (combo-box (g-object gtk-combo-box-text))
  (position :int)
  (text :string))

(export 'gtk-combo-box-text-insert-text)

;;; ----------------------------------------------------------------------------
;;; gtk_combo_box_text_remove ()
;;; ----------------------------------------------------------------------------

(defcfun ("gtk_combo_box_text_remove" gtk-combo-box-text-remove) :void
 #+cl-cffi-gtk-documentation
 "@version{2013-8-15}
  @argument[combo-box]{a @class{gtk-combo-box} widget}
  @argument[position]{index of the item to remove}
  @begin{short}
    Removes the string at position from @arg{combo-box}.
  @end{short}
  @see-class{gtk-combo-box-text}
  @see-function{gtk-combo-box-text-remove-all}"
  (combo-box (g-object gtk-combo-box-text))
  (position :int))

(export 'gtk-combo-box-text-remove)

;;; ----------------------------------------------------------------------------
;;; gtk_combo_box_text_remove_all ()
;;; ----------------------------------------------------------------------------

(defcfun ("gtk_combo_box_text_remove_all" gtk-combo-box-text-remove-all) :void
 #+cl-cffi-gtk-documentation
 "@version{2013-8-15}
  @argument[combo-box]{a @class{gtk-combo-box-text} widget}
  @begin{short}
    Removes all the text entries from the combo box.
  @end{short}
  @see-class{gtk-combo-box-text}
  @see-function{gtk-combo-box-text-remove}"
  (combo-box (g-object gtk-combo-box-text)))

(export 'gtk-combo-box-text-remove-all)

;;; ----------------------------------------------------------------------------
;;; gtk_combo_box_text_get_active_text ()
;;; ----------------------------------------------------------------------------

(defcfun ("gtk_combo_box_text_get_active_text"
           gtk-combo-box-text-get-active-text) :string
 #+cl-cffi-gtk-documentation
 "@version{2013-7-15}
  @argument[combo-box]{a @class{gtk-combo-box-text} widget}
  @begin{return}
    A string containing the currently active text.
  @end{return}
  @begin{short}
    Returns the currently active string in @arg{combo-box}, or @code{nil} if
    none is selected.
  @end{short}
  If @arg{combo-box} contains an entry, this function will return its
  contents which will not necessarily be an item from the list.
  @see-class{gtk-combo-box-text}"
  (combo-box (g-object gtk-combo-box-text)))

(export 'gtk-combo-box-text-get-active-text)

;;; --- End of file gtk.combo-box-text.lisp ------------------------------------
