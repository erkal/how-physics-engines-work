module Main exposing (main)

import Playground exposing (..)


main =
    game view update initialModel



-- MODEL


type alias Model =
    { x : Float
    , y : Float
    , vx : Float
    , vy : Float
    }


initialModel =
    { x = 0
    , y = 0
    , vx = 0
    , vy = 0
    }



--  UPDATE


deltaTime =
    0.016


update computer model =
    { x = model.x + deltaTime * model.vx
    , y = model.y + deltaTime * model.vy
    , vx = model.vx + deltaTime * (toX computer.keyboard * 1000)
    , vy = model.vy + deltaTime * (toY computer.keyboard * 1000)
    }



--  VIEW


view : Computer -> Model -> List Shape
view computer model =
    [ words black "press arrow keys to move the ball"
        |> moveY 100
    , circle blue 20
        |> moveX model.x
        |> moveY model.y
    ]
