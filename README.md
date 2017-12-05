# Usage
Use this these functions to enable storing APL in singe-byte files.

Store a .dyalog file as a SBCS file:

1. Start Dyalog APL

2. Load SBCS.dyalog with `⎕FIX'file://path/SBCS.dyalog'`

3. Enter `'path1/code.dyalog' SBCS.To 'path2/code.sbcs'`
    
Regenerate a .dyalog file from a SBCS file:

1. Start Dyalog APL

2. Load SBCS.dyalog with `⎕FIX'file://path/SBCS.dyalog'`

3. Enter `'path1/code.dyalog' SBCS.From 'path2/code.sbcs'`
    
The result of both functions is the number of bytes written.
