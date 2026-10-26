
How It Works
<br>
Logic Component	Operational Mechanics
<ul>

<li> while [ -f ... ]	A loop that continuously tests if the constructed path points to an existing regular file. </li>

<li> ${BASE_NAME}-${COUNTER}${EXTENSION}	Dynamically builds strings like 20261025-1.tar.gz, 20261025-2.tar.gz as the loop increments. </li>

<li> ((COUNTER++))	Increments the integer value by 1 each time a collision is detected, ensuring the next number is tried. </li>

<li> set -euo pipefail	Strict mode guardrail that terminates execution immediately if any command or piped pipeline fails. </li>
</ul>

