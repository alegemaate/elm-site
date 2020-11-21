module Counter.Counter exposing (Model, Msg, init, update, view)

-- IMPORTS

import Counter.Model as Model
import Counter.Types as Types
import Counter.Update as Update
import Counter.View as View
import Html



-- MODEL


type alias Model =
    Types.Model


init : Int -> Model
init =
    Model.init



-- UPDATE


type alias Msg =
    Types.Msg


update : Msg -> Model -> Model
update =
    Update.update



-- VIEW


view : Model -> Html.Html Msg
view =
    View.view
