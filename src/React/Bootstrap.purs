module React.Bootstrap where

import Prelude (unit, (<<<))
import React
import qualified React.DOM.Props as RP

foreign import bootstrap :: String -> Array RP.Props -> Array ReactElement -> ReactElement

button :: Array RP.Props -> Array ReactElement -> ReactElement
button = bootstrap "Button"

buttonToolbar :: Array RP.Props -> Array ReactElement -> ReactElement
buttonToolbar = bootstrap "ButtonToolbar"

buttonToolbar' :: Array ReactElement -> ReactElement
buttonToolbar' = buttonToolbar []

panel :: Array RP.Props -> Array ReactElement -> ReactElement
panel = bootstrap "Panel"

panel' :: Array ReactElement -> ReactElement
panel' = panel []

tabs :: Array RP.Props -> Array ReactElement -> ReactElement
tabs = bootstrap "Tabs"

tab :: Array RP.Props -> Array ReactElement -> ReactElement
tab = bootstrap "Tab"

eventKey :: Int -> RP.Props
eventKey = RP.unsafeMkProps "eventKey"

defaultActiveKey :: Int -> RP.Props
defaultActiveKey = RP.unsafeMkProps "defaultActiveKey"

table :: Array RP.Props -> Array ReactElement -> ReactElement
table = bootstrap "Table"

modal :: Array RP.Props -> Array ReactElement -> ReactElement
modal = bootstrap "Modal"

alert :: Array RP.Props -> Array ReactElement -> ReactElement
alert = bootstrap "Alert"

modalHeader' :: Array ReactElement -> ReactElement
modalHeader' = bootstrap "ModalHeader" []

modalFooter' :: Array ReactElement -> ReactElement
modalFooter' = bootstrap "ModalFooter" []

modalBody' :: Array ReactElement -> ReactElement
modalBody' = bootstrap "ModalBody" []

input :: Array RP.Props -> Array ReactElement -> ReactElement
input = bootstrap "Input"

popover :: Array RP.Props -> Array ReactElement -> ReactElement
popover = bootstrap "Popover"

tooltip :: Array RP.Props -> Array ReactElement -> ReactElement
tooltip = bootstrap "Tooltip"

overlayTrigger :: Array RP.Props -> Array ReactElement -> ReactElement
overlayTrigger = bootstrap "OverlayTrigger"

overlayElem :: Array RP.Props -> Array ReactElement -> ReactElement
overlayElem = bootstrap "Overlay"

progressBar :: Array RP.Props -> Array ReactElement -> ReactElement
progressBar = bootstrap "ProgressBar"

striped :: Boolean -> RP.Props
striped = RP.unsafeMkProps "striped"

bordered :: Boolean -> RP.Props
bordered = RP.unsafeMkProps "bordered"

condensed :: Boolean -> RP.Props
condensed = RP.unsafeMkProps "condensed"

hover :: Boolean -> RP.Props
hover = RP.unsafeMkProps "hover"

bsStyle :: String -> RP.Props
bsStyle = RP.unsafeMkProps "bsStyle"

buttonBefore :: ReactElement -> RP.Props
buttonBefore = RP.unsafeMkProps "buttonBefore"

buttonAfter :: ReactElement -> RP.Props
buttonAfter = RP.unsafeMkProps "buttonAfter"

overlay :: ReactElement -> RP.Props
overlay = RP.unsafeMkProps "overlay"

show :: Boolean -> RP.Props
show = RP.unsafeMkProps "show"

header :: ReactElement -> RP.Props
header = RP.unsafeMkProps "header"

footer :: ReactElement -> RP.Props
footer = RP.unsafeMkProps "footer"

placement :: String -> RP.Props
placement = RP.unsafeMkProps "placement"

trigger :: String -> RP.Props
trigger = RP.unsafeMkProps "trigger"

rootClose :: RP.Props
rootClose = RP.unsafeMkProps "rootClose" unit

labelClassName :: String -> RP.Props
labelClassName = RP.unsafeMkProps "labelClassName"

wrapperClassName :: String -> RP.Props
wrapperClassName = RP.unsafeMkProps "wrapperClassName"

expanded :: Boolean -> RP.Props
expanded e = RP.unsafeMkProps "expanded" e

collapsible :: Boolean -> RP.Props
collapsible e = RP.unsafeMkProps "collapsible" e

now :: Int -> RP.Props
now = RP.unsafeMkProps "now"

active :: Boolean -> RP.Props
active = RP.unsafeMkProps "active"

onSelectStr
    :: forall eff props state result.
    (String -> EventHandlerContext eff props state result)
    -> RP.Props
onSelectStr = RP.unsafeMkProps "onSelect" <<< handle

activeKeyStr :: String -> RP.Props
activeKeyStr = RP.unsafeMkProps "activeKey"

eventKeyStr :: String -> RP.Props
eventKeyStr = RP.unsafeMkProps "eventKey"

animation :: Boolean -> RP.Props
animation = RP.unsafeMkProps "animation"

-- not really boostrap props, operate on normal HTML
valueInt :: Int -> RP.Props
valueInt = RP.unsafeMkProps "value"

disabled :: Boolean -> RP.Props
disabled = RP.unsafeMkProps "disabled"
