-module(st_common).
-include_lib("nitrogen_core/include/wf.hrl").
-export([favorites/0, menu/0]).

menu() ->
    Items = menu_items(),
    menu_bind(Items).

menu_bind(Items) ->
    Map = {menu_link@text, menu_link@url},
    #list{class='navbar-nav', body=[
        #bind{data=Items, map=Map, body=[
            #listitem{class='nav-item', body=[
                #link{class='nav-link', id=menu_link}
            ]}
        ]}
    ]}.

menu_items() ->
    [
        {"Home", "/"},
        {"Favorite Stocks", "/favorites"}
    ].

favorites() ->
    wf:session_default(favorites, []).
