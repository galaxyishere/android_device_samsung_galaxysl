#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import os, sys

LOCAL_DIR = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), '..'))
RELEASETOOLS_DIR = os.path.abspath(os.path.join(LOCAL_DIR, '../../../build/tools/releasetools'))

# Add releasetools directory to python path
sys.path.append(RELEASETOOLS_DIR)

from common import *

def load_module_from_file(module_name, filename):
    import imp
    f = open(filename, 'r')
    module = imp.load_module(module_name, f, filename, ('', 'U', 1))
    f.close()
    return module

def LoadRecoveryFSTab(zip):
  class Partition(object):
    pass

  try:
    data = zip.read("RECOVERY/RAMDISK/misc/recovery.fstab")
  except KeyError:
    raise ValueError("Could not find RECOVERY/RAMDISK/misc/recovery.fstab")

  d = {}
  for line in data.split("\n"):
    line = line.strip()
    if not line or line.startswith("#"): continue
    pieces = line.split()
    if not (3 <= len(pieces) <= 7):
      raise ValueError("malformed recovery.fstab line: \"%s\"" % (line,))

    p = Partition()
    p.mount_point = pieces[0]
    p.fs_type = pieces[1]
    p.device = pieces[2]
    if len(pieces) >= 4 and pieces[3] != 'NULL':
      p.device2 = pieces[3]
    else:
      p.device2 = None

    d[p.mount_point] = p
  return d
