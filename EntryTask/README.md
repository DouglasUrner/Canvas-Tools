CanvasTools::EntryTask - create a timebounded quiz or survey for each section of a course
=========================================================================================

```sh
EntryTask --course US [--sections ALL|US --schedule US --time-limit MM]
```

Where:

* **US** is a unique string that uniquely identifies the object referred to.
* **ALL** is a pseudo-section that maps to all of the sections in the class
* **MM** is the time allowed for the entry task in minutes

Defaults:

* **Sections:** ALL
* **Schedule:** the bell schedule marked **default**
* **Time Limit:** the default value in the configuration file
(if there is one) or an error if if --time-limit is not specified on
the command line

Configuration:

From Canvas:

* Courses
* Sections

Outside of Canvas:

* Bell schedule
* Section start times
* Default time limit
