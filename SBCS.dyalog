:Namespace SBCS
⍝ Use these functions to enable storing APL in single-byte-per-character files.
⍝ Store a .dyalog file as a SBCS file:
⍝   'code.dyalog' SBCS.To 'code.sbcs'
⍝ Regenerate a .dyalog file from a SBCS file:
⍝   'code.dyalog' SBCS.From 'code.sbcs'
⍝ The result of both functions is the number of bytes written

    uc   ← ,¨'⊆⍠⍤⌸⌺⍸⍥⍢√⊇…⌾⍮⍭⍧⍛' ⍝ ∥¤⍰⍛⍜
    av   ← ,¨'ɫ¥£¢ý·€´§¶∣¿¡',⎕UCS 160 31 12⍝ 
    cs ← av ⎕R uc⊢⎕AV
    To   ← (⊢∘⎕NUNTIE⊢(¯129+cs⍳∘⊃∘⎕NGET⊣)⎕NAPPEND 83,⍨⊢)∘(⊢⎕NCREATE∘≡1∘⎕NDELETE)
    From ← ⊢⊣⎕NPUT⍨∘⊂cs{⍺[⍵]}129+∘(⎕NUNTIE⊢(⎕NREAD,∘83 ¯1))0⎕NTIE⍨⊢
:EndNamespace
