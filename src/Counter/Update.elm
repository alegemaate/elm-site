module Counter.Update exposing (update)

import Counter.Types exposing (Model, Msg(..))


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1
