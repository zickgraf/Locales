#
# Locales: MultipleDifferences
#
# Implementations
#

##
InstallMethod( MeetSemilatticeOfMultipleDifferences,
        "for a CAP category",
        [ IsCapCategory and IsThinCategory ],
        
  function( P )
    local name, D;
    
    name := "The meet-semilattice of multiple differences of ";
    
    name := Concatenation( name, Name( P ) );
    
    D := CreateCapCategory( name );
    
    D!.UnderlyingCategory := P;
    D!.MeetSemilatticeOfDifferences := MeetSemilatticeOfDifferences( P );
    
    AddObjectRepresentation( D, IsObjectInMeetSemilatticeOfMultipleDifferences );
    
    AddMorphismRepresentation( D, IsMorphismInMeetSemilatticeOfMultipleDifferences );
    
    SetIsStrictCartesianCategory( D, true );
    
    ADD_COMMON_METHODS_FOR_MEET_SEMILATTICES( D );
    
    ##
    AddIsWellDefinedForObjects( D,
      function( A )
        local U;
        
        U := ListOfObjectsOfDifferences( A );
        
        return ForAll( U, IsObjectInMeetSemilatticeOfDifferences ) and ForAll( U, IsWellDefinedForObjects );
        
    end );
    
    ##
    AddIsHomSetInhabited( D,
      function( A, B )
        
        return IsHomSetInhabited( AsDifference( A ), AsDifference( B ) );
        
    end );
    
    ##
    AddTerminalObject( D,
      function( arg )
        local T;
        
        T := TerminalObject( D!.MeetSemilatticeOfDifferences );
        
        return AsFormalMultipleDifference( T );
        
    end );
    
    ##
    AddInitialObject( D,
      function( arg )
        local I;
        
        I := InitialObject( D!.MeetSemilatticeOfDifferences );
        
        return AsFormalMultipleDifference( I );
        
    end );
    
    ##
    AddIsInitial( D,
      function( A )
        
        return IsInitial( AsDifference( A ) );
        
    end );
    
    ##
    AddDirectProduct( D,
      function( L )
        
        L := List( L, ListOfObjectsOfDifferences );
        
        ## an advantage of this this specific data structure for formal multiple differences
        return CallFuncList( AsFormalMultipleDifference, Concatenation( L ) );
        
    end );
    
    Finalize( D );
    
    return D;
    
end );

##
InstallGlobalFunction( AsFormalMultipleDifference,
  function( arg )
    local A, D;
    
    A := rec( );
    
    D := MeetSemilatticeOfMultipleDifferences( CapCategory( PairInUnderlyingLattice( arg[1] )[1] ) );
    
    ObjectifyObjectForCAPWithAttributes( A, D,
            ListOfPreObjectsInMeetSemilatticeOfDifferences, arg,
            SetIsLocallyClosed, true
            );
    
    Assert( 4, IsWellDefined( A ) );
    
    return A;
    
end );

##
InstallGlobalFunction( AsFormalMultipleDifferenceOfNormalizedObjects,
  function( arg )
    local A, D;
    
    A := rec( );

    D := MeetSemilatticeOfMultipleDifferences( CapCategory( PairInUnderlyingLattice( arg[1] )[1] ) );
    
    ObjectifyObjectForCAPWithAttributes( A, D,
            ListOfNormalizedObjectsInMeetSemilatticeOfDifferences, arg,
            SetIsLocallyClosed, true
            );
    
    Assert( 4, IsWellDefined( A ) );
    
    return A;
    
end );

##
InstallMethod( \-,
        "for an object in a meet-semilattice of formal multiple differences and an object in a thin category",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences, IsObjectInThinCategory ],
        
  function( A, B )
    local U;
    
    if IsObjectInMeetSemilatticeOfDifferences( B ) or
       IsObjectInMeetSemilatticeOfMultipleDifferences( B ) then
        TryNextMethod( );
    fi;
    
    U := ListOfObjectsOfDifferences( A );
    
    U := ShallowCopy( U );
    
    Add( U, -B );
    
    return CallFuncList( AsFormalMultipleDifference, U );
    
end );

##
#InstallMethod( \-,
#        "for an object in a meet-semilattice of formal differences and an object in a thin category",
#        [ IsObjectInMeetSemilatticeOfDifferences, IsObjectInThinCategory ],
#        
#  function( A, B )
#    local U;
#    
#    if IsObjectInMeetSemilatticeOfDifferences( B ) or
#       IsObjectInMeetSemilatticeOfMultipleDifferences( B ) then
#        TryNextMethod( );
#    fi;
#    
#    return AsFormalMultipleDifference( A ) - B;
#    
#end );

##
#InstallMethod( AdditiveInverseMutable,
#        "for an object in a meet-semilattice of formal multiple differences",
#        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
#        
#  function( A )
#    
#    return AsFormalMultipleDifference( - AsDifference( A ) );
#    
#end );

