-module(index).
-include_lib("nitrogen_core/include/wf.hrl").
-compile(export_all).

main() ->
    #template{file="site/templates/bare.html"}.

title() ->
    "Home".

body_left() ->
    [
     #label{text="Stock Symbol"},
     #textbox{id=symbol},
     #br{},
     #button{
        text="Show Quotes",
        postback=get_quotes
       }
    ].


