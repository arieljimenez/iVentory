module Views exposing (view)

import Html exposing (Html, a, div, header, i, input, label, main_, nav, span, text)
import Html.Attributes exposing (class, for, href, id, name, type_)
import Model exposing (Model, Msg(..))


view : Model -> Html Msg
view model =
    div [ class "mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header" ]
        [ viewHeader
        , viewDrawer
        , viewBody
        ]


viewHeader : Html msg
viewHeader =
    header
        [ class "mdl-layout__header mdl-layout__header--waterfall" ]
        [ viewHeaderTitle
        , viewHeaderTabs
        ]


viewHeaderTitle : Html msg
viewHeaderTitle =
    div
        [ class "mdl-layout__header-row" ]
        [ span
            [ class "mdl-layout-title" ]
            [ text "Dashboard" ]
        , div
            [ class "mdl-layout-spacer" ]
            []
        , div
            [ class "mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right" ]
            [ label
                [ class "mdl-button mdl-js-button mdl-button--icon", for "fixed-header-drawer-exp" ]
                [ i [ class "material-icons" ]
                    [ text "search" ]
                ]
            , div
                [ class "mdl-textfield__expandable-holder" ]
                [ input
                    [ class "mdl-textfield__input", type_ "text", name "sample", id "fixed-header-drawer-exp" ]
                    []
                ]
            ]
        ]


viewDrawer : Html msg
viewDrawer =
    div [ class "mdl-layout__drawer" ]
        [ span [ class "mdl-layout-title" ]
            [ text "iVentory" ]
        , nav [ class "mdl-navigation" ]
            [ a [ class "mdl-navigation__link", href "" ]
                [ text "Link" ]
            , a [ class "mdl-navigation__link", href "" ]
                [ text "Link" ]
            , a [ class "mdl-navigation__link", href "" ]
                [ text "Link" ]
            , a [ class "mdl-navigation__link", href "" ]
                [ text "Link" ]
            ]
        ]


viewBody : Html msg
viewBody =
    main_ [ class "mdl-layout__content" ]
        [ div [ class "page-content" ]
            []
        ]


viewHeaderTabs : Html msg
viewHeaderTabs =
    div
        [ class "mdl-layout__header-row" ]
        [ div
            [ class "mdl-layout-spacer" ]
            []
        , nav
            [ class "mdl-navigation" ]
            [ a [ class "mdl-navigation__link", href "" ]
                [ text "link a" ]
            , a [ class "mdl-navigation__link", href "" ]
                [ text "link b" ]
            , a
                [ class "mdl-navigation__link", href "" ]
                [ text "link c" ]
            ]
        ]
