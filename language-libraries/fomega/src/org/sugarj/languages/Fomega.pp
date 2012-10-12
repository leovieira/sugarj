[
   TyVar                     -- _1,
   TyNat                     -- KW["Nat"],
   TyBool                    -- KW["Bool"],
   TyString                  -- KW["String"],
   TyRecord                  -- KW["{"] _1 KW["}"],
   TyRecord.1:iter-star-sep  -- _1 KW[","],
   TyVariant                 -- KW["<"] _1 KW[">"],
   TyVariant.1:iter-star-sep -- _1 KW[","],
   TyDecl                    -- _1 KW[":"] _2,
   KiStar                    -- KW["*"],
   KiArrow                   -- _1 KW["=>"] _2,
   TyQVar                    -- _1 KW["."] _2,
   TyApp                     -- _1 _2,
   TyTuple                   -- _1 KW["**"] _2,
   TyTuple.2:iter-sep        -- _1 KW["**"],
   TyArrow                   -- _1 KW["->"] _2,
   TyForall                  -- KW["FORALL"] _1 KW["::"] _2 KW["."] _3,
   TyAbs                     -- KW["\\"] _1 KW["::"] _2 KW["."] _3,
   TyMu                      -- KW["MU"] _1 KW["."] _2,
   ModuleDec                 -- KW["MODULE"] _1,
   ModuleId                  -- H hs=0 [_1],
   ModuleId.1:iter-sep       -- H hs=0 [_1 KW["."]],
   Module                    -- _1 _2 _3,
   Module.2:iter-star        -- _1,
   Module.3:iter-star        -- _1,
   Import                    -- KW["IMPORT"] _1 _2,
   Import.1:opt              -- _1,
   ValDef                    -- _1 KW["VAL"] _2 KW[":"] _3 KW["="] _4,
   ValDef.1:opt              -- _1,
   TypeDef                   -- _1 KW["TYPE"] _2 KW["::"] _3 KW["="] _4,
   TypeDef.1:opt             -- _1,
   FomegaBody                -- _1,
   FomegaBody.1:iter-sep     -- _1 KW["\n"],
   Public                    -- KW["PUBLIC"],
   Qualified                 -- KW["QUALIFIED"],
   Var                       -- _1,
   QVar                      -- _1 KW["."] _2,
   Record                    -- KW["{"] _1 KW["}"],
   Record.1:iter-star-sep    -- _1 KW[","],
   Variant                   -- KW["<"] _1 KW[">"],
   Tuple                     -- KW["("] _1 KW[","] _2 KW[")"],
   Tuple.2:iter-sep          -- _1 KW[","],
   True                      -- KW["TRUE"],
   False                     -- KW["FALSE"],
   Nat                       -- _1,
   String                    -- _1,
   Field                     -- _1 KW["="] _2,
   Branch                    -- KW["<"] _1 KW["="] _2 KW[">"] KW["=>"] _3,
   SelectRcd                 -- _1 KW["."] _2,
   SelectTup                 -- _1 KW["."] _2,
   App                       -- _1 _2,
   TApp                      -- _1 KW["["] _2 KW["]"],
   Fold                      -- KW["FOLD"] KW["["] _1 KW["]"] _2,
   Unfold                    -- KW["UNFOLD"] KW["["] _1 KW["]"] _2,
   Ascription                -- _1 KW["AS"] _2,
   Abs                       -- KW["\\"] _1 KW[":"] _2 KW["."] _3,
   TAbs                      -- KW["\\"] _1 KW["::"] _2 KW["."] _3,
   Cond                      -- KW["IF"] _1 KW["THEN"] _2 KW["ELSE"] _3,
   Case                      -- KW["CASE"] _1 KW["OF"] _2,
   Case.2:iter-sep           -- _1 KW[";"]
]
