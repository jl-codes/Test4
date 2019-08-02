Solution to the Data Binding Problem

Constructing the view in such a manner that it displays the current data
requires the implementation of a method to bind the data to the view. This
may be accomplished by creating a dynamic variable, setting this variable
through the properties of this value, creating a closure to update the view
with this new value, and creating a bond to connect this all together.

When modifying most variables, this is a straightforward process. However,
arrays provide an additional challenge in that elements within the array
may be added, removed, or modified. The solution must be able to handle
any type safely, and have no memory issues such as memory leaks.

The best solution to this problem is to create a generic variable T, which
holds a value, and convert this variable to a generic variable U, which is
where the output label directly pulls from. We must also consider how to
bind T to U in such a way that updates are reflected. A map is a potential
method of linking these two generics together; maps are type-safe, meaning
they can handle variables of different types.

This project will demonstrate the changing of values within a table. The
cells will hold labels reflecting the value of the data. In the case of a
string, this would mean that the cell label is bound to the string's value
and will accurately reflect the new value, or newValue, of this string; in
the case of an array, this would manifest as a string listing comma
delineated values of the array's elements. Each cell is prepopulated with
the index of its respective row.

The GenericData.swift file contains several classes, including a class to
store the value of a generic type T, a helper class to store these values
without referencing their life cycles, and class to connect the value of
generic data to a label in the view so that new values are accurately
represented. The connection is retained by self and contains a strong
reference to the name of the dynamic variable. When the name is changed,
the closure to update the name label in the cell is executed. The connection
links the name to the closure.
