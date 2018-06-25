-- mark2html
-- Convert markdown to html.

module Main where

import           Control.Category              ((>>>))
import qualified Data.Text.Lazy.IO             as I
import           Text.Blaze.Html.Renderer.Text (renderHtml)
import           Text.Markdown                 (def, markdown)
import           Text.Printf                   (printf)

main :: IO ()
main = I.getContents >>= (markdown def >>> renderHtml >>> printf "%s\n")
