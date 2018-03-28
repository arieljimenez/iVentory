module Main exposing (..)

import Behavior exposing (update)
import Html exposing (Html, text)
import Model exposing (Model, Msg, defaultModel)
import Views exposing (view)


init : ( Model, Cmd Msg )
init =
    ( defaultModel, Cmd.none )


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        }
