# SPDX-License-Identifier: GPL-2.0-or-later
# Locales: Locales, frames, coframes, meet semi-lattices of locally closed subsets, and Boolean algebras of constructible sets
#
# Declarations
#
# THIS FILE IS AUTOMATICALLY GENERATED, SEE CAP_project/CAP/gap/MethodRecord.gi

#! @Chapter Prosets (preordered sets)

#! @Section Add-methods

#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `AreIsomorphicForObjectsIfIsHomSetInhabited`.
#! $F: ( arg2, arg3 ) \mapsto \mathtt{AreIsomorphicForObjectsIfIsHomSetInhabited}(arg2, arg3)$.
#! @Returns nothing
#! @Arguments C, F
DeclareOperation( "AddAreIsomorphicForObjectsIfIsHomSetInhabited",
                  [ IsCapCategory, IsFunction ] );

DeclareOperation( "AddAreIsomorphicForObjectsIfIsHomSetInhabited",
                  [ IsCapCategory, IsFunction, IsInt ] );

DeclareOperation( "AddAreIsomorphicForObjectsIfIsHomSetInhabited",
                  [ IsCapCategory, IsList, IsInt ] );

DeclareOperation( "AddAreIsomorphicForObjectsIfIsHomSetInhabited",
                  [ IsCapCategory, IsList ] );

#! @Description
#! The arguments are a category $C$ and a function $F$.
#! This operation adds the given function $F$
#! to the category for the basic operation `UniqueMorphism`.
#! $F: ( arg2, arg3 ) \mapsto \mathtt{UniqueMorphism}(arg2, arg3)$.
#! @Returns nothing
#! @Arguments C, F
DeclareOperation( "AddUniqueMorphism",
                  [ IsCapCategory, IsFunction ] );

DeclareOperation( "AddUniqueMorphism",
                  [ IsCapCategory, IsFunction, IsInt ] );

DeclareOperation( "AddUniqueMorphism",
                  [ IsCapCategory, IsList, IsInt ] );

DeclareOperation( "AddUniqueMorphism",
                  [ IsCapCategory, IsList ] );
