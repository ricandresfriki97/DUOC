module Main exposing (main)

import Browser
import Html exposing (Html, div, text, button, input, br)
import Html.Events exposing (onClick, onInput)
import Html.Attributes exposing (placeholder, value)

-- Modelo que almacena la cantidad de hojas y el total a pagar
type alias Model =
    { hojas : String
    , total : Float
    }

-- Mensajes que pueden modificar el estado del programa
type Msg
    = UpdateHojas String
    | Calcular

-- Función para inicializar el estado
init : Model
init =
    { hojas = "", total = 0.0 }

-- Actualiza el estado según el mensaje recibido
update : Msg -> Model -> Model
update msg model =
    case msg of
        UpdateHojas nuevaCantidad ->
            { model | hojas = nuevaCantidad }

        Calcular ->
            let
                hojasInt =
                    case String.toInt model.hojas of
                        Just n -> n
                        Nothing -> 0
                
                precioPorHoja = 20
                totalBase = toFloat (hojasInt * precioPorHoja)
                totalConDescuento = if hojasInt > 30 then totalBase * 0.90 else totalBase
            in
            { model | total = totalConDescuento }

-- Vista que muestra la interfaz de usuario
view : Model -> Html Msg
view model =
    div []
        [ input [ placeholder "Ingresa la cantidad de hojas", value model.hojas, onInput UpdateHojas ] []
        , br [] []
        , button [ onClick Calcular ] [ text "Calcular Total" ]
        , br [] []
        , text ("Total a pagar: $" ++ String.fromFloat model.total)
        ]

-- Programa principal
main =
    Browser.sandbox { init = init, update = update, view = view }

