deps:
	rebar get-deps
compile:
	rebar compile
run:
	erl -smp -pa ebin/ -pa deps/*/ebin/ -s test run
