import System.Environment

import Graphics.UI.SDL as SDL
import Foreign.C

main = do
    SDL.init initFlagVideo
    window <- create_window
    renderer <- getRenderer window
    --renderFillRect renderer (Ptr (Rect 0 0 800 600) )
    renderPresent renderer
    delay 5000

create_window = do
    title <- newCString "Test Window"
    SDL.createWindow title SDL.windowPosCentered SDL.windowPosCentered 800 600 0

