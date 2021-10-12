# SPDX-License-Identifier: GPL-2.0-or-later
# Locales: Locales, frames, coframes, meet semi-lattices of locally closed subsets, and Boolean algebras of constructible sets
#
# Implementations
#
BindGlobal( "ADD_FUNCTIONS_FOR_BooleanAlgebraOfConstructibleObjectsAsUnionOfDifferencesOfPosetOfSliceCategoryOverTensorUnitOfCategoryOfRows", function ( cat )
    
    ##
    AddIsEqualForObjects( cat,
        
########
function ( cat_1, arg2_1, arg3_1 )
  local cap_jit_hoisted_expression_1_1, cap_jit_hoisted_expression_2_1, cap_jit_hoisted_expression_3_1, cap_jit_hoisted_expression_4_1, cap_jit_hoisted_expression_5_1, cap_jit_hoisted_expression_6_1, cap_jit_hoisted_expression_7_1, cap_jit_hoisted_expression_8_1, cap_jit_hoisted_expression_9_1;
    cap_jit_hoisted_expression_1_1 := [ 1 .. (Length)(
            arg3_1
        ) ];
    cap_jit_hoisted_expression_2_1 := (List)(
        arg3_1,
        function ( logic_new_func_x_2 )
            return (
                (PairInUnderlyingLattice)(
                    logic_new_func_x_2
                )[2]
            );
        end
    );
    cap_jit_hoisted_expression_3_1 := (List)(
        arg3_1,
        function ( logic_new_func_x_2 )
            return (
                (PairInUnderlyingLattice)(
                    logic_new_func_x_2
                )[1]
            );
        end
    );
    cap_jit_hoisted_expression_4_1 := (UnderlyingRing)(
        (AmbientCategory)(
            (AmbientCategory)(
                (UnderlyingCategory)(
                    cat_1
                )
            )
        )
    );
    cap_jit_hoisted_expression_5_1 := [ 0 .. (Length)(
            arg3_1
        ) ];
    cap_jit_hoisted_expression_6_1 := [ 1 .. (Length)(
            arg2_1
        ) ];
    cap_jit_hoisted_expression_7_1 := (List)(
        arg2_1,
        function ( logic_new_func_x_2 )
            return (
                (PairInUnderlyingLattice)(
                    logic_new_func_x_2
                )[2]
            );
        end
    );
    cap_jit_hoisted_expression_8_1 := (List)(
        arg2_1,
        function ( logic_new_func_x_2 )
            return (
                (PairInUnderlyingLattice)(
                    logic_new_func_x_2
                )[1]
            );
        end
    );
    cap_jit_hoisted_expression_9_1 := [ 0 .. (Length)(
            arg2_1
        ) ];
    return (
        (ForAll)(
              arg2_1,
              function ( M_2 )
                local cap_jit_hoisted_expression_10_2, cap_jit_hoisted_expression_11_2;
                  cap_jit_hoisted_expression_10_2 := [ (PairInUnderlyingLattice)(
                          M_2
                      )[1] ];
                  cap_jit_hoisted_expression_11_2 := [ (PairInUnderlyingLattice)(
                          M_2
                      )[2] ];
                  return (
                      (ForAll)(
                          cap_jit_hoisted_expression_5_1,
                          function ( i_3 )
                              return (
                                  (ForAll)(
                                      (List)(
                                          (IteratorOfCombinations)(
                                              cap_jit_hoisted_expression_1_1,
                                              i_3
                                          )
                                      ),
                                      function ( I_4 )
                                          return (
                                              (IsZero)(
                                                  (DecideZeroRows)(
                                                      (function (  )
                                                          if (Length)(
                                                                    (Concatenation)(
                                                                        cap_jit_hoisted_expression_10_2,
                                                                        cap_jit_hoisted_expression_2_1{I_4}
                                                                    )
                                                                ) = 1
                                                          then
                                                              return (
                                                                  (UnderlyingMatrix)(
                                                                      (UnderlyingMorphism)(
                                                                          (UnderlyingCell)(
                                                                              (Concatenation)(
                                                                                  cap_jit_hoisted_expression_10_2,
                                                                                  cap_jit_hoisted_expression_2_1{I_4}
                                                                              )[1]
                                                                          )
                                                                      )
                                                                  )
                                                              );
                                                          else
                                                              return (
                                                                  (Iterated)(
                                                                      (List)(
                                                                          (Concatenation)(
                                                                              cap_jit_hoisted_expression_10_2,
                                                                              cap_jit_hoisted_expression_2_1{I_4}
                                                                          ),
                                                                          function ( logic_new_func_x_6 )
                                                                              return (
                                                                                  (UnderlyingMatrix)(
                                                                                      (UnderlyingMorphism)(
                                                                                          (UnderlyingCell)(
                                                                                              logic_new_func_x_6
                                                                                          )
                                                                                      )
                                                                                  )
                                                                              );
                                                                          end
                                                                      ),
                                                                      function ( I_6, J_6 )
                                                                          return (
                                                                              (ReducedSyzygiesOfRows)(
                                                                                    I_6,
                                                                                    J_6
                                                                                ) * I_6
                                                                          );
                                                                      end
                                                                  )
                                                              );
                                                          fi;
                                                          return;
                                                      end)(
                                                          
                                                      ),
                                                      (function (  )
                                                          if (Length)(
                                                                    (Concatenation)(
                                                                        cap_jit_hoisted_expression_11_2,
                                                                        cap_jit_hoisted_expression_3_1{(Difference)(
                                                                             cap_jit_hoisted_expression_1_1,
                                                                             I_4
                                                                         )}
                                                                    )
                                                                ) = 1
                                                          then
                                                              return (
                                                                  (UnderlyingMatrix)(
                                                                      (UnderlyingMorphism)(
                                                                          (UnderlyingCell)(
                                                                              (Concatenation)(
                                                                                  cap_jit_hoisted_expression_11_2,
                                                                                  cap_jit_hoisted_expression_3_1{(Difference)(
                                                                                       cap_jit_hoisted_expression_1_1,
                                                                                       I_4
                                                                                   )}
                                                                              )[1]
                                                                          )
                                                                      )
                                                                  )
                                                              );
                                                          else
                                                              return (
                                                                  (HomalgIdentityMatrix)(
                                                                        (Sum)(
                                                                            (List)(
                                                                                (Concatenation)(
                                                                                    cap_jit_hoisted_expression_11_2,
                                                                                    cap_jit_hoisted_expression_3_1{(Difference)(
                                                                                         cap_jit_hoisted_expression_1_1,
                                                                                         I_4
                                                                                     )}
                                                                                ),
                                                                                function ( logic_new_func_x_6 )
                                                                                    return (
                                                                                        (RankOfObject)(
                                                                                            (Source)(
                                                                                                (UnderlyingMorphism)(
                                                                                                    (UnderlyingCell)(
                                                                                                        logic_new_func_x_6
                                                                                                    )
                                                                                                )
                                                                                            )
                                                                                        )
                                                                                    );
                                                                                end
                                                                            )
                                                                        ),
                                                                        cap_jit_hoisted_expression_4_1
                                                                    ) * (UnionOfRows)(
                                                                        cap_jit_hoisted_expression_4_1,
                                                                        1,
                                                                        (List)(
                                                                            (Concatenation)(
                                                                                cap_jit_hoisted_expression_11_2,
                                                                                cap_jit_hoisted_expression_3_1{(Difference)(
                                                                                     cap_jit_hoisted_expression_1_1,
                                                                                     I_4
                                                                                 )}
                                                                            ),
                                                                            function ( logic_new_func_x_6 )
                                                                                return (
                                                                                    (UnderlyingMatrix)(
                                                                                        (UnderlyingMorphism)(
                                                                                            (UnderlyingCell)(
                                                                                                logic_new_func_x_6
                                                                                            )
                                                                                        )
                                                                                    )
                                                                                );
                                                                            end
                                                                        )
                                                                    )
                                                              );
                                                          fi;
                                                          return;
                                                      end)(
                                                          
                                                      )
                                                  )
                                              )
                                          );
                                      end
                                  )
                              );
                          end
                      )
                  );
              end
          ) and (ForAll)(
              arg3_1,
              function ( M_2 )
                local cap_jit_hoisted_expression_12_2, cap_jit_hoisted_expression_13_2;
                  cap_jit_hoisted_expression_12_2 := [ (PairInUnderlyingLattice)(
                          M_2
                      )[1] ];
                  cap_jit_hoisted_expression_13_2 := [ (PairInUnderlyingLattice)(
                          M_2
                      )[2] ];
                  return (
                      (ForAll)(
                          cap_jit_hoisted_expression_9_1,
                          function ( i_3 )
                              return (
                                  (ForAll)(
                                      (List)(
                                          (IteratorOfCombinations)(
                                              cap_jit_hoisted_expression_6_1,
                                              i_3
                                          )
                                      ),
                                      function ( I_4 )
                                          return (
                                              (IsZero)(
                                                  (DecideZeroRows)(
                                                      (function (  )
                                                          if (Length)(
                                                                    (Concatenation)(
                                                                        cap_jit_hoisted_expression_12_2,
                                                                        cap_jit_hoisted_expression_7_1{I_4}
                                                                    )
                                                                ) = 1
                                                          then
                                                              return (
                                                                  (UnderlyingMatrix)(
                                                                      (UnderlyingMorphism)(
                                                                          (UnderlyingCell)(
                                                                              (Concatenation)(
                                                                                  cap_jit_hoisted_expression_12_2,
                                                                                  cap_jit_hoisted_expression_7_1{I_4}
                                                                              )[1]
                                                                          )
                                                                      )
                                                                  )
                                                              );
                                                          else
                                                              return (
                                                                  (Iterated)(
                                                                      (List)(
                                                                          (Concatenation)(
                                                                              cap_jit_hoisted_expression_12_2,
                                                                              cap_jit_hoisted_expression_7_1{I_4}
                                                                          ),
                                                                          function ( logic_new_func_x_6 )
                                                                              return (
                                                                                  (UnderlyingMatrix)(
                                                                                      (UnderlyingMorphism)(
                                                                                          (UnderlyingCell)(
                                                                                              logic_new_func_x_6
                                                                                          )
                                                                                      )
                                                                                  )
                                                                              );
                                                                          end
                                                                      ),
                                                                      function ( I_6, J_6 )
                                                                          return (
                                                                              (ReducedSyzygiesOfRows)(
                                                                                    I_6,
                                                                                    J_6
                                                                                ) * I_6
                                                                          );
                                                                      end
                                                                  )
                                                              );
                                                          fi;
                                                          return;
                                                      end)(
                                                          
                                                      ),
                                                      (function (  )
                                                          if (Length)(
                                                                    (Concatenation)(
                                                                        cap_jit_hoisted_expression_13_2,
                                                                        cap_jit_hoisted_expression_8_1{(Difference)(
                                                                             cap_jit_hoisted_expression_6_1,
                                                                             I_4
                                                                         )}
                                                                    )
                                                                ) = 1
                                                          then
                                                              return (
                                                                  (UnderlyingMatrix)(
                                                                      (UnderlyingMorphism)(
                                                                          (UnderlyingCell)(
                                                                              (Concatenation)(
                                                                                  cap_jit_hoisted_expression_13_2,
                                                                                  cap_jit_hoisted_expression_8_1{(Difference)(
                                                                                       cap_jit_hoisted_expression_6_1,
                                                                                       I_4
                                                                                   )}
                                                                              )[1]
                                                                          )
                                                                      )
                                                                  )
                                                              );
                                                          else
                                                              return (
                                                                  (HomalgIdentityMatrix)(
                                                                        (Sum)(
                                                                            (List)(
                                                                                (Concatenation)(
                                                                                    cap_jit_hoisted_expression_13_2,
                                                                                    cap_jit_hoisted_expression_8_1{(Difference)(
                                                                                         cap_jit_hoisted_expression_6_1,
                                                                                         I_4
                                                                                     )}
                                                                                ),
                                                                                function ( logic_new_func_x_6 )
                                                                                    return (
                                                                                        (RankOfObject)(
                                                                                            (Source)(
                                                                                                (UnderlyingMorphism)(
                                                                                                    (UnderlyingCell)(
                                                                                                        logic_new_func_x_6
                                                                                                    )
                                                                                                )
                                                                                            )
                                                                                        )
                                                                                    );
                                                                                end
                                                                            )
                                                                        ),
                                                                        cap_jit_hoisted_expression_4_1
                                                                    ) * (UnionOfRows)(
                                                                        cap_jit_hoisted_expression_4_1,
                                                                        1,
                                                                        (List)(
                                                                            (Concatenation)(
                                                                                cap_jit_hoisted_expression_13_2,
                                                                                cap_jit_hoisted_expression_8_1{(Difference)(
                                                                                     cap_jit_hoisted_expression_6_1,
                                                                                     I_4
                                                                                 )}
                                                                            ),
                                                                            function ( logic_new_func_x_6 )
                                                                                return (
                                                                                    (UnderlyingMatrix)(
                                                                                        (UnderlyingMorphism)(
                                                                                            (UnderlyingCell)(
                                                                                                logic_new_func_x_6
                                                                                            )
                                                                                        )
                                                                                    )
                                                                                );
                                                                            end
                                                                        )
                                                                    )
                                                              );
                                                          fi;
                                                          return;
                                                      end)(
                                                          
                                                      )
                                                  )
                                              )
                                          );
                                      end
                                  )
                              );
                          end
                      )
                  );
              end
          )
    );
end
########
        
    );
    
end );

BindGlobal( "BooleanAlgebraOfConstructibleObjectsAsUnionOfDifferencesOfPosetOfSliceCategoryOverTensorUnitOfCategoryOfRows", function ( R )
  local category_constructor, cat;
    
    category_constructor := 
        
        
        function ( R )
  local F, S, P, L;
    F := (CategoryOfRows)(
        R : FinalizeCategory := true
    );
    S := (SliceCategoryOverTensorUnit)(
        F : FinalizeCategory := true
    );
    P := (PosetOfCategory)(
        S : FinalizeCategory := true
    );
    L := (BooleanAlgebraOfConstructibleObjectsAsUnionOfDifferences)(
        P
    );
    return (
        L
    );
end;
        
        
    
    cat := category_constructor( R : FinalizeCategory := false, no_precompiled_code := true );
    
    ADD_FUNCTIONS_FOR_BooleanAlgebraOfConstructibleObjectsAsUnionOfDifferencesOfPosetOfSliceCategoryOverTensorUnitOfCategoryOfRows( cat );
    
    if ValueOption( "FinalizeCategory" ) = false then
        
        return cat;
        
    fi;
    
    Finalize( cat );
    
    return cat;
    
end );
