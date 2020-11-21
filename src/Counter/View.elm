module Counter.View exposing (view)

-- IMPORTS

import Counter.Types exposing (Model, Msg(..))
import Css exposing (auto, hex, pct, pt, px, rgba)
import Html
import Html.Styled exposing (Attribute, Html, styled, text, toUnstyled)
import Html.Styled.Events exposing (onClick)
import Page exposing (page)


styledDiv : List (Attribute msg) -> List (Html msg) -> Html msg
styledDiv =
    styled Html.Styled.div
        [ Css.borderRadius (px 5)
        , Css.backgroundColor (hex "#f2f2f2")
        , Css.padding (px 20)
        , Css.width (px 300)
        , Css.boxShadow5 (px 0) (px 4) (px 9) (px -4) (rgba 0 0 0 0.75)
        , Css.margin2 (px 20) auto
        ]


styledText : List (Attribute msg) -> List (Html msg) -> Html msg
styledText =
    styled Html.Styled.div
        [ Css.padding (px 20)
        , Css.width (pct 100)
        , Css.boxSizing Css.borderBox
        , Css.textAlign Css.center
        , Css.fontSize (pt 20)
        , Css.margin2 (px 20) auto
        ]


styledButton : List (Attribute msg) -> List (Html msg) -> Html msg
styledButton =
    styled Html.Styled.button
        [ Css.width (px 300)
        , Css.backgroundColor (hex "#397cd5")
        , Css.color (hex "#fff")
        , Css.padding2 (px 14) (px 20)
        , Css.marginTop (px 10)
        , Css.border (px 0)
        , Css.borderRadius (px 4)
        , Css.fontSize (px 16)
        ]


view : Model -> Html.Html Msg
view model =
    toUnstyled <|
        page []
            [ styledDiv []
                [ styledButton [ onClick Decrement ] [ text "-" ]
                , styledText [] [ text (String.fromInt model) ]
                , styledButton [ onClick Increment ] [ text "+" ]
                ]
            ]
