module Page exposing (page)

import Css exposing (auto, backgroundColor, borderRadius, boxShadow5, hex, margin2, maxWidth, padding, pct, px, rgba, width)
import Html.Styled exposing (Attribute, Html, styled, toUnstyled)



-- VIEW


page : List (Attribute msg) -> List (Html msg) -> Html msg
page =
    styled Html.Styled.div
        [ borderRadius (px 5)
        , backgroundColor (hex "#f2f2f2")
        , padding (px 20)
        , maxWidth (px 400)
        , width (pct 100)
        , boxShadow5 (px 0) (px 4) (px 9) (px -4) (rgba 0 0 0 0.75)
        , margin2 (px 20) auto
        ]
