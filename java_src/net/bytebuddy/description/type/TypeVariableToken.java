package net.bytebuddy.description.type;

import java.util.Collections;
import java.util.List;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public class TypeVariableToken implements ByteCodeElement.Token<TypeVariableToken> {
    private final List<? extends AnnotationDescription> annotations;
    private final List<? extends TypeDescription.Generic> bounds;
    private transient /* synthetic */ int hashCode;
    private final String symbol;

    public TypeVariableToken(String str, List<? extends TypeDescription.Generic> list) {
        this(str, list, Collections.emptyList());
    }

    @Override // net.bytebuddy.description.ByteCodeElement.Token
    public /* bridge */ /* synthetic */ TypeVariableToken accept(TypeDescription.Generic.Visitor visitor) {
        return accept2((TypeDescription.Generic.Visitor<? extends TypeDescription.Generic>) visitor);
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypeVariableToken)) {
            return false;
        }
        TypeVariableToken typeVariableToken = (TypeVariableToken) obj;
        return this.symbol.equals(typeVariableToken.symbol) && this.bounds.equals(typeVariableToken.bounds) && this.annotations.equals(typeVariableToken.annotations);
    }

    public AnnotationList getAnnotations() {
        return new AnnotationList.Explicit(this.annotations);
    }

    public TypeList.Generic getBounds() {
        return new TypeList.Generic.Explicit(this.bounds);
    }

    public String getSymbol() {
        return this.symbol;
    }

    public String toString() {
        return this.symbol;
    }

    public TypeVariableToken(String str, List<? extends TypeDescription.Generic> list, List<? extends AnnotationDescription> list2) {
        this.symbol = str;
        this.bounds = list;
        this.annotations = list2;
    }

    /* renamed from: of */
    public static TypeVariableToken m15177of(TypeDescription.Generic generic, ElementMatcher<? super TypeDescription> elementMatcher) {
        return new TypeVariableToken(generic.getSymbol(), generic.getUpperBounds().accept(new TypeDescription.Generic.Visitor.Substitutor.ForDetachment(elementMatcher)), generic.getDeclaredAnnotations());
    }

    @Override // net.bytebuddy.description.ByteCodeElement.Token
    /* renamed from: accept  reason: avoid collision after fix types in other method */
    public TypeVariableToken accept2(TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
        return new TypeVariableToken(this.symbol, getBounds().accept(visitor), this.annotations);
    }

    @CachedReturnPlugin.Enhance("hashCode")
    public int hashCode() {
        int hashCode;
        if (this.hashCode != 0) {
            hashCode = 0;
        } else {
            hashCode = (((this.symbol.hashCode() * 31) + this.bounds.hashCode()) * 31) + this.annotations.hashCode();
        }
        if (hashCode == 0) {
            return this.hashCode;
        }
        this.hashCode = hashCode;
        return hashCode;
    }
}
