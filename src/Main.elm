module Main exposing (main)

import Playground exposing (..)


main =
    game view update initialModel



-- MODEL


type alias Model =
    { clock : Float
    , x : Float
    }


initialModel =
    { clock = 0
    , x = 0
    }



--  UPDATE


dt =
    0.016


update computer model =
    { clock = model.clock + dt
    , x = model.clock * 80
    }



--  VIEW


view : Computer -> Model -> List Shape
view computer model =
    [ circle blue 20
        |> moveX model.x
    , words black (model.clock |> String.fromFloat |> String.left 4)
        |> moveY 200
        |> scale 3
    ]