##
InstallMethod( ListOfNormalizedObjectsInMeetSemilatticeOfDifferences,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  function( A )
    local U, u, T_new, T;
    
    U := ListOfObjectsOfDifferences( A );
    
    u := List( U, PairInUnderlyingLattice );
    
    T_new := DirectProduct( List( u, a -> a[1] ) );
    
    repeat
        
        T := T_new;
        
        U := List( List( u, a -> a[2] ), S -> T - S );
        
        List( U, NormalizedPairInUnderlyingHeytingOrCoHeytingAlgebra );
        
        u := List( U, PairInUnderlyingLattice );
        
        T_new := DirectProduct( List( u, a -> a[1] ) );
        
    until IsEqualForObjectsIfIsHomSetInhabited( T_new, T );
    
    u := MaximalObjects( List( u, a -> a[2] ), IsHomSetInhabited );
    
    U := List( u, S -> T - S );
    
    return U;
    
end );

##
InstallMethod( ListOfStandardObjectsInMeetSemilatticeOfDifferences,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  function( A )
    local U, u, T_new, T;
    
    U := ListOfNormalizedObjectsInMeetSemilatticeOfDifferences( A );
    
    List( U, StandardPairInUnderlyingHeytingOrCoHeytingAlgebra );
    
    return U;
    
end );

##
InstallMethod( ListOfObjectsOfDifferences,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  ListOfPreObjectsInMeetSemilatticeOfDifferences );

##
InstallMethod( ListOfObjectsOfDifferences,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences and HasListOfNormalizedObjectsInMeetSemilatticeOfDifferences ],
        
  ListOfNormalizedObjectsInMeetSemilatticeOfDifferences );

##
InstallMethod( ListOfObjectsOfDifferences,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences and HasListOfStandardObjectsInMeetSemilatticeOfDifferences ],
        
  ListOfStandardObjectsInMeetSemilatticeOfDifferences );

##
InstallMethod( EquivalenceToMeetSemilatticeOfDifferences,
        "for a CAP category",
        [ IsCapCategory and IsThinCategory ],
        
  function( P )
    local S, T, squash;
    
    S := MeetSemilatticeOfMultipleDifferences( P );
    T := MeetSemilatticeOfDifferences( P );
    
    squash := CapFunctor( "Equivalence from the meet-semilattice of formal multiple differences to the meet-semilattice of formal differences", S, T );
    
    AddObjectFunction( squash,
      function( obj )
        local U, T, S;
        
        U := ListOfObjectsOfDifferences( obj );
        
        U := List( U, PairInUnderlyingLattice );
        
        T := DirectProduct( List( U, a -> a[1] ) );
        S := Coproduct( List( U, a -> a[2] ) );
        
        return T - S;
        
    end );
    
    AddMorphismFunction( squash,
      function( new_source, mor, new_range )
        
        return UniqueMorphism( new_source, new_range );
        
    end );
    
    return squash;
    
end );

##
InstallMethod( AsDifference,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  function( A )
    local P, F;
    
    P := CapCategory( A )!.UnderlyingCategory;
    
    F := EquivalenceToMeetSemilatticeOfDifferences( P );
    
    return ApplyFunctor( F, A );
    
end );

##
InstallMethod( NormalizeObject,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  function( A )
    
    List( ListOfNormalizedObjectsInMeetSemilatticeOfDifferences( A ), IsInitial );
    
    if IsInitial( A ) then
        return InitialObject( A );
    fi;
    
    return A;
    
end );

##
InstallMethod( StandardizeObject,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  function( A )
    
    List( ListOfStandardObjectsInMeetSemilatticeOfDifferences( A ), IsInitial );
    
    if IsInitial( A ) then
        return InitialObject( A );
    fi;
    
    return A;
    
end );

##
InstallMethod( IsClosedSubobject,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  function( A )
    local H;
    
    H := CapCategory( A )!.UnderlyingCategory;
    
    if HasIsCocartesianCoclosedCategory( H ) and IsCocartesianCoclosedCategory( H ) then
        return ForAll( ListOfNormalizedObjectsInMeetSemilatticeOfDifferences( A ), IsClosed );
    fi;
    
    TryNextMethod( );
    
end );

##
InstallMethod( IsClosed,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  IsClosedSubobject );

##
InstallMethod( IsOpen,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  function( A )
    
    return IsClosed( -A );
    
end );

##
InstallMethod( Closure,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  function( A )
    local H;
    
    H := CapCategory( A )!.UnderlyingCategory;
    
    if HasIsCocartesianCoclosedCategory( H ) and IsCocartesianCoclosedCategory( H ) then
        return ListOfNormalizedObjectsInMeetSemilatticeOfDifferences( A )[1].I;
    fi;
    
    TryNextMethod( );
    
end );

