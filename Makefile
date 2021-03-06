REBAR = $(shell pwd)/rebar3
APP=oidcc

.PHONY: all ct test clean elvis compile

all: compile

clean:
	$(REBAR) clean

eunit:
	$(REBAR) cover -r
	$(REBAR) do eunit, cover -v

ct:
	$(REBAR) ct

elvis:
	$(REBAR) lint

compile:
	$(REBAR) compile

dialyzer:
	$(REABAR) dialyzer
