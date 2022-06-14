INPUT = 'input/'

import os
import subprocess

for filename in os.listdir(INPUT):
    f = os.path.join(INPUT, filename)
    if os.path.isfile(f) and filename != '.DS_Store':
        bashCommand = "bash ./test.sh %s %s" % (filename, INPUT)
        process = subprocess.Popen(bashCommand.split(), stdout=subprocess.PIPE)
        output, error = process.communicate()

