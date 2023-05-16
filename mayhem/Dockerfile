FROM johnagrillo/ruby3

#ADD /afl-ruby /afl-ruby
#RUN ls && \
##    mkdir -p /afl-ruby/output && \
#    cd afl-ruby/lib/afl && \
#    /root/.rbenv/versions/3.2.2/bin/ruby ../../ext/afl_ext/extconf.rb && \
#    make && \
#    make install && \
#    cd

ADD test.rb .

# Add source code to the build stage.
#ADD /AFL /AFL
#RUN cd AFL && make clean && make

#ENTRYPOINT ["/AFL/afl-fuzz","-d",  "-m", "none",  "-i", "/afl-ruby/input", "-o" ,"/afl-ruby/output", "--"]
cmd ["/root/.rbenv/versions/3.2.2/bin/ruby", "test.rb"]


