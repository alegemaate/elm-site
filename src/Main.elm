module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Css exposing (..)
import Html
import Html.Styled exposing (..)
import Html.Styled.Events exposing (onClick)
import VirtualDom



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1



-- VIEW


styledDiv : List (Attribute msg) -> List (Html msg) -> Html msg
styledDiv =
    styled Html.Styled.div
        [ borderRadius (px 5)
        , backgroundColor (hex "#f2f2f2")
        , padding (px 20)
        , Css.width (px 300)
        , boxShadow5 (px 0) (px 4) (px 9) (px -4) (rgba 0 0 0 0.75)
        , margin2 (px 20) auto
        ]


styledButton : List (Attribute msg) -> List (Html msg) -> Html msg
styledButton =
    styled Html.Styled.button
        [ Css.width (px 300)
        , backgroundColor (hex "#397cd5")
        , color (hex "#fff")
        , padding2 (px 14) (px 20)
        , marginTop (px 10)
        , border (px 0)
        , borderRadius (px 4)
        , fontSize (px 16)
        ]


view : Model -> Html.Html Msg
view model =
    toUnstyled <|
        styledDiv []
            [ styledButton [ onClick Decrement ] [ text "-" ]
            , div [] [ text (String.fromInt model) ]
            , styledButton [ onClick Increment ] [ text "+" ]
            ]
