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

