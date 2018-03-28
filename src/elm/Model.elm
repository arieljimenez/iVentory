module Model exposing (..)


type PageType
    = Dashboard


type alias Model =
    { user : String
    , currentPage : PageType
    }


defaultModel : Model
defaultModel =
    { user = "Who"
    , currentPage = Dashboard
    }


type Msg
    = NoOp
