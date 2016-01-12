#!/usr/bin/env xcrun swift -i

print("Process.arguments gave args:")
for s in Process.arguments {
  print(s)
}