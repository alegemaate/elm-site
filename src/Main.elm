module Main exposing (main)

import Browser
import Counter.Counter exposing (Msg, update, view)


main : Program () Counter.Counter.Model Msg
main =
    Browser.sandbox { init = 0, view = view, update = update }
