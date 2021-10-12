#! @Chunk PosetOfCategory

LoadPackage( "Locales" );

#! @Example
LoadPackage( "SubcategoriesForCAP", ">= 2020.10-02" );
#! true
Q := HomalgFieldOfRationalsInSingular( );
#! Q
R := Q["x,y"];
#! Q[x,y]
F := CategoryOfRows( R );
#! Rows( Q[x,y] )
S := SliceCategoryOverTensorUnit( F );
#! SliceCategoryOverTensorUnit( Rows( Q[x,y] ) )
P := PosetOfCategory( S );
#! Poset( SliceCategoryOverTensorUnit( Rows( Q[x,y] ) ) )
I := HomalgMatrix( "[ x ]", 1, 1, R ) / F / S / P;
#! An object in the poset given by: An object in the slice category given by:
#! <A morphism in Rows( Q[x,y] )>
J := HomalgMatrix( "[ x, y ]", 2, 1, R ) / F / S / P;
#! An object in the poset given by: An object in the slice category given by:
#! <A morphism in Rows( Q[x,y] )>
IJ := TensorProduct( I, J );
#! An object in the poset given by: An object in the slice category given by:
#! <A morphism in Rows( Q[x,y] )>
IiJ := DirectProduct( I, J );
#! An object in the poset given by: An object in the slice category given by:
#! <A morphism in Rows( Q[x,y] )>
IiJ = I;
#! true
IsHomSetInhabited( IJ, IiJ );
#! true
IsHomSetInhabited( IiJ, IJ );
#! false
IpJ := Coproduct( I, J );
#! An object in the poset given by: An object in the slice category given by:
#! <A morphism in Rows( Q[x,y] )>
IpJ = J;
#! true
IJqJ := InternalHom( J, IJ ); ## this is the ideal quotient IJ : J
#! An object in the poset given by: An object in the slice category given by:
#! <A morphism in Rows( Q[x,y] )>
IJqJ = I;
#! true
iota := InternalHom( UniversalMorphismIntoTerminalObject( J ), IJ );
#! <An epi-, monomorphism in Poset( SliceCategoryOverTensorUnit( \
#!  Rows( Q[x,y] ) ) )>
IsWellDefined( iota );
#! true
IsIsomorphism( iota );
#! false
IJJ := TensorProduct( IJ, J );
#! An object in the poset given by: An object in the slice category given by:
#! <A morphism in Rows( Q[x,y] )>
IJJqJ := InternalHom( J, IJJ );
#! An object in the poset given by: An object in the slice category given by:
#! <A morphism in Rows( Q[x,y] )>
IJJqJ = I;
#! false
IJJsJ := StableInternalHom( J, IJJ );
#! An object in the poset given by: An object in the slice category given by:
#! <A morphism in Rows( Q[x,y] )>
IJJsJ = I;

I-J;
#(I-J)+J;
#AsMultipleDifference( I-J ) + J;

#(I-J) + J * J = I;
#IsEqualForObjects( (I-J) + J * J, I + 0);



cat := CapCategory( I + 0 );

package_name := "Locales";
compiled_category_name := "BooleanAlgebraOfConstructibleObjectsAsUnionOfDifferencesOfPosetOfSliceCategoryOverTensorUnitOfCategoryOfRows";
category_constructor := function( R )
  local F, S, P, L;
    
    F := CategoryOfRows( R : FinalizeCategory := true );
    S := SliceCategoryOverTensorUnit( F : FinalizeCategory := true );
    P := PosetOfCategory( S : FinalizeCategory := true );
    L := BooleanAlgebraOfConstructibleObjectsAsUnionOfDifferences( P );
    
    return L;
    
end;

operations := "IsEqualForObjects";
given_arguments := [ R ];

CapJitPrecompileCategoryAndCompareResult(
    category_constructor,
    given_arguments,
    package_name,
    compiled_category_name :
    operations := operations
);;


#compiled_func := CapJitCompiledFunction( Last( cat!.added_functions.IsEqualForObjects )[1], [ cat ] );
#Display(compiled_func);

#IsEqualForObjects( (I-J) + J * J, I + 0);

#! true
#! @EndExample
