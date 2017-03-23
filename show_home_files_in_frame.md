Show $HOME Files in Frame
-------------------------

List files in the users home directory.

The users home directory is defined by the environment variable "HOME"
or (on Windows) the environment variable "USERPROFILE".

Hidden files, i.e. files with names starting with a dot (".") should
*not* be listed.

The list should be sorted alphabetically and enclosed in an ASCII frame, e.g.:

    +---------+
    |bar.txt  |
    |fobbar.p6|
    |File1.txt|
    |File2.txt|
    |Foo.bar  |
    +---------+

The frame should automatically fit the list.

This could be solved with the following Unix pipeline (that uses the [boxes](http://boxes.thomasjensen.com/) command):

    find $HOME -maxdepth 1 -type f -not -name '.*' -exec basename {} \; | sort | boxes -d stone -p a0


