# Meetup

Calculate the date of meetups.

Typically meetups happen on the same day of the week.  In this exercise, you will take
a description of a meetup date, and return the actual meetup date.

Examples of general descriptions are:

- the first Monday of January 2017
- the third Tuesday of January 2017
- the Wednesteenth of January 2017
- the last Thursday of January 2017

Note that "Monteenth", "Tuesteenth", etc are all made up words. There
was a meetup whose members realized that there are exactly 7 numbered days in a month that
end in '-teenth'. Therefore, one is guaranteed that each day of the week
(Monday, Tuesday, ...) will have exactly one date that is named with '-teenth'
in every month.

Given examples of a meetup dates, each containing a month, day, year, and descriptor 
(first, second, teenth, etc), calculate the date of the actual meetup.
For example, if given "First Monday of January 2017", the correct meetup date is 2017/1/2
 

* * * *

For installation and learning resources, refer to the
[exercism help page](http://exercism.io/languages/ruby).

For running the tests provided, you will need the Minitest gem. Open a
terminal window and run the following command to install minitest:

    gem install minitest

If you would like color output, you can `require 'minitest/pride'` in
the test file, or note the alternative instruction, below, for running
the test file.

In order to run the test, you can run the test file from the exercise
directory. For example, if the test suite is called
`hello_world_test.rb`, you can run the following command:

    ruby hello_world_test.rb

To include color from the command line:

    ruby -r minitest/pride hello_world_test.rb

The test files may have the execution bit set so you may also be able to
run it like this:

    ./hello_world_test.rb

## Source

Jeremy Hinegardner mentioned a Boulder meetup that happens on the Wednesteenth of every month [https://twitter.com/copiousfreetime](https://twitter.com/copiousfreetime)

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can see how others have completed the exercise.

