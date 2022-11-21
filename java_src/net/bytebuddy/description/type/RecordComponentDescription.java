package net.bytebuddy.description.type;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.GenericSignatureFormatError;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Collections;
import java.util.List;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.DeclaredByType;
import net.bytebuddy.description.NamedElement;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.annotation.AnnotationSource;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
import net.bytebuddy.jar.asm.signature.SignatureWriter;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.dispatcher.JavaDispatcher;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface RecordComponentDescription extends DeclaredByType.WithMandatoryDeclaration, NamedElement.WithDescriptor, AnnotationSource, ByteCodeElement.TypeDependant<InDefinedShape, Token> {

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase implements RecordComponentDescription {
        @Override // net.bytebuddy.description.type.RecordComponentDescription, net.bytebuddy.description.ByteCodeElement.TypeDependant
        public /* bridge */ /* synthetic */ Token asToken(ElementMatcher elementMatcher) {
            return asToken2((ElementMatcher<? super TypeDescription>) elementMatcher);
        }

        @Override // net.bytebuddy.description.NamedElement.WithDescriptor
        public String getDescriptor() {
            return getType().asErasure().getDescriptor();
        }

        public int hashCode() {
            return getActualName().hashCode();
        }

        public String toString() {
            return getType().getTypeName() + " " + getActualName();
        }

        @Override // net.bytebuddy.description.type.RecordComponentDescription, net.bytebuddy.description.ByteCodeElement.TypeDependant
        /* renamed from: asToken  reason: avoid collision after fix types in other method */
        public Token asToken2(ElementMatcher<? super TypeDescription> elementMatcher) {
            return new Token(getActualName(), (TypeDescription.Generic) getType().accept(new TypeDescription.Generic.Visitor.Substitutor.ForDetachment(elementMatcher)), getDeclaredAnnotations());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RecordComponentDescription)) {
                return false;
            }
            return getActualName().equals(((RecordComponentDescription) obj).getActualName());
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
    }

    /* loaded from: classes2.dex */
    public static class ForLoadedRecordComponent extends InDefinedShape.AbstractBase {
        private static final boolean ACCESS_CONTROLLER;
        public static final RecordComponent RECORD_COMPONENT;
        private final AnnotatedElement recordComponent;

        @JavaDispatcher.Proxied("java.lang.reflect.RecordComponent")
        /* loaded from: classes2.dex */
        public interface RecordComponent {
            @JavaDispatcher.Proxied("getAccessor")
            Method getAccessor(Object obj);

            @JavaDispatcher.Proxied("getAnnotatedType")
            AnnotatedElement getAnnotatedType(Object obj);

            @JavaDispatcher.Proxied("getDeclaringRecord")
            Class<?> getDeclaringRecord(Object obj);

            @MaybeNull
            @JavaDispatcher.Proxied("getGenericSignature")
            String getGenericSignature(Object obj);

            @JavaDispatcher.Proxied("getGenericType")
            Type getGenericType(Object obj);

            @JavaDispatcher.Proxied("getName")
            String getName(Object obj);

            @JavaDispatcher.Proxied("getType")
            Class<?> getType(Object obj);

            @JavaDispatcher.Instance
            @JavaDispatcher.Proxied("isInstance")
            boolean isInstance(Object obj);
        }

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = z;
                RECORD_COMPONENT = (RecordComponent) doPrivileged(JavaDispatcher.m14754of(RecordComponent.class));
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
                RECORD_COMPONENT = (RecordComponent) doPrivileged(JavaDispatcher.m14754of(RecordComponent.class));
            }
            RECORD_COMPONENT = (RecordComponent) doPrivileged(JavaDispatcher.m14754of(RecordComponent.class));
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        @Override // net.bytebuddy.description.NamedElement
        public String getActualName() {
            return RECORD_COMPONENT.getName(this.recordComponent);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return new AnnotationList.ForLoadedAnnotations(this.recordComponent.getDeclaredAnnotations());
        }

        @Override // net.bytebuddy.description.type.RecordComponentDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithDescriptor
        @MaybeNull
        public String getGenericSignature() {
            return RECORD_COMPONENT.getGenericSignature(this.recordComponent);
        }

        @Override // net.bytebuddy.description.type.RecordComponentDescription
        public TypeDescription.Generic getType() {
            return new TypeDescription.Generic.LazyProjection.OfRecordComponent(this.recordComponent);
        }

        /* renamed from: of */
        public static RecordComponentDescription m15200of(Object obj) {
            if (RECORD_COMPONENT.isInstance(obj)) {
                return new ForLoadedRecordComponent((AnnotatedElement) obj);
            }
            throw new IllegalArgumentException("Not a record component: " + obj);
        }

        @Override // net.bytebuddy.description.type.RecordComponentDescription.InDefinedShape.AbstractBase, net.bytebuddy.description.type.RecordComponentDescription, net.bytebuddy.description.type.RecordComponentDescription.InDefinedShape
        public MethodDescription.InDefinedShape getAccessor() {
            return new MethodDescription.ForLoadedMethod(RECORD_COMPONENT.getAccessor(this.recordComponent));
        }

        @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
        public TypeDescription getDeclaringType() {
            return TypeDescription.ForLoadedType.m15196of(RECORD_COMPONENT.getDeclaringRecord(this.recordComponent));
        }

        public ForLoadedRecordComponent(AnnotatedElement annotatedElement) {
            this.recordComponent = annotatedElement;
        }
    }

    /* loaded from: classes2.dex */
    public interface InDefinedShape extends RecordComponentDescription {

        /* loaded from: classes2.dex */
        public static abstract class AbstractBase extends AbstractBase implements InDefinedShape {
            @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
            public InDefinedShape asDefined() {
                return this;
            }

            @Override // net.bytebuddy.description.type.RecordComponentDescription, net.bytebuddy.description.type.RecordComponentDescription.InDefinedShape
            public MethodDescription.InDefinedShape getAccessor() {
                return (MethodDescription.InDefinedShape) getDeclaringType().getDeclaredMethods().filter(ElementMatchers.named(getActualName())).getOnly();
            }
        }

        @Override // 
        MethodDescription.InDefinedShape getAccessor();

        @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
        TypeDescription getDeclaringType();
    }

    /* loaded from: classes2.dex */
    public interface InGenericShape extends RecordComponentDescription {
        @Override // net.bytebuddy.description.type.RecordComponentDescription, net.bytebuddy.description.type.RecordComponentDescription.InDefinedShape
        MethodDescription.InGenericShape getAccessor();
    }

    /* loaded from: classes2.dex */
    public static class Latent extends InDefinedShape.AbstractBase {
        private final List<? extends AnnotationDescription> annotations;
        private final TypeDescription declaringType;
        private final String name;
        private final TypeDescription.Generic type;

        public Latent(TypeDescription typeDescription, Token token) {
            this(typeDescription, token.getName(), token.getType(), token.getAnnotations());
        }

        @Override // net.bytebuddy.description.NamedElement
        public String getActualName() {
            return this.name;
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return new AnnotationList.Explicit(this.annotations);
        }

        @Override // net.bytebuddy.description.type.RecordComponentDescription
        public TypeDescription.Generic getType() {
            return (TypeDescription.Generic) this.type.accept(TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15183of(this));
        }

        @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
        public TypeDescription getDeclaringType() {
            return this.declaringType;
        }

        public Latent(TypeDescription typeDescription, String str, TypeDescription.Generic generic, List<? extends AnnotationDescription> list) {
            this.declaringType = typeDescription;
            this.name = str;
            this.type = generic;
            this.annotations = list;
        }
    }

    /* loaded from: classes2.dex */
    public static class Token implements ByteCodeElement.Token<Token> {
        private final List<? extends AnnotationDescription> annotations;
        private transient /* synthetic */ int hashCode;
        private final String name;
        private final TypeDescription.Generic type;

        public Token(String str, TypeDescription.Generic generic) {
            this(str, generic, Collections.emptyList());
        }

        @Override // net.bytebuddy.description.ByteCodeElement.Token
        public /* bridge */ /* synthetic */ Token accept(TypeDescription.Generic.Visitor visitor) {
            return accept2((TypeDescription.Generic.Visitor<? extends TypeDescription.Generic>) visitor);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Token token = (Token) obj;
            return this.name.equals(token.name) && this.type.equals(token.type) && this.annotations.equals(token.annotations);
        }

        public AnnotationList getAnnotations() {
            return new AnnotationList.Explicit(this.annotations);
        }

        public String getName() {
            return this.name;
        }

        public TypeDescription.Generic getType() {
            return this.type;
        }

        public Token(String str, TypeDescription.Generic generic, List<? extends AnnotationDescription> list) {
            this.name = str;
            this.type = generic;
            this.annotations = list;
        }

        @Override // net.bytebuddy.description.ByteCodeElement.Token
        /* renamed from: accept  reason: avoid collision after fix types in other method */
        public Token accept2(TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
            return new Token(this.name, (TypeDescription.Generic) this.type.accept(visitor), this.annotations);
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int hashCode;
            if (this.hashCode != 0) {
                hashCode = 0;
            } else {
                hashCode = (((this.name.hashCode() * 31) + this.type.hashCode()) * 31) + this.annotations.hashCode();
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
        private final RecordComponentDescription recordComponentDescription;
        private final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

        @Override // net.bytebuddy.description.NamedElement
        public String getActualName() {
            return this.recordComponentDescription.getActualName();
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return this.recordComponentDescription.getDeclaredAnnotations();
        }

        @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
        public TypeDefinition getDeclaringType() {
            return this.declaringType;
        }

        @Override // net.bytebuddy.description.type.RecordComponentDescription
        public TypeDescription.Generic getType() {
            return (TypeDescription.Generic) this.recordComponentDescription.getType().accept(this.visitor);
        }

        @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
        public InDefinedShape asDefined() {
            return this.recordComponentDescription.asDefined();
        }

        @Override // net.bytebuddy.description.type.RecordComponentDescription, net.bytebuddy.description.type.RecordComponentDescription.InDefinedShape
        public MethodDescription.InGenericShape getAccessor() {
            return (MethodDescription.InGenericShape) this.declaringType.getDeclaredMethods().filter(ElementMatchers.named(getActualName())).getOnly();
        }

        public TypeSubstituting(TypeDescription.Generic generic, RecordComponentDescription recordComponentDescription, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
            this.declaringType = generic;
            this.recordComponentDescription = recordComponentDescription;
            this.visitor = visitor;
        }
    }

    @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
    Token asToken(ElementMatcher<? super TypeDescription> elementMatcher);

    MethodDescription getAccessor();

    TypeDescription.Generic getType();
}
