import System.Environment

import Foreign.Ptr (nullPtr)

import SFML.Audio
import SFML.Graphics
import SFML.Window

main = do
    let ctxSettings = Just $ ContextSettings 24 8 0 1 2
    wnd <- createRenderWindow (VideoMode 640 480 32) "SFML Haskell Demo" [SFDefaultStyle] ctxSettings
    loop wnd

loop wnd = do
    display wnd
    evt <- waitEvent wnd
    case evt of
        Nothing -> return ()
        Just SFEvtClosed -> return ()
        _ -> loop wnd
