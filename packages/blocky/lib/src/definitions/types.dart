// all of these should use class actually, but due to the time limit,
// I just use enum.

enum BlockyStyle { logicBlock, textBlock, loopBlock, soundBlock, locationBlock }

enum BlockyType { text, vars, condition, location, loop, sound, math }

enum BlockyBlockAction {
  textPrint,
  varSet,
  conditionIf,
  conditionElse,
  conditionEndIf,
  loopWhile,
  loopEndWhile,
  soundPlay,
  locationGet,
  mathCompute
}

enum BlockyLiteralType { bool, num, str, map, arr, any, nil }

enum BlockyPermission { camera, location, microphone, notification, storage }
