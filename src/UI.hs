{-# LANGUAGE TemplateHaskell #-} -- needed for lens

module UI where

import qualified Brick.AttrMap          as A
import qualified Brick.Widgets.Border   as B
import qualified Brick.Widgets.Center   as C
import qualified Brick.Widgets.Edit     as E
import qualified Brick.Main             as M
import qualified Brick.Types            as T
import qualified Graphics.Vty           as V

import Lens.Micro
import Lens.Micro.TH
import Lens.Micro.Mtl
import Brick.Widgets.Core
import Brick.Util (on)
import Model.JpNumber (JpNumber(JpNumber))

import Transform

data Name = Edit1 deriving (Ord, Show, Eq)
data State =
    State {_editor :: E.Editor String Name
          ,_definition :: String
          ,_jpNumbers    :: [JpNumber]
    }

makeLenses ''State

drawUI :: State -> [T.Widget Name]
drawUI st = [ui]
    where
        e1 = E.renderEditor (str . unlines) True (st^.editor)
        e2 = withAttr definitionAttr $ str (st^.definition)

        countingTable =
             B.borderWithLabel (str "Counting Japanese") $
             vLimitPercent 75 $ hLimitPercent 37 $
             C.center $
             vBox
                 [ C.center $ (str "Input: " <+> (hLimit 30 $ vLimit 1 e1))
                 , C.center $ (hLimit 50 $ e2)
                 , C.center $ str "In the Japanese language, different counters (e.g., 本 (ほん, hon) for long objects \nor 枚 (まい, mai) for flat objects) are used depending on the item's shape or category.\n"
                 ]

        instructionsTable =
             B.borderWithLabel (str "Instructions") $
             vLimitPercent 75 $ hLimitPercent 37 $
             C.center $
             vBox 
                 [ str "1. Type a numeral followed by a noun"
                 , str "------------------------------------"
                 , str "Example input: \"2 cats\""
                 , str "Example output: \"ni 二 匹 (ひき) / hiki)\""
                 , str "------------------------------------"
                 , str "2. Press Enter to see its japanese form"
                 , str "3. Press ESC to quit the application"
                 ]

        ui = C.center $ hBox [countingTable, instructionsTable]


-- search :: [JpNumber] -> String
-- search nums word = "Japanese: " ++ transform nums word

appEvent :: T.BrickEvent Name e -> T.EventM Name State ()
appEvent e = do
    case e of
        T.VtyEvent vtye -> case vtye of
            V.EvKey V.KEsc [] -> M.halt
            V.EvKey V.KEnter [] -> do
                editorWidget <- use editor
                let userInput = unlines (E.getEditContents editorWidget)

                nums <- use jpNumbers
                definition .= transform nums userInput
                editor .= E.editor Edit1 (Just 1) ""
                return ()

            _ -> zoom editor $ E.handleEditorEvent e
        _ -> return ()

definitionAttr :: A.AttrName
definitionAttr = A.attrName "blackOnWhite"

appStyle :: A.AttrMap
appStyle = A.attrMap V.defAttr
    [ (E.editAttr,                    V.red   `on` V.white)
    , (definitionAttr,                V.black `on` V.yellow)
    ]

theApp :: M.App State e Name
theApp =
    M.App { M.appDraw           = drawUI
          , M.appChooseCursor   = M.neverShowCursor
          , M.appHandleEvent    = appEvent
          , M.appStartEvent     = return ()
          , M.appAttrMap        = const appStyle
          }

initialState :: [JpNumber] -> State
initialState nums =
    State (E.editor Edit1 (Just 1) "")
          ("Japanese form here")
          nums
