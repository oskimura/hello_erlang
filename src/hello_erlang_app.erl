-module(hello_erlang_app).
-behavior(application).

-export([start/2,
	stop/1]).

start(_Type,_Args) ->
    Dispatch = cowboy_router:compile([
				     {'_',[{'_', hello_handler, []}]}
				     ]),
    cowboy:start_http(my_http_listener, 100,
		      [{port,8081}],
		      [{env, [{dispatch,Dispatch}]}]
		     ),
    hello_erlang_sup:start_link().

stop(_State) ->
    ok.
