module Counter.Types exposing (Model, Msg(..))


type alias Model =
    Int


type Msg
    = Increment
    | Decrement
