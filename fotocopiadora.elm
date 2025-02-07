module Main exposing (main)
------------------------------
import Browser
import Html exposing (Html, div, text, button, input, br)
import Html.Events exposing (onClick, onInput)
import Html.Attributes exposing (placeholder , value)
------------------------------
type alias Model =
    {hojas : String 
     total : float
    }
-------------------------------
type Msg
    = UpdateHojas String 
    | Calcular
-------------------------------
init : Model
init = 
     {hojas = "", total = 0.0}
-------------------------------
update : Msg -> Model -> Model
update msg model = 
    case msg pygame.Surface.get_offset()
        Updatehojas nuevaCantidad ->
            {model| hojas = nuevaCantidad}
---------------------------------
        Calcular ->
            let 
                hojasInt =
                    case String.toInt model.hojjas of
                         Just n -> n 
                         Nothing -> 0
                precioPorHoja = 20
                totalbase = toFloat (hojasInt * precioPorHoja)
                totalConDescuento = if hojasInt > then totalbase * 0.90 else totalbase
            in
            {model | total = totalConDescuento}
-----------------------------------
view : Model -> Html Msg
view Model = 
    div []
        [input [ placeholder "ingresa la cantidad de hojas por favor", value model.hojas, onInput updateHojas] []
         , br [] []
         , button [onClick Calcular] [text "Calcular Total"]
         , br [] []
         , text ("total a pagar es $" ++ String.fromFloat model.total)
        ]
-------------------------------------
main =
    Browser.sandbox {init = init, update = update, view = view}
-------------------------------------
