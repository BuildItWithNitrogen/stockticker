-module(st_common).
-include_lib("nitrogen_core/include/wf.hrl").
-export([favorites/0, menu/0]).

menu() -> [].

menu_items() ->
    [
        {"Home", "/"},
        {"Favorite Stocks", "/favorites"}
    ].

favorites() ->
    wf:session_default(favorites, []).
