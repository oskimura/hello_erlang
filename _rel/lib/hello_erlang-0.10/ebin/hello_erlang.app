{application, hello_erlang,
 [
  {description, "Hello world with Cowboy"},
  {vsn, "0.10"},
  {modules, [hello_erlang_app, hello_erlang_sup, hello_handler]},
  {registered, [hello_erlang_sup]},
  {applications, [
		  kernel,
		  stdlib,
		  cowboy
		  ]},
  {mod,{hello_erlang_app,[]}},
  {env,[]}
 ]
}.
