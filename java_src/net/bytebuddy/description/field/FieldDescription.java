package net.bytebuddy.description.field;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.reflect.Field;
import java.lang.reflect.GenericSignatureFormatError;
import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.List;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.DeclaredByType;
import net.bytebuddy.description.ModifierReviewable;
import net.bytebuddy.description.NamedElement;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeVariableToken;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
import net.bytebuddy.jar.asm.signature.SignatureWriter;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface FieldDescription extends ByteCodeElement, DeclaredByType.WithMandatoryDeclaration, ModifierReviewable.ForFieldDescription, NamedElement.WithGenericName, ByteCodeElement.TypeDependant<InDefinedShape, Token> {
    @AlwaysNull
    public static final Object NO_DEFAULT_VALUE = null;

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase extends ModifierReviewable.AbstractBase implements FieldDescription {
        private transient /* synthetic */ int hashCode;

        @Override // net.bytebuddy.description.field.FieldDescription
        public SignatureToken asSignatureToken() {
            return new SignatureToken(getInternalName(), getType().asErasure());
        }

        @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
        public /* bridge */ /* synthetic */ Token asToken(ElementMatcher elementMatcher) {
            return asToken2((ElementMatcher<? super TypeDescription>) elementMatcher);
        }

        @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FieldDescription)) {
                return false;
            }
            FieldDescription fieldDescription = (FieldDescription) obj;
            return getName().equals(fieldDescription.getName()) && getDeclaringType().equals(fieldDescription.getDeclaringType());
        }

        @Override // net.bytebuddy.description.field.FieldDescription
        public int getActualModifiers() {
            return getModifiers() | (getDeclaredAnnotations().isAnnotationPresent(Deprecated.class) ? 131072 : 0);
        }

        @Override // net.bytebuddy.description.NamedElement
        public String getActualName() {
            return getName();
        }

        @Override // net.bytebuddy.description.NamedElement.WithDescriptor
        public String getDescriptor() {
            return getType().asErasure().getDescriptor();
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getInternalName() {
            return getName();
        }

        @CachedReturnPlugin.Enhance("hashCode")
        @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public int hashCode() {
            int hashCode = this.hashCode != 0 ? 0 : getDeclaringType().hashCode() + ((getName().hashCode() + 17) * 31);
            if (hashCode == 0) {
                return this.hashCode;
            }
            this.hashCode = hashCode;
            return hashCode;
        }

        @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
        /* renamed from: asToken  reason: avoid collision after fix types in other method */
        public Token asToken2(ElementMatcher<? super TypeDescription> elementMatcher) {
            return new Token(getName(), getModifiers(), (TypeDescription.Generic) getType().accept(new TypeDescription.Generic.Visitor.Substitutor.ForDetachment(elementMatcher)), getDeclaredAnnotations());
        }

        @Override // net.bytebuddy.description.NamedElement.WithGenericName
        @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public String toGenericString() {
            StringBuilder sb = new StringBuilder();
            if (getModifiers() != 0) {
                sb.append(Modifier.toString(getModifiers()));
                sb.append(' ');
            }
            sb.append(getType().getActualName());
            sb.append(' ');
            sb.append(getDeclaringType().asErasure().getActualName());
            sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
            sb.append(getName());
            return sb.toString();
        }

        @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (getModifiers() != 0) {
                sb.append(Modifier.toString(getModifiers()));
                sb.append(' ');
            }
            sb.append(getType().asErasure().getActualName());
            sb.append(' ');
            sb.append(getDeclaringType().asErasure().getActualName());
            sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
            sb.append(getName());
            return sb.toString();
        }

        @Override // net.bytebuddy.description.NamedElement.WithDescriptor
        @MaybeNull
        public String getGenericSignature() {
            TypeDescription.Generic type = getType();
            try {
                if (type.getSort().isNonGeneric()) {
                    return NamedElement.WithDescriptor.NON_GENERIC_SIGNATURE;
                }
                return ((SignatureVisitor) type.accept(new TypeDescription.Generic.Visitor.ForSignatureVisitor(new SignatureWriter()))).toString();
            } catch (GenericSignatureFormatError unused) {
                return NamedElement.WithDescriptor.NON_GENERIC_SIGNATURE;
            }
        }

        @Override // net.bytebuddy.description.ByteCodeElement
        @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public boolean isAccessibleTo(TypeDescription typeDescription) {
            if (!isPublic() && !typeDescription.equals(getDeclaringType().asErasure()) && ((isPrivate() || !typeDescription.isSamePackage(getDeclaringType().asErasure())) && (!isPrivate() || !typeDescription.isNestMateOf(getDeclaringType().asErasure())))) {
                return false;
            }
            return true;
        }

        @Override // net.bytebuddy.description.ByteCodeElement
        @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public boolean isVisibleTo(TypeDescription typeDescription) {
            if (getDeclaringType().asErasure().isVisibleTo(typeDescription) && (isPublic() || typeDescription.equals(getDeclaringType().asErasure()) || ((isProtected() && getDeclaringType().asErasure().isAssignableFrom(typeDescription)) || ((!isPrivate() && typeDescription.isSamePackage(getDeclaringType().asErasure())) || (isPrivate() && typeDescription.isNestMateOf(getDeclaringType().asErasure())))))) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public static class ForLoadedField extends InDefinedShape.AbstractBase {
        private transient /* synthetic */ AnnotationList declaredAnnotations;
        private final Field field;

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        @CachedReturnPlugin.Enhance("declaredAnnotations")
        public AnnotationList getDeclaredAnnotations() {
            AnnotationList.ForLoadedAnnotations forLoadedAnnotations = this.declaredAnnotations != null ? null : new AnnotationList.ForLoadedAnnotations(this.field.getDeclaredAnnotations());
            if (forLoadedAnnotations == null) {
                return this.declaredAnnotations;
            }
            this.declaredAnnotations = forLoadedAnnotations;
            return forLoadedAnnotations;
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return this.field.getModifiers();
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return this.field.getName();
        }

        @Override // net.bytebuddy.description.ModifierReviewable.AbstractBase, net.bytebuddy.description.ModifierReviewable
        public boolean isSynthetic() {
            return this.field.isSynthetic();
        }

        @Override // net.bytebuddy.description.DeclaredByType
        public TypeDescription getDeclaringType() {
            return TypeDescription.ForLoadedType.m15196of(this.field.getDeclaringClass());
        }

        @Override // net.bytebuddy.description.field.FieldDescription
        public TypeDescription.Generic getType() {
            if (TypeDescription.AbstractBase.RAW_TYPES) {
                return TypeDescription.Generic.OfNonGenericType.ForLoadedType.m15189of(this.field.getType());
            }
            return new TypeDescription.Generic.LazyProjection.ForLoadedFieldType(this.field);
        }

        public ForLoadedField(Field field) {
            this.field = field;
        }
    }

    /* loaded from: classes2.dex */
    public interface InDefinedShape extends FieldDescription {

        /* loaded from: classes2.dex */
        public static abstract class AbstractBase extends AbstractBase implements InDefinedShape {
            @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
            public InDefinedShape asDefined() {
                return this;
            }
        }

        @Override // net.bytebuddy.description.DeclaredByType
        TypeDescription getDeclaringType();
    }

    /* loaded from: classes2.dex */
    public interface InGenericShape extends FieldDescription {
        @Override // net.bytebuddy.description.DeclaredByType
        TypeDescription.Generic getDeclaringType();
    }

    /* loaded from: classes2.dex */
    public static class Latent extends InDefinedShape.AbstractBase {
        private final List<? extends AnnotationDescription> declaredAnnotations;
        private final TypeDescription declaringType;
        private final TypeDescription.Generic fieldType;
        private final int modifiers;
        private final String name;

        public Latent(TypeDescription typeDescription, Token token) {
            this(typeDescription, token.getName(), token.getModifiers(), token.getType(), token.getAnnotations());
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return new AnnotationList.Explicit(this.declaredAnnotations);
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return this.modifiers;
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return this.name;
        }

        @Override // net.bytebuddy.description.field.FieldDescription
        public TypeDescription.Generic getType() {
            return (TypeDescription.Generic) this.fieldType.accept(TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15186of(this));
        }

        @Override // net.bytebuddy.description.DeclaredByType
        public TypeDescription getDeclaringType() {
            return this.declaringType;
        }

        public Latent(TypeDescription typeDescription, String str, int i, TypeDescription.Generic generic, List<? extends AnnotationDescription> list) {
            this.declaringType = typeDescription;
            this.name = str;
            this.modifiers = i;
            this.fieldType = generic;
            this.declaredAnnotations = list;
        }
    }

    /* loaded from: classes2.dex */
    public static class SignatureToken {
        private transient /* synthetic */ int hashCode;
        private final String name;
        private final TypeDescription type;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SignatureToken)) {
                return false;
            }
            SignatureToken signatureToken = (SignatureToken) obj;
            return this.name.equals(signatureToken.name) && this.type.equals(signatureToken.type);
        }

        public String getName() {
            return this.name;
        }

        public TypeDescription getType() {
            return this.type;
        }

        public String toString() {
            return this.type + " " + this.name;
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int hashCode;
            if (this.hashCode != 0) {
                hashCode = 0;
            } else {
                hashCode = (this.name.hashCode() * 31) + this.type.hashCode();
            }
            if (hashCode == 0) {
                return this.hashCode;
            }
            this.hashCode = hashCode;
            return hashCode;
        }

        public SignatureToken(String str, TypeDescription typeDescription) {
            this.name = str;
            this.type = typeDescription;
        }
    }

    /* loaded from: classes2.dex */
    public static class Token implements ByteCodeElement.Token<Token> {
        private final List<? extends AnnotationDescription> annotations;
        private transient /* synthetic */ int hashCode;
        private final int modifiers;
        private final String name;
        private final TypeDescription.Generic type;

        public Token(String str, int i, TypeDescription.Generic generic) {
            this(str, i, generic, Collections.emptyList());
        }

        @Override // net.bytebuddy.description.ByteCodeElement.Token
        public /* bridge */ /* synthetic */ Token accept(TypeDescription.Generic.Visitor visitor) {
            return accept2((TypeDescription.Generic.Visitor<? extends TypeDescription.Generic>) visitor);
        }

        public SignatureToken asSignatureToken(TypeDescription typeDescription) {
            return new SignatureToken(this.name, (TypeDescription) this.type.accept(new TypeDescription.Generic.Visitor.Reducing(typeDescription, new TypeVariableToken[0])));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Token token = (Token) obj;
            return this.modifiers == token.modifiers && this.name.equals(token.name) && this.type.equals(token.type) && this.annotations.equals(token.annotations);
        }

        public AnnotationList getAnnotations() {
            return new AnnotationList.Explicit(this.annotations);
        }

        public int getModifiers() {
            return this.modifiers;
        }

        public String getName() {
            return this.name;
        }

        public TypeDescription.Generic getType() {
            return this.type;
        }

        public Token(String str, int i, TypeDescription.Generic generic, List<? extends AnnotationDescription> list) {
            this.name = str;
            this.modifiers = i;
            this.type = generic;
            this.annotations = list;
        }

        @Override // net.bytebuddy.description.ByteCodeElement.Token
        /* renamed from: accept  reason: avoid collision after fix types in other method */
        public Token accept2(TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
            return new Token(this.name, this.modifiers, (TypeDescription.Generic) this.type.accept(visitor), this.annotations);
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int hashCode;
            if (this.hashCode != 0) {
                hashCode = 0;
            } else {
                hashCode = (((((this.name.hashCode() * 31) + this.modifiers) * 31) + this.type.hashCode()) * 31) + this.annotations.hashCode();
            }
            if (hashCode == 0) {
                return this.hashCode;
            }
            this.hashCode = hashCode;
            return hashCode;
        }
    }

    /* loaded from: classes2.dex */
    public static class TypeSubstituting extends AbstractBase implements InGenericShape {
        private final TypeDescription.Generic declaringType;
        private final FieldDescription fieldDescription;
        private final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return this.fieldDescription.getDeclaredAnnotations();
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return this.fieldDescription.getModifiers();
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return this.fieldDescription.getName();
        }

        @Override // net.bytebuddy.description.field.FieldDescription
        public TypeDescription.Generic getType() {
            return (TypeDescription.Generic) this.fieldDescription.getType().accept(this.visitor);
        }

        @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
        public InDefinedShape asDefined() {
            return this.fieldDescription.asDefined();
        }

        @Override // net.bytebuddy.description.DeclaredByType
        public TypeDescription.Generic getDeclaringType() {
            return this.declaringType;
        }

        public TypeSubstituting(TypeDescription.Generic generic, FieldDescription fieldDescription, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
            this.declaringType = generic;
            this.fieldDescription = fieldDescription;
            this.visitor = visitor;
        }
    }

    SignatureToken asSignatureToken();

    int getActualModifiers();

    TypeDescription.Generic getType();
}
