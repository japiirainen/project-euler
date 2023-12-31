#! /usr/bin/env nix-shell
#! nix-shell -p "python3.withPackages(_: [])" -i python3

import math

print(math.lcm(*range(1, 21)))
