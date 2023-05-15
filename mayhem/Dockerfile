# Build Stage

FROM --platform=linux/amd64 ubuntu:20.04 as builder

#DEBIAN_FRONTEND=noninteractive apt-get install -y cmake clang && \
## Install build dependencies.
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y git ruby ruby-dev gcc make git

#COPY mayhemit.c .
#RUN afl-gcc mayhemit.c -o /mayhemit
#RUN mkdir /testsuite && echo seed > /testsuite/seed

ADD /afl-ruby /afl-ruby
RUN mkdir -p /afl-ruby/output && \
    cd afl-ruby/lib/afl && \
    ruby ../../ext/afl_ext/extconf.rb && \
    make && \
    cd

## Add source code to the build stage.
ADD /AFL /AFL
RUN cd AFL && make

#ENTRYPOINT ["afl-fuzz", "-i", "/testsuite", "-o", "/out"]

#ENTRYPOINT ["/AFL/afl-fuzz", "-m", "1000",  "-i", "/afl-ruby/example/work/input", "-o" ,"/afl-ruby/test/output"]
#CMD ["ruby", "/afl-ruby/test/lib/crashing_test_harness.rb", "@@"]

CMD ["/AFL/afl-fuzz", "-m", "1000",  "-i", "/afl-ruby/input", "-o" ,"/afl-ruby/output"], "--", "ruby", "/afl-ruby/test.rb", "@@"]
	
    

    

