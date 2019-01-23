# leave these lines alone
.SUFFIXES: .erl .beam

.erl .beam:
    erlc -W $<

ERL = erl -boot start_clean

MODS = module1 module2 module3

all: compile

${ERL} -pa '/Users/tongzhou/Downloads/mygit/erlang-demo/src/t4' -s module1 start

compile: ${MODS:%=%.beam}

clean:
    rm -rf *.beam erl_crash.dump
