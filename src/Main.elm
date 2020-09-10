module Main exposing (main)

import Playground exposing (..)


main =
    game view update initialModel


type alias Model =
    { clock : Float
    , x : Float
    }


initialModel =
    { clock = 0
    , x = 0
    }


update computer model =
    let
        dt =
            0.016
    in
    { clock = model.clock + dt
    , x = model.clock * 80
    }


view : Computer -> Model -> List Shape
view computer model =
    [ circle blue 20
        |> moveX model.x
    , words black (model.clock |> String.fromFloat |> String.left 4)
        |> moveY 200
        |> scale 3
    ]
