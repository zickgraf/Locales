# SPDX-License-Identifier: GPL-2.0-or-later
# Locales: Locales, frames, coframes, meet semi-lattices of locally closed subsets, and Boolean algebras of constructible sets
#
# Implementations
#
BindGlobal( "ADD_FUNCTIONS_FOR_PosetOfCategoryOfSliceCategoryOverTensorUnitOfCategoryOfRows", function ( cat )
    
    ##
    AddInternalHomOnObjects( cat,
        
########
function ( cat_1, a_1, b_1 )
  local cap_jit_morphism_attribute_1_1, cap_jit_hoisted_expression_1_1;
    cap_jit_hoisted_expression_1_1 := (HomalgIdentityMatrix)(
        1,
        (UnderlyingRing)(
            (AmbientCategory)(
                (AmbientCategory)(
                    cat_1
                )
            )
        )
    );
    cap_jit_morphism_attribute_1_1 := (ReducedSyzygiesOfRows)(
        (RightDivide)(
                (HomalgIdentityMatrix)(
                    (NumberColumns)(
                        (KroneckerMat)(
                                (HomalgIdentityMatrix)(
                                    1 * 1,
                                    (UnderlyingRing)(
                                        (AmbientCategory)(
                                            (AmbientCategory)(
                                                cat_1
                                            )
                                        )
                                    )
                                ),
                                (HomalgIdentityMatrix)(
                                    1,
                                    (UnderlyingRing)(
                                        (AmbientCategory)(
                                            (AmbientCategory)(
                                                cat_1
                                            )
                                        )
                                    )
                                )
                            ) * (KroneckerMat)(
                                (HomalgMatrix)(
                                    (PermutationMat)(
                                        (PermList)(
                                            (List)(
                                                [ 1 .. (1 * 1) ],
                                                function ( i_2 )
                                                    return (
                                                        ((REM_INT)(
                                                                  (i_2 - 1),
                                                                  1
                                                              ) * 1 + (QUO_INT)(
                                                                (i_2 - 1),
                                                                1
                                                            ) + 1)
                                                    );
                                                end
                                            )
                                        ),
                                        (1 * 1)
                                    ),
                                    (1 * 1),
                                    (1 * 1),
                                    (UnderlyingRing)(
                                        (AmbientCategory)(
                                            (AmbientCategory)(
                                                cat_1
                                            )
                                        )
                                    )
                                ),
                                (HomalgIdentityMatrix)(
                                    1,
                                    (UnderlyingRing)(
                                        (AmbientCategory)(
                                            (AmbientCategory)(
                                                cat_1
                                            )
                                        )
                                    )
                                )
                            ) * (KroneckerMat)(
                              (HomalgIdentityMatrix)(
                                  1,
                                  (UnderlyingRing)(
                                      (AmbientCategory)(
                                          (AmbientCategory)(
                                              cat_1
                                          )
                                      )
                                  )
                              ),
                              (function (  )
                                  if (1 = 0)
                                  then
                                      return (
                                          (HomalgZeroMatrix)(
                                              (1 * 1),
                                              1,
                                              (UnderlyingRing)(
                                                  (AmbientCategory)(
                                                      (AmbientCategory)(
                                                          cat_1
                                                      )
                                                  )
                                              )
                                          )
                                      );
                                  else
                                      return (
                                          (UnionOfRows)(
                                              (List)(
                                                  [ 1 .. 1 ],
                                                  function ( i_3 )
                                                      return (
                                                          (CertainColumns)(
                                                              cap_jit_hoisted_expression_1_1,
                                                              [ i_3 ]
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
                    ),
                    (UnderlyingRing)(
                        (AmbientCategory)(
                            (AmbientCategory)(
                                cat_1
                            )
                        )
                    )
                ),
                (KroneckerMat)(
                        (HomalgIdentityMatrix)(
                            1 * 1,
                            (UnderlyingRing)(
                                (AmbientCategory)(
                                    (AmbientCategory)(
                                        cat_1
                                    )
                                )
                            )
                        ),
                        (HomalgIdentityMatrix)(
                            1,
                            (UnderlyingRing)(
                                (AmbientCategory)(
                                    (AmbientCategory)(
                                        cat_1
                                    )
                                )
                            )
                        )
                    ) * (KroneckerMat)(
                        (HomalgMatrix)(
                            (PermutationMat)(
                                (PermList)(
                                    (List)(
                                        [ 1 .. (1 * 1) ],
                                        function ( i_2 )
                                            return (
                                                ((REM_INT)(
                                                          (i_2 - 1),
                                                          1
                                                      ) * 1 + (QUO_INT)(
                                                        (i_2 - 1),
                                                        1
                                                    ) + 1)
                                            );
                                        end
                                    )
                                ),
                                (1 * 1)
                            ),
                            (1 * 1),
                            (1 * 1),
                            (UnderlyingRing)(
                                (AmbientCategory)(
                                    (AmbientCategory)(
                                        cat_1
                                    )
                                )
                            )
                        ),
                        (HomalgIdentityMatrix)(
                            1,
                            (UnderlyingRing)(
                                (AmbientCategory)(
                                    (AmbientCategory)(
                                        cat_1
                                    )
                                )
                            )
                        )
                    ) * (KroneckerMat)(
                      (HomalgIdentityMatrix)(
                          1,
                          (UnderlyingRing)(
                              (AmbientCategory)(
                                  (AmbientCategory)(
                                      cat_1
                                  )
                              )
                          )
                      ),
                      (function (  )
                          if (1 = 0)
                          then
                              return (
                                  (HomalgZeroMatrix)(
                                      (1 * 1),
                                      1,
                                      (UnderlyingRing)(
                                          (AmbientCategory)(
                                              (AmbientCategory)(
                                                  cat_1
                                              )
                                          )
                                      )
                                  )
                              );
                          else
                              return (
                                  (UnionOfRows)(
                                      (List)(
                                          [ 1 .. 1 ],
                                          function ( i_3 )
                                              return (
                                                  (CertainColumns)(
                                                      cap_jit_hoisted_expression_1_1,
                                                      [ i_3 ]
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
            ) * (HomalgIdentityMatrix)(
                (NumberColumns)(
                    (HomalgIdentityMatrix)(
                        (1 * 1),
                        (UnderlyingRing)(
                            (AmbientCategory)(
                                (AmbientCategory)(
                                    cat_1
                                )
                            )
                        )
                    )
                ),
                (UnderlyingRing)(
                    (AmbientCategory)(
                        (AmbientCategory)(
                            cat_1
                        )
                    )
                )
            ) * ((HomalgIdentityMatrix)(
                  (RankOfObject)(
                        (Range)(
                            (UnderlyingMorphism)(
                                (UnderlyingCell)(
                                    a_1
                                )
                            )
                        )
                    ) * 1,
                  (UnderlyingRing)(
                      (AmbientCategory)(
                          (AmbientCategory)(
                              cat_1
                          )
                      )
                  )
              ) * (KroneckerMat)(
                  (TransposedMatrix)(
                      (UnderlyingMatrix)(
                          (UnderlyingMorphism)(
                              (UnderlyingCell)(
                                  a_1
                              )
                          )
                      )
                  ),
                  (HomalgIdentityMatrix)(
                      1,
                      (UnderlyingRing)(
                          (AmbientCategory)(
                              (AmbientCategory)(
                                  cat_1
                              )
                          )
                      )
                  )
              ) * (HomalgIdentityMatrix)(
                ((RankOfObject)(
                      (Source)(
                          (UnderlyingMorphism)(
                              (UnderlyingCell)(
                                  a_1
                              )
                          )
                      )
                  ) * 1),
                (UnderlyingRing)(
                    (AmbientCategory)(
                        (AmbientCategory)(
                            cat_1
                        )
                    )
                )
            )),
        (HomalgIdentityMatrix)(
                (RankOfObject)(
                      (Source)(
                          (UnderlyingMorphism)(
                              (UnderlyingCell)(
                                  a_1
                              )
                          )
                      )
                  ) * (RankOfObject)(
                      (Source)(
                          (UnderlyingMorphism)(
                              (UnderlyingCell)(
                                  b_1
                              )
                          )
                      )
                  ),
                (UnderlyingRing)(
                    (AmbientCategory)(
                        (AmbientCategory)(
                            cat_1
                        )
                    )
                )
            ) * (KroneckerMat)(
                (TransposedMatrix)(
                    (HomalgIdentityMatrix)(
                        (RankOfObject)(
                            (Source)(
                                (UnderlyingMorphism)(
                                    (UnderlyingCell)(
                                        a_1
                                    )
                                )
                            )
                        ),
                        (UnderlyingRing)(
                            (AmbientCategory)(
                                (AmbientCategory)(
                                    cat_1
                                )
                            )
                        )
                    )
                ),
                (UnderlyingMatrix)(
                    (UnderlyingMorphism)(
                        (UnderlyingCell)(
                            b_1
                        )
                    )
                )
            ) * (HomalgIdentityMatrix)(
              ((RankOfObject)(
                    (Source)(
                        (UnderlyingMorphism)(
                            (UnderlyingCell)(
                                a_1
                            )
                        )
                    )
                ) * (RankOfObject)(
                    (Range)(
                        (UnderlyingMorphism)(
                            (UnderlyingCell)(
                                b_1
                            )
                        )
                    )
                )),
              (UnderlyingRing)(
                  (AmbientCategory)(
                      (AmbientCategory)(
                          cat_1
                      )
                  )
              )
          )
    );
    return (
        (ObjectifyObjectForCAPWithAttributes)(
            rec(
               ),
            cat_1,
            UnderlyingCell,
            (ObjectifyObjectForCAPWithAttributes)(
                rec(
                   ),
                (AmbientCategory)(
                    cat_1
                ),
                UnderlyingMorphism,
                (ObjectifyMorphismWithSourceAndRangeForCAPWithAttributes)(
                    rec(
                       ),
                    (AmbientCategory)(
                        (AmbientCategory)(
                            cat_1
                        )
                    ),
                    (ObjectifyObjectForCAPWithAttributes)(
                        rec(
                           ),
                        (AmbientCategory)(
                            (AmbientCategory)(
                                cat_1
                            )
                        ),
                        RankOfObject,
                        (NrRows)(
                            cap_jit_morphism_attribute_1_1
                        )
                    ),
                    (ObjectifyObjectForCAPWithAttributes)(
                        rec(
                           ),
                        (AmbientCategory)(
                            (AmbientCategory)(
                                cat_1
                            )
                        ),
                        RankOfObject,
                        (NrColumns)(
                            cap_jit_morphism_attribute_1_1
                        )
                    ),
                    UnderlyingMatrix,
                    cap_jit_morphism_attribute_1_1
                )
            )
        )
    );
end
########
        
    );
    
end );

BindGlobal( "PosetOfCategoryOfSliceCategoryOverTensorUnitOfCategoryOfRows", function ( R )
  local category_constructor, cat;
    
    category_constructor := 
        
        
        function ( R )
  local F, S, L;
    F := (CategoryOfRows)(
        R : FinalizeCategory := true
    );
    S := (SliceCategoryOverTensorUnit)(
        F : FinalizeCategory := true
    );
    L := (PosetOfCategory)(
        S
    );
    return (
        L
    );
end;
        
        
    
    cat := category_constructor( R : FinalizeCategory := false, no_precompiled_code := true );
    
    ADD_FUNCTIONS_FOR_PosetOfCategoryOfSliceCategoryOverTensorUnitOfCategoryOfRows( cat );
    
    if ValueOption( "FinalizeCategory" ) = false then
        
        return cat;
        
    fi;
    
    Finalize( cat );
    
    return cat;
    
end );