##
InstallMethod( LocallyClosedApproximation,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  function( A )
    
    if IsClosed( A ) then
        return Closure( A );
    fi;
    
    return StandardizeObject( A );
    
end );

##
InstallMethod( CanonicalObject,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  LocallyClosedApproximation );

##
InstallMethod( Dimension,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  function( A )
    
    return Dimension( Closure( A ) );
    
end );

##
InstallMethod( \*,
        "for an object in a thin category and an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfDifferences, IsObjectInMeetSemilatticeOfMultipleDifferences ],

  function( A, B )
    
    if IsObjectInMeetSemilatticeOfMultipleDifferences( A ) then
        TryNextMethod( );
    fi;
    
    return AsFormalMultipleDifference( A ) * B;
    
end );

##
InstallMethod( \*,
        "for an object in a meet-semilattice of formal multiple differences and an object in a thin category",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences, IsObjectInMeetSemilatticeOfDifferences ],

  function( A, B )
    
    if IsObjectInMeetSemilatticeOfMultipleDifferences( B ) then
        TryNextMethod( );
    fi;
    
    return A * AsFormalMultipleDifference( B );
    
end );

##
InstallMethod( \=,
        "for an object in a thin category and an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfDifferences, IsObjectInMeetSemilatticeOfMultipleDifferences ],

  function( A, B )
    
    if IsObjectInMeetSemilatticeOfMultipleDifferences( A ) then
        TryNextMethod( );
    fi;
    
    return AsFormalMultipleDifference( A ) = B;
    
end );

##
InstallMethod( \=,
        "for an object in a meet-semilattice of formal multiple differences and an object in a thin category",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences, IsObjectInMeetSemilatticeOfDifferences ],

  function( A, B )
    
    if IsObjectInMeetSemilatticeOfMultipleDifferences( B ) then
        TryNextMethod( );
    fi;
    
    return A = AsFormalMultipleDifference( B );
    
end );

##
InstallMethod( \*,
        "for an object in a thin category and an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInThinCategory, IsObjectInMeetSemilatticeOfMultipleDifferences ],

  function( A, B )
    
    if IsObjectInMeetSemilatticeOfMultipleDifferences( A ) then
        TryNextMethod( );
    fi;
    
    return ( A - 0 ) * B;
    
end );

##
InstallMethod( \*,
        "for an object in a meet-semilattice of formal multiple differences and an object in a thin category",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences, IsObjectInThinCategory ],

  function( A, B )
    
    if IsObjectInMeetSemilatticeOfMultipleDifferences( B ) then
        TryNextMethod( );
    fi;
    
    return A * ( B - 0 );
    
end );

##
InstallMethod( \=,
        "for an object in a thin category and an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInThinCategory, IsObjectInMeetSemilatticeOfMultipleDifferences ],

  function( A, B )
    
    if IsObjectInMeetSemilatticeOfMultipleDifferences( A ) then
        TryNextMethod( );
    fi;
    
    return ( A - 0 ) = B;
    
end );

##
InstallMethod( \=,
        "for an object in a meet-semilattice of formal multiple differences and an object in a thin category",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences, IsObjectInThinCategory ],

  function( A, B )
    
    if IsObjectInMeetSemilatticeOfMultipleDifferences( B ) then
        TryNextMethod( );
    fi;
    
    return A = ( B - 0 );
    
end );

##
InstallMethod( ListOp,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
   ListOfObjectsOfDifferences );

##
InstallMethod( ListOp,
        "for an object in a meet-semilattice of formal multiple differences and a function",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences, IsFunction ],
        
  function( A, f )
    
    return List( ListOfObjectsOfDifferences( A ), f );
    
end );

##
InstallMethod( Iterator,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],
        
  A -> Iterator( List( A ) ) );

##
InstallMethod( ForAllOp,
        "for an object in a meet-semilattice of formal multiple differences and a function",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences, IsFunction ],
        
  function( A, f )
    
    return ForAll( List( A ), f );
    
end );

##
InstallMethod( ForAnyOp,
        "for an object in a meet-semilattice of formal multiple differences and a function",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences, IsFunction ],
        
  function( A, f )
    
    return ForAny( List( A ), f );
    
end );

##
InstallMethod( \[\],
        "for an object in a meet-semilattice of formal multiple differences and a positive integer",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences, IsPosInt ],
        
  function( A, pos )
    
    return ListOfObjectsOfDifferences( A )[pos];
    
end );

##
InstallMethod( Display,
        "for an object in a meet-semilattice of formal multiple differences",
        [ IsObjectInMeetSemilatticeOfMultipleDifferences ],

  function( A )
    
    Perform( ListOfObjectsOfDifferences( A ), Display );
    
    Print( "\nA formal multiple difference given by the above objects\n" );
    
end );
