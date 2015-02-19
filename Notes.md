re: Spec:

It is not typical to nest everything under features/ directory.  Typically in
Rails, for example, it owuld be

spec/models
spec/controllers
spec/features

You should not nest those other directories underneat features.


* Also:  You generally only have one expectation per it block
*  use `let!` to avoid having to do before/each 

#===============================================================================


