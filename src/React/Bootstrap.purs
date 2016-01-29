module React.Bootstrap where

import Prelude (unit)
import qualified React as R
import qualified React.DOM.Props as RP

foreign import bootstrap :: String -> PropComponent

type PropComponent = Array RP.Props -> Component
type Component = Array R.ReactElement -> R.ReactElement

button :: PropComponent
button = bootstrap "Button"

buttonToolbar :: PropComponent
buttonToolbar = bootstrap "ButtonToolbar"

buttonToolbar' :: Component
buttonToolbar' = buttonToolbar []

panel :: PropComponent
panel = bootstrap "Panel"

panel' :: Component
panel' = panel []

tabs :: PropComponent
tabs = bootstrap "Tabs"

tab :: PropComponent
tab = bootstrap "Tab"

eventKey :: Int -> RP.Props
eventKey = RP.unsafeMkProps "eventKey"

table :: PropComponent
table = bootstrap "Table"

modal :: PropComponent
modal = bootstrap "Modal"

modalHeader' :: Component
modalHeader' = bootstrap "ModalHeader" []

modalFooter' :: Component
modalFooter' = bootstrap "ModalFooter" []

modalBody' :: Component
modalBody' = bootstrap "ModalBody" []

input :: PropComponent
input = bootstrap "Input"

popover :: PropComponent
popover = bootstrap "Popover"

overlayTrigger :: PropComponent
overlayTrigger = bootstrap "OverlayTrigger"

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

buttonBefore :: R.ReactElement -> RP.Props
buttonBefore = RP.unsafeMkProps "buttonBefore"

buttonAfter :: R.ReactElement -> RP.Props
buttonAfter = RP.unsafeMkProps "buttonAfter"

overlay :: R.ReactElement -> RP.Props
overlay = RP.unsafeMkProps "overlay"

show :: Boolean -> RP.Props
show = RP.unsafeMkProps "show"

header :: R.ReactElement -> RP.Props
header = RP.unsafeMkProps "header"

footer :: R.ReactElement -> RP.Props
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

-- not really boostrap props, operate on normal HTML
valueInt :: Int -> RP.Props
valueInt = RP.unsafeMkProps "value"

disabled :: Boolean -> RP.Props
disabled = RP.unsafeMkProps "disabled"
