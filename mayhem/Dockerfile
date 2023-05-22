FROM johnagrillo/rubyinstall

ADD /afl-ruby /afl-ruby
RUN ls && \
   cd /src && \
   make install && \
   mkdir -p /afl-ruby/output && \
   cd /afl-ruby/lib/afl && \
   #/root/.rbenv/versions/3.2.2/bin/ruby ../../ext/afl_ext/extconf.rb && \
   /usr/local/bin/ruby ../../ext/afl_ext/extconf.rb && \
   make clean && \
   make && \
   make install && \
   cd
ADD test.rb .

# Add source code to the build stage.
ADD /AFL /AFL
RUN cd AFL && make clean && make

ENTRYPOINT [
cmd ["/AFL/afl-fuzz", "-t","100",  "-m", "none", "-i", "/afl-ruby/input", "-o" ,"/afl-ruby/output", "--"]"/usr/local/bin/ruby", "/afl-ruby/test/lib/crashing_test_harness.rb"]


