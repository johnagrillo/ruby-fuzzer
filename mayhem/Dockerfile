FROM johnagrillo/ruby3


ADD /afl-ruby /afl-ruby
RUN ls && \
    mkdir -p /afl-ruby/output && \
    cd afl-ruby/lib/afl && \
    /root/.rbenv/versions/3.2.2/bin/ruby ../../ext/afl_ext/extconf.rb && \
    make && \
    make install && \
    cd

## Add source code to the build stage.
ADD /AFL /AFL
RUN cd AFL && make

#ENTRYPOINT ["afl-fuzz", "-i", "/testsuite", "-o", "/out"]

#ENTRYPOINT ["/AFL/afl-fuzz", "-m", "1000",  "-i", "/afl-ruby/example/work/input", "-o" ,"/afl-ruby/test/output"]
#CMD ["ruby", "/afl-ruby/test/lib/crashing_test_harness.rb", "@@"]

ENTRYPOINT []
CMD ["/AFL/afl-fuzz", "-m", "1000",  "-i", "afl-ruby/input", "-o" ,"afl-ruby/output", "--","/root/.rbenv/versions/3.2.2/bin/ruby","afl-ruby/test/lib/crashing_test_harness.rb"]
#CMD ["/root/.rbenv/versions/3.2.2/bin/ruby","afl-ruby/test/lib/crashing_test_harness.rb"]
