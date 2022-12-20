import qualified Debug.Trace as Trace

infixr 0 #
(#) = id

type Message = [String]

newtype Msg = Msg Message

instance Show Msg where
  show (Msg msg) = concat msg

nop :: (Monad m) => m ()
nop = pure ()

trace' :: (Show a) => a -> b -> b
trace' = Trace.traceShow

tracem :: (Monad m, Show a) => a -> m ()
tracem a = do
  () <- trace' a nop
  nop

main :: IO ()
main = do
  tracem # Msg ["∃"]
  putStrLn "x"
  tracem # Msg ["∃"]
  putStrLn "y"