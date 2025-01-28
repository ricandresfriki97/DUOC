module Main exposing (..)

import Browser
import Html exposing (Html, div, text, button, input, form)
import Html.Attributes exposing (placeholder, value)
import Html.Events exposing (onClick, onInput)


-- MODELO (Estado de la aplicación)
type alias Model =
    { nota1 : String
    , nota2 : String
    , nota3 : String
    , resultado : String
    }


-- MENSAJES (Eventos que pueden ocurrir en la app)
type Msg
    = IngresarNota1 String
    | IngresarNota2 String
    | IngresarNota3 String
    | CalcularPromedio


-- ACTUALIZAR ESTADO (Lógica del programa)
update : Msg -> Model -> Model
update msg model =
    case msg of
        IngresarNota1 valor ->
            { model | nota1 = valor }

        IngresarNota2 valor ->
            { model | nota2 = valor }

        IngresarNota3 valor ->
            { model | nota3 = valor }

        CalcularPromedio ->
            let
                n1 = String.toFloat model.nota1 |> Result.withDefault 0
                n2 = String.toFloat model.nota2 |> Result.withDefault 0
                n3 = String.toFloat model.nota3 |> Result.withDefault 0
                promedio = (n1 + n2 + n3) / 3
                estado = if promedio >= 4.0 then "APROBADO" else "REPROBADO"
            in
            { model | resultado = "Promedio: " ++ String.fromFloat promedio ++ " | Estado: " ++ estado }


-- VISTA (Interfaz de usuario)
view : Model -> Html Msg
view model =
    div []
        [ input [ placeholder "Ingrese nota 1", value model.nota1, onInput IngresarNota1 ] []
        , input [ placeholder "Ingrese nota 2", value model.nota2, onInput IngresarNota2 ] []
        , input [ placeholder "Ingrese nota 3", value model.nota3, onInput IngresarNota3 ] []
        , button [ onClick CalcularPromedio ] [ text "Calcular Promedio" ]
        , div [] [ text model.resultado ]
        ]


-- INICIALIZACIÓN DEL MODELO
init : Model
init =
    { nota1 = "", nota2 = "", nota3 = "", resultado = "" }


-- PROGRAMA PRINCIPAL
main =
    Browser.sandbox { init = init, update = update, view = view }

