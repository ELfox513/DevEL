package net.bytebuddy.description;

import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface DeclaredByType {

    /* loaded from: classes2.dex */
    public interface WithMandatoryDeclaration extends DeclaredByType {
        @Override // net.bytebuddy.description.DeclaredByType
        TypeDefinition getDeclaringType();
    }

    @MaybeNull
    TypeDefinition getDeclaringType();
}
