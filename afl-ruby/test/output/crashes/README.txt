Command line used to find this crash:

../AFL/afl-fuzz -m1000 -i /mnt/c/Users/john/sandbox/mayhem/afl-ruby/test/input -o /mnt/c/Users/john/sandbox/mayhem/afl-ruby/test/output -- /home/john/.rbenv/versions/3.0.3/bin/ruby /mnt/c/Users/john/sandbox/mayhem/afl-ruby/test/lib/crashing_test_harness.rb

If you can't reproduce a bug outside of afl-fuzz, be sure to set the same
memory limit. The limit used for this fuzzing session was 0.98 GB.

Need a tool to minimize test cases before investigating the crashes or sending
them to a vendor? Check out the afl-tmin that comes with the fuzzer!

Found any cool bugs in open-source tools using afl-fuzz? If yes, please drop
me a mail at <lcamtuf@coredump.cx> once the issues are fixed - I'd love to
add your finds to the gallery at:

  http://lcamtuf.coredump.cx/afl/

Thanks :-)
