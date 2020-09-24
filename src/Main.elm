module Main exposing (main)

import Playground exposing (..)


main =
    game view update initialModel


floorY =
    -300


radius =
    20



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
    model
        |> applyKeyboard computer
        |> gravity
        |> bounce
        |> physics


applyKeyboard : Computer -> Model -> Model
applyKeyboard computer model =
    { model
        | vx = model.vx + deltaTime * (toX computer.keyboard * 1000)
        , vy = model.vy + (deltaTime * (toY computer.keyboard * 1000))
    }


gravity : Model -> Model
gravity model =
    { model
        | vy = model.vy + deltaTime * -500
    }


bounce : Model -> Model
bounce model =
    if model.y - radius < floorY then
        { model | vy = -0.9 * model.vy }

    else
        model


physics : Model -> Model
physics model =
    { model
        | x = model.x + deltaTime * model.vx
        , y = model.y + deltaTime * model.vy
    }



--  VIEW


view : Computer -> Model -> List Shape
view computer model =
    [ words black "press arrow keys to move the ball"
        |> moveY 100
    , circle blue radius
        |> moveX model.x
        |> moveY model.y
    , rectangle brown 1000 30
        |> moveY -15
        |> moveY floorY
    ]
