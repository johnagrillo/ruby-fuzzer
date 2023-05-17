FROM johnagrillo/ruby3

ADD /afl-ruby /afl-ruby
RUN ls && \
    mkdir -p /afl-ruby/output && \
   cd afl-ruby/lib/afl && \
   /root/.rbenv/versions/3.2.2/bin/ruby ../../ext/afl_ext/extconf.rb && \
   make clean && \
   make && \
   make install && \
   cd

ADD test.rb .

# Add source code to the build stage.
ADD /AFL /AFL
RUN cd AFL && make clean && make

ENTRYPOINT ["/AFL/afl-fuzz", "-t","5000",  "-m", "none", "-i", "/afl-ruby/input", "-o" ,"/afl-ruby/output", "--"]
cmd ["/root/.rbenv/versions/3.2.2/bin/ruby", "/afl-ruby/test/lib/crashing_test_harness.rb"]


