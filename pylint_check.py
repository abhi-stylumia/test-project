import sys
import os
from pylint import lint

THRESHOLD = float(os.environ['INPUT_FAIL_UNDER'])

if len(sys.argv) < 2:
    raise Exception("(Arugment error) Module to evaluate needs to be the first argument")

run = lint.Run([sys.argv[1]], do_exit=False)
score = run.linter.stats['global_note']

print "::set-output name=pylint_score::" + str(score)

if score < THRESHOLD:
    sys.exit(1)
