package net.bytebuddy.description.method;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.DeclaredByType;
import net.bytebuddy.description.ModifierReviewable;
import net.bytebuddy.description.NamedElement;
import net.bytebuddy.description.TypeVariableSource;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.annotation.AnnotationValue;
import net.bytebuddy.description.enumeration.EnumerationDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.modifier.ModifierContributor;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.description.type.TypeVariableToken;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.dispatcher.JavaDispatcher;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes2.dex */
public interface MethodDescription extends TypeVariableSource, DeclaredByType.WithMandatoryDeclaration, ModifierReviewable.ForMethodDescription, NamedElement.WithGenericName, ByteCodeElement, ByteCodeElement.TypeDependant<InDefinedShape, Token> {
    public static final String CONSTRUCTOR_INTERNAL_NAME = "<init>";
    public static final String TYPE_INITIALIZER_INTERNAL_NAME = "<clinit>";
    public static final int TYPE_INITIALIZER_MODIFIER = 8;
    @AlwaysNull
    public static final InDefinedShape UNDEFINED = null;

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase extends TypeVariableSource.AbstractBase implements MethodDescription {
        private static final int SOURCE_MODIFIERS = 1343;
        private transient /* synthetic */ int hashCode;

        private static boolean isAnnotationType(TypeDescription typeDescription, AnnotationDescription... annotationDescriptionArr) {
            for (AnnotationDescription annotationDescription : annotationDescriptionArr) {
                if (!annotationDescription.getAnnotationType().equals(typeDescription)) {
                    return false;
                }
            }
            return true;
        }

        private static boolean isEnumerationType(TypeDescription typeDescription, EnumerationDescription... enumerationDescriptionArr) {
            for (EnumerationDescription enumerationDescription : enumerationDescriptionArr) {
                if (!enumerationDescription.getEnumerationType().equals(typeDescription)) {
                    return false;
                }
            }
            return true;
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public <T> T accept(TypeVariableSource.Visitor<T> visitor) {
            return visitor.onMethod(asDefined());
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public SignatureToken asSignatureToken() {
            return new SignatureToken(getInternalName(), getReturnType().asErasure(), getParameters().asTypeList().asErasures());
        }

        @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
        public /* bridge */ /* synthetic */ Token asToken(ElementMatcher elementMatcher) {
            return asToken2((ElementMatcher<? super TypeDescription>) elementMatcher);
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public TypeToken asTypeToken() {
            return new TypeToken(getReturnType().asErasure(), getParameters().asTypeList().asErasures());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MethodDescription)) {
                return false;
            }
            MethodDescription methodDescription = (MethodDescription) obj;
            return getInternalName().equals(methodDescription.getInternalName()) && getDeclaringType().equals(methodDescription.getDeclaringType()) && getReturnType().asErasure().equals(methodDescription.getReturnType().asErasure()) && getParameters().asTypeList().asErasures().equals(methodDescription.getParameters().asTypeList().asErasures());
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public int getActualModifiers() {
            return getModifiers() | (getDeclaredAnnotations().isAnnotationPresent(Deprecated.class) ? 131072 : 0);
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        @MaybeNull
        public <T> T getDefaultValue(Class<T> cls) {
            return cls.cast(getDefaultValue());
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public int getStackSize() {
            return getParameters().asTypeList().getStackSize() + (!isStatic());
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isConstantBootstrap() {
            return isBootstrap(TypeDescription.CLASS);
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isConstructor() {
            return MethodDescription.CONSTRUCTOR_INTERNAL_NAME.equals(getInternalName());
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isDefaultMethod() {
            return (isAbstract() || isBridge() || !getDeclaringType().isInterface()) ? false : true;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isDefaultValue() {
            return !isConstructor() && !isStatic() && getReturnType().asErasure().isAnnotationReturnType() && getParameters().isEmpty();
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public boolean isGenerified() {
            return !getTypeVariables().isEmpty();
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public boolean isInferrable() {
            return true;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isInvokeBootstrap() {
            TypeDescription asErasure = getReturnType().asErasure();
            if (isMethod()) {
                if (!isStatic()) {
                    return false;
                }
                JavaType javaType = JavaType.CALL_SITE;
                if (!javaType.getTypeStub().isAssignableFrom(asErasure) && !javaType.getTypeStub().isAssignableTo(asErasure)) {
                    return false;
                }
            }
            if (!isConstructor() || JavaType.CALL_SITE.getTypeStub().isAssignableFrom(getDeclaringType().asErasure())) {
                return isBootstrap(JavaType.METHOD_TYPE.getTypeStub());
            }
            return false;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isMethod() {
            return (isConstructor() || isTypeInitializer()) ? false : true;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isTypeInitializer() {
            return MethodDescription.TYPE_INITIALIZER_INTERNAL_NAME.equals(getInternalName());
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isVirtual() {
            return (isConstructor() || isPrivate() || isStatic() || isTypeInitializer()) ? false : true;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean represents(Method method) {
            return equals(new ForLoadedMethod(method));
        }

        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        private boolean isBootstrap(TypeDescription typeDescription) {
            TypeList asErasures = getParameters().asTypeList().asErasures();
            int size = asErasures.size();
            if (size == 0) {
                return false;
            }
            if (size != 1) {
                if (size != 2) {
                    if (size != 3) {
                        if (!JavaType.METHOD_HANDLES_LOOKUP.getTypeStub().isAssignableTo(asErasures.get(0))) {
                            return false;
                        }
                        if ((!asErasures.get(1).represents(Object.class) && !asErasures.get(1).represents(String.class)) || !asErasures.get(2).isAssignableFrom(typeDescription)) {
                            return false;
                        }
                        return true;
                    } else if (!JavaType.METHOD_HANDLES_LOOKUP.getTypeStub().isAssignableTo(asErasures.get(0))) {
                        return false;
                    } else {
                        if (!asErasures.get(1).represents(Object.class) && !asErasures.get(1).represents(String.class)) {
                            return false;
                        }
                        if ((!asErasures.get(2).isArray() || !asErasures.get(2).getComponentType().isAssignableFrom(typeDescription)) && !asErasures.get(2).isAssignableFrom(typeDescription)) {
                            return false;
                        }
                        return true;
                    }
                } else if (!JavaType.METHOD_HANDLES_LOOKUP.getTypeStub().isAssignableTo(asErasures.get(0)) || !asErasures.get(1).represents(Object[].class)) {
                    return false;
                } else {
                    return true;
                }
            }
            return asErasures.getOnly().represents(Object[].class);
        }

        @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
        /* renamed from: asToken  reason: avoid collision after fix types in other method */
        public Token asToken2(ElementMatcher<? super TypeDescription> elementMatcher) {
            TypeDescription.Generic receiverType = getReceiverType();
            return new Token(getInternalName(), getModifiers(), getTypeVariables().asTokenList(elementMatcher), (TypeDescription.Generic) getReturnType().accept(new TypeDescription.Generic.Visitor.Substitutor.ForDetachment(elementMatcher)), getParameters().asTokenList(elementMatcher), getExceptionTypes().accept(new TypeDescription.Generic.Visitor.Substitutor.ForDetachment(elementMatcher)), getDeclaredAnnotations(), getDefaultValue(), receiverType == null ? TypeDescription.Generic.UNDEFINED : (TypeDescription.Generic) receiverType.accept(new TypeDescription.Generic.Visitor.Substitutor.ForDetachment(elementMatcher)));
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public int getActualModifiers(boolean z) {
            if (z) {
                return getActualModifiers() & (-1281);
            }
            return (getActualModifiers() & (-257)) | 1024;
        }

        @Override // net.bytebuddy.description.NamedElement.WithDescriptor
        public String getDescriptor() {
            StringBuilder sb = new StringBuilder();
            sb.append('(');
            for (TypeDescription typeDescription : getParameters().asTypeList().asErasures()) {
                sb.append(typeDescription.getDescriptor());
            }
            sb.append(')');
            sb.append(getReturnType().asErasure().getDescriptor());
            return sb.toString();
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00be A[Catch: GenericSignatureFormatError -> 0x00f5, TryCatch #0 {GenericSignatureFormatError -> 0x00f5, blocks: (B:2:0x0000, B:3:0x0010, B:5:0x0016, B:6:0x002c, B:8:0x0032, B:10:0x003c, B:12:0x0045, B:11:0x0041, B:14:0x004f, B:15:0x005b, B:17:0x0061, B:19:0x0075, B:24:0x0084, B:26:0x0096, B:31:0x00a4, B:33:0x00be, B:34:0x00c2, B:36:0x00c8, B:38:0x00dc, B:44:0x00ed, B:45:0x00f2), top: B:49:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00ed A[Catch: GenericSignatureFormatError -> 0x00f5, TryCatch #0 {GenericSignatureFormatError -> 0x00f5, blocks: (B:2:0x0000, B:3:0x0010, B:5:0x0016, B:6:0x002c, B:8:0x0032, B:10:0x003c, B:12:0x0045, B:11:0x0041, B:14:0x004f, B:15:0x005b, B:17:0x0061, B:19:0x0075, B:24:0x0084, B:26:0x0096, B:31:0x00a4, B:33:0x00be, B:34:0x00c2, B:36:0x00c8, B:38:0x00dc, B:44:0x00ed, B:45:0x00f2), top: B:49:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00f2 A[Catch: GenericSignatureFormatError -> 0x00f5, TRY_LEAVE, TryCatch #0 {GenericSignatureFormatError -> 0x00f5, blocks: (B:2:0x0000, B:3:0x0010, B:5:0x0016, B:6:0x002c, B:8:0x0032, B:10:0x003c, B:12:0x0045, B:11:0x0041, B:14:0x004f, B:15:0x005b, B:17:0x0061, B:19:0x0075, B:24:0x0084, B:26:0x0096, B:31:0x00a4, B:33:0x00be, B:34:0x00c2, B:36:0x00c8, B:38:0x00dc, B:44:0x00ed, B:45:0x00f2), top: B:49:0x0000 }] */
        @Override // net.bytebuddy.description.NamedElement.WithDescriptor
        @net.bytebuddy.utility.nullability.MaybeNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String getGenericSignature() {
            /*
                r8 = this;
                net.bytebuddy.jar.asm.signature.SignatureWriter r0 = new net.bytebuddy.jar.asm.signature.SignatureWriter     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                r0.<init>()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeList$Generic r1 = r8.getTypeVariables()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                r2 = 1
                r3 = 0
                r4 = 0
            L10:
                boolean r5 = r1.hasNext()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                if (r5 == 0) goto L4f
                java.lang.Object r4 = r1.next()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeDescription$Generic r4 = (net.bytebuddy.description.type.TypeDescription.Generic) r4     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                java.lang.String r5 = r4.getSymbol()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                r0.visitFormalTypeParameter(r5)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeList$Generic r4 = r4.getUpperBounds()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                r5 = 1
            L2c:
                boolean r6 = r4.hasNext()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                if (r6 == 0) goto L4d
                java.lang.Object r6 = r4.next()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeDescription$Generic r6 = (net.bytebuddy.description.type.TypeDescription.Generic) r6     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor r7 = new net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                if (r5 == 0) goto L41
                net.bytebuddy.jar.asm.signature.SignatureVisitor r5 = r0.visitClassBound()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                goto L45
            L41:
                net.bytebuddy.jar.asm.signature.SignatureVisitor r5 = r0.visitInterfaceBound()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
            L45:
                r7.<init>(r5)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                r6.accept(r7)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                r5 = 0
                goto L2c
            L4d:
                r4 = 1
                goto L10
            L4f:
                net.bytebuddy.description.method.ParameterList r1 = r8.getParameters()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeList$Generic r1 = r1.asTypeList()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
            L5b:
                boolean r5 = r1.hasNext()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                if (r5 == 0) goto L84
                java.lang.Object r5 = r1.next()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeDescription$Generic r5 = (net.bytebuddy.description.type.TypeDescription.Generic) r5     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor r6 = new net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.jar.asm.signature.SignatureVisitor r7 = r0.visitParameterType()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                r6.<init>(r7)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                r5.accept(r6)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                if (r4 != 0) goto L82
                net.bytebuddy.description.type.TypeDefinition$Sort r4 = r5.getSort()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                boolean r4 = r4.isNonGeneric()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                if (r4 != 0) goto L80
                goto L82
            L80:
                r4 = 0
                goto L5b
            L82:
                r4 = 1
                goto L5b
            L84:
                net.bytebuddy.description.type.TypeDescription$Generic r1 = r8.getReturnType()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor r5 = new net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.jar.asm.signature.SignatureVisitor r6 = r0.visitReturnType()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                r5.<init>(r6)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                r1.accept(r5)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                if (r4 != 0) goto La3
                net.bytebuddy.description.type.TypeDefinition$Sort r1 = r1.getSort()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                boolean r1 = r1.isNonGeneric()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                if (r1 != 0) goto La1
                goto La3
            La1:
                r1 = 0
                goto La4
            La3:
                r1 = 1
            La4:
                net.bytebuddy.description.type.TypeList$Generic r4 = r8.getExceptionTypes()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeDefinition$Sort r5 = net.bytebuddy.description.type.TypeDefinition.Sort.NON_GENERIC     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.matcher.ElementMatcher$Junction r5 = net.bytebuddy.matcher.ElementMatchers.ofSort(r5)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.matcher.ElementMatcher$Junction r5 = net.bytebuddy.matcher.ElementMatchers.not(r5)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.matcher.FilterableList r5 = r4.filter(r5)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeList$Generic r5 = (net.bytebuddy.description.type.TypeList.Generic) r5     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                boolean r5 = r5.isEmpty()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                if (r5 != 0) goto Leb
                java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
            Lc2:
                boolean r5 = r4.hasNext()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                if (r5 == 0) goto Leb
                java.lang.Object r5 = r4.next()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeDescription$Generic r5 = (net.bytebuddy.description.type.TypeDescription.Generic) r5     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor r6 = new net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                net.bytebuddy.jar.asm.signature.SignatureVisitor r7 = r0.visitExceptionType()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                r6.<init>(r7)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                r5.accept(r6)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                if (r1 != 0) goto Le9
                net.bytebuddy.description.type.TypeDefinition$Sort r1 = r5.getSort()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                boolean r1 = r1.isNonGeneric()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                if (r1 != 0) goto Le7
                goto Le9
            Le7:
                r1 = 0
                goto Lc2
            Le9:
                r1 = 1
                goto Lc2
            Leb:
                if (r1 == 0) goto Lf2
                java.lang.String r0 = r0.toString()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
                goto Lf4
            Lf2:
                java.lang.String r0 = net.bytebuddy.description.NamedElement.WithDescriptor.NON_GENERIC_SIGNATURE     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lf5
            Lf4:
                return r0
            Lf5:
                java.lang.String r0 = net.bytebuddy.description.NamedElement.WithDescriptor.NON_GENERIC_SIGNATURE
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.description.method.MethodDescription.AbstractBase.getGenericSignature():java.lang.String");
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int hashCode;
            if (this.hashCode != 0) {
                hashCode = 0;
            } else {
                hashCode = ((((((getDeclaringType().hashCode() + 17) * 31) + getInternalName().hashCode()) * 31) + getReturnType().asErasure().hashCode()) * 31) + getParameters().asTypeList().asErasures().hashCode();
            }
            if (hashCode == 0) {
                return this.hashCode;
            }
            this.hashCode = hashCode;
            return hashCode;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isConstantBootstrap(List<? extends TypeDefinition> list) {
            return isConstantBootstrap() && isBootstrapping(list);
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean represents(Constructor<?> constructor) {
            return equals(new ForLoadedConstructor(constructor));
        }

        @Override // net.bytebuddy.description.NamedElement.WithGenericName
        public String toGenericString() {
            StringBuilder sb = new StringBuilder();
            int modifiers = getModifiers() & SOURCE_MODIFIERS;
            if (modifiers != 0) {
                sb.append(Modifier.toString(modifiers));
                sb.append(' ');
            }
            if (isMethod()) {
                sb.append(getReturnType().getActualName());
                sb.append(' ');
                sb.append(getDeclaringType().asErasure().getActualName());
                sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
            }
            sb.append(getName());
            sb.append('(');
            boolean z = true;
            boolean z2 = true;
            for (TypeDescription.Generic generic : getParameters().asTypeList()) {
                if (!z2) {
                    sb.append(',');
                } else {
                    z2 = false;
                }
                sb.append(generic.getActualName());
            }
            sb.append(')');
            TypeList.Generic exceptionTypes = getExceptionTypes();
            if (!exceptionTypes.isEmpty()) {
                sb.append(" throws ");
                for (TypeDescription.Generic generic2 : exceptionTypes) {
                    if (!z) {
                        sb.append(',');
                    } else {
                        z = false;
                    }
                    sb.append(generic2.getActualName());
                }
            }
            return sb.toString();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            int modifiers = getModifiers() & SOURCE_MODIFIERS;
            if (modifiers != 0) {
                sb.append(Modifier.toString(modifiers));
                sb.append(' ');
            }
            if (isMethod()) {
                sb.append(getReturnType().asErasure().getActualName());
                sb.append(' ');
                sb.append(getDeclaringType().asErasure().getActualName());
                sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
            }
            sb.append(getName());
            sb.append('(');
            boolean z = true;
            boolean z2 = true;
            for (TypeDescription typeDescription : getParameters().asTypeList().asErasures()) {
                if (!z2) {
                    sb.append(',');
                } else {
                    z2 = false;
                }
                sb.append(typeDescription.getActualName());
            }
            sb.append(')');
            TypeList asErasures = getExceptionTypes().asErasures();
            if (!asErasures.isEmpty()) {
                sb.append(" throws ");
                for (TypeDescription typeDescription2 : asErasures) {
                    if (!z) {
                        sb.append(',');
                    } else {
                        z = false;
                    }
                    sb.append(typeDescription2.getActualName());
                }
            }
            return sb.toString();
        }

        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        private boolean isBootstrapping(List<? extends TypeDefinition> list) {
            TypeList asErasures = getParameters().asTypeList().asErasures();
            if (asErasures.size() < 4) {
                if (list.isEmpty()) {
                    return true;
                }
                if (!asErasures.get(asErasures.size() - 1).isArray()) {
                    return false;
                }
                for (TypeDefinition typeDefinition : list) {
                    if (!typeDefinition.asErasure().isAssignableTo(asErasures.get(asErasures.size() - 1).getComponentType())) {
                        return false;
                    }
                }
                return true;
            }
            Iterator<TypeDescription> it = asErasures.subList(3, asErasures.size()).iterator();
            for (TypeDefinition typeDefinition2 : list) {
                if (!it.hasNext()) {
                    return false;
                }
                TypeDescription next = it.next();
                if (!it.hasNext() && next.isArray()) {
                    return true;
                }
                if (!typeDefinition2.asErasure().isAssignableTo(next)) {
                    return false;
                }
            }
            if (!it.hasNext()) {
                return true;
            }
            if (!it.next().isArray() || it.hasNext()) {
                return false;
            }
            return true;
        }

        @Override // net.bytebuddy.description.NamedElement
        public String getActualName() {
            if (isMethod()) {
                return getName();
            }
            return "";
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        @MaybeNull
        public TypeVariableSource getEnclosingSource() {
            if (isStatic()) {
                return TypeVariableSource.UNDEFINED;
            }
            return getDeclaringType().asErasure();
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            if (isMethod()) {
                return getInternalName();
            }
            return getDeclaringType().asErasure().getName();
        }

        @Override // net.bytebuddy.description.ByteCodeElement
        public boolean isAccessibleTo(TypeDescription typeDescription) {
            if (((!isVirtual() && !getDeclaringType().asErasure().isVisibleTo(typeDescription)) || (!isPublic() && !typeDescription.equals(getDeclaringType().asErasure()) && (isPrivate() || !typeDescription.isSamePackage(getDeclaringType().asErasure())))) && (!isPrivate() || !typeDescription.isNestMateOf(getDeclaringType().asErasure()))) {
                return false;
            }
            return true;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isBridgeCompatible(TypeToken typeToken) {
            TypeList asErasures = getParameters().asTypeList().asErasures();
            List<TypeDescription> parameterTypes = typeToken.getParameterTypes();
            if (asErasures.size() != parameterTypes.size()) {
                return false;
            }
            for (int i = 0; i < asErasures.size(); i++) {
                if (!asErasures.get(i).equals(parameterTypes.get(i)) && (asErasures.get(i).isPrimitive() || parameterTypes.get(i).isPrimitive())) {
                    return false;
                }
            }
            TypeDescription asErasure = getReturnType().asErasure();
            TypeDescription returnType = typeToken.getReturnType();
            if (!asErasure.equals(returnType) && (asErasure.isPrimitive() || returnType.isPrimitive())) {
                return false;
            }
            return true;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isInvokableOn(TypeDescription typeDescription) {
            if (!isStatic() && !isTypeInitializer() && isVisibleTo(typeDescription) && (!isVirtual() ? getDeclaringType().asErasure().equals(typeDescription) : getDeclaringType().asErasure().isAssignableFrom(typeDescription))) {
                return true;
            }
            return false;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isSpecializableFor(TypeDescription typeDescription) {
            if (isStatic()) {
                return false;
            }
            if (!isPrivate() && !isConstructor()) {
                if (isAbstract() || !getDeclaringType().asErasure().isAssignableFrom(typeDescription)) {
                    return false;
                }
                return true;
            }
            return getDeclaringType().equals(typeDescription);
        }

        @Override // net.bytebuddy.description.ByteCodeElement
        public boolean isVisibleTo(TypeDescription typeDescription) {
            if ((!isVirtual() && !getDeclaringType().asErasure().isVisibleTo(typeDescription)) || (!isPublic() && !typeDescription.equals(getDeclaringType().asErasure()) && ((!isProtected() || !getDeclaringType().asErasure().isAssignableFrom(typeDescription)) && ((isPrivate() || !typeDescription.isSamePackage(getDeclaringType().asErasure())) && (!isPrivate() || !typeDescription.isNestMateOf(getDeclaringType().asErasure())))))) {
                return false;
            }
            return true;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public int getActualModifiers(boolean z, Visibility visibility) {
            return ModifierContributor.Resolver.m15205of(Collections.singleton(getVisibility().expandTo(visibility))).resolve(getActualModifiers(z));
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public boolean isDefaultValue(AnnotationValue<?, ?> annotationValue) {
            if (isDefaultValue()) {
                TypeDescription asErasure = getReturnType().asErasure();
                Object resolve = annotationValue.resolve();
                return (asErasure.represents(Boolean.TYPE) && (resolve instanceof Boolean)) || (asErasure.represents(Byte.TYPE) && (resolve instanceof Byte)) || ((asErasure.represents(Character.TYPE) && (resolve instanceof Character)) || ((asErasure.represents(Short.TYPE) && (resolve instanceof Short)) || ((asErasure.represents(Integer.TYPE) && (resolve instanceof Integer)) || ((asErasure.represents(Long.TYPE) && (resolve instanceof Long)) || ((asErasure.represents(Float.TYPE) && (resolve instanceof Float)) || ((asErasure.represents(Double.TYPE) && (resolve instanceof Double)) || ((asErasure.represents(String.class) && (resolve instanceof String)) || ((asErasure.isAssignableTo(Enum.class) && (resolve instanceof EnumerationDescription) && isEnumerationType(asErasure, (EnumerationDescription) resolve)) || ((asErasure.isAssignableTo(Annotation.class) && (resolve instanceof AnnotationDescription) && isAnnotationType(asErasure, (AnnotationDescription) resolve)) || ((asErasure.represents(Class.class) && (resolve instanceof TypeDescription)) || ((asErasure.represents(boolean[].class) && (resolve instanceof boolean[])) || ((asErasure.represents(byte[].class) && (resolve instanceof byte[])) || ((asErasure.represents(char[].class) && (resolve instanceof char[])) || ((asErasure.represents(short[].class) && (resolve instanceof short[])) || ((asErasure.represents(int[].class) && (resolve instanceof int[])) || ((asErasure.represents(long[].class) && (resolve instanceof long[])) || ((asErasure.represents(float[].class) && (resolve instanceof float[])) || ((asErasure.represents(double[].class) && (resolve instanceof double[])) || ((asErasure.represents(String[].class) && (resolve instanceof String[])) || ((asErasure.isAssignableTo(Enum[].class) && (resolve instanceof EnumerationDescription[]) && isEnumerationType(asErasure.getComponentType(), (EnumerationDescription[]) resolve)) || ((asErasure.isAssignableTo(Annotation[].class) && (resolve instanceof AnnotationDescription[]) && isAnnotationType(asErasure.getComponentType(), (AnnotationDescription[]) resolve)) || (asErasure.represents(Class[].class) && (resolve instanceof TypeDescription[])))))))))))))))))))))));
            }
            return false;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public boolean isInvokeBootstrap(List<? extends TypeDefinition> list) {
            return isInvokeBootstrap() && isBootstrapping(list);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForLoadedConstructor extends InDefinedShape.AbstractBase.ForLoadedExecutable<Constructor<?>> implements ParameterDescription.ForLoadedParameter.ParameterAnnotationSource {
        private transient /* synthetic */ AnnotationList declaredAnnotations;
        private transient /* synthetic */ Annotation[][] parameterAnnotations;
        private transient /* synthetic */ ParameterList parameters;

        public ForLoadedConstructor(Constructor<?> constructor) {
            super(constructor);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        @CachedReturnPlugin.Enhance("declaredAnnotations")
        public AnnotationList getDeclaredAnnotations() {
            AnnotationList.ForLoadedAnnotations forLoadedAnnotations = this.declaredAnnotations != null ? null : new AnnotationList.ForLoadedAnnotations(((Constructor) this.executable).getDeclaredAnnotations());
            if (forLoadedAnnotations == null) {
                return this.declaredAnnotations;
            }
            this.declaredAnnotations = forLoadedAnnotations;
            return forLoadedAnnotations;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        @AlwaysNull
        public AnnotationValue<?, ?> getDefaultValue() {
            return AnnotationValue.UNDEFINED;
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithDescriptor
        public String getDescriptor() {
            return Type.getConstructorDescriptor((Constructor) this.executable);
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public TypeList.Generic getExceptionTypes() {
            return new TypeList.Generic.OfConstructorExceptionTypes((Constructor) this.executable);
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getInternalName() {
            return MethodDescription.CONSTRUCTOR_INTERNAL_NAME;
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return ((Constructor) this.executable).getModifiers();
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return ((Constructor) this.executable).getName();
        }

        @Override // net.bytebuddy.description.method.ParameterDescription.ForLoadedParameter.ParameterAnnotationSource
        @CachedReturnPlugin.Enhance("parameterAnnotations")
        public Annotation[][] getParameterAnnotations() {
            Annotation[][] parameterAnnotations = this.parameterAnnotations != null ? null : ((Constructor) this.executable).getParameterAnnotations();
            if (parameterAnnotations == null) {
                return this.parameterAnnotations;
            }
            this.parameterAnnotations = parameterAnnotations;
            return parameterAnnotations;
        }

        @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
        @CachedReturnPlugin.Enhance("parameters")
        public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
            ParameterList<ParameterDescription.InDefinedShape> m15208of = this.parameters != null ? null : ParameterList.ForLoadedExecutable.m15208of((Constructor<?>) this.executable, (ParameterDescription.ForLoadedParameter.ParameterAnnotationSource) this);
            if (m15208of == null) {
                return this.parameters;
            }
            this.parameters = m15208of;
            return m15208of;
        }

        @Override // net.bytebuddy.description.method.MethodDescription.InDefinedShape.AbstractBase.ForLoadedExecutable, net.bytebuddy.description.method.MethodDescription.InDefinedShape.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public /* bridge */ /* synthetic */ TypeDescription.Generic getReceiverType() {
            return super.getReceiverType();
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public TypeDescription.Generic getReturnType() {
            return TypeDescription.Generic.VOID;
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public TypeList.Generic getTypeVariables() {
            return TypeList.Generic.ForLoadedTypes.OfTypeVariables.m15178of((GenericDeclaration) this.executable);
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public boolean isConstructor() {
            return true;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.AbstractBase, net.bytebuddy.description.ModifierReviewable
        public boolean isSynthetic() {
            return ((Constructor) this.executable).isSynthetic();
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public boolean isTypeInitializer() {
            return false;
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public boolean represents(Constructor<?> constructor) {
            return ((Constructor) this.executable).equals(constructor) || equals(new ForLoadedConstructor(constructor));
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public boolean represents(Method method) {
            return false;
        }

        @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
        public TypeDescription getDeclaringType() {
            return TypeDescription.ForLoadedType.m15196of(((Constructor) this.executable).getDeclaringClass());
        }
    }

    /* loaded from: classes2.dex */
    public static class ForLoadedMethod extends InDefinedShape.AbstractBase.ForLoadedExecutable<Method> implements ParameterDescription.ForLoadedParameter.ParameterAnnotationSource {
        private transient /* synthetic */ AnnotationList declaredAnnotations;
        private transient /* synthetic */ Annotation[][] parameterAnnotations;
        private transient /* synthetic */ ParameterList parameters;

        public ForLoadedMethod(Method method) {
            super(method);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        @CachedReturnPlugin.Enhance("declaredAnnotations")
        public AnnotationList getDeclaredAnnotations() {
            AnnotationList.ForLoadedAnnotations forLoadedAnnotations = this.declaredAnnotations != null ? null : new AnnotationList.ForLoadedAnnotations(((Method) this.executable).getDeclaredAnnotations());
            if (forLoadedAnnotations == null) {
                return this.declaredAnnotations;
            }
            this.declaredAnnotations = forLoadedAnnotations;
            return forLoadedAnnotations;
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithDescriptor
        public String getDescriptor() {
            return Type.getMethodDescriptor((Method) this.executable);
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getInternalName() {
            return ((Method) this.executable).getName();
        }

        public Method getLoadedMethod() {
            return (Method) this.executable;
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return ((Method) this.executable).getModifiers();
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return ((Method) this.executable).getName();
        }

        @Override // net.bytebuddy.description.method.ParameterDescription.ForLoadedParameter.ParameterAnnotationSource
        @CachedReturnPlugin.Enhance("parameterAnnotations")
        public Annotation[][] getParameterAnnotations() {
            Annotation[][] parameterAnnotations = this.parameterAnnotations != null ? null : ((Method) this.executable).getParameterAnnotations();
            if (parameterAnnotations == null) {
                return this.parameterAnnotations;
            }
            this.parameterAnnotations = parameterAnnotations;
            return parameterAnnotations;
        }

        @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
        @CachedReturnPlugin.Enhance("parameters")
        public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
            ParameterList<ParameterDescription.InDefinedShape> m15206of = this.parameters != null ? null : ParameterList.ForLoadedExecutable.m15206of((Method) this.executable, (ParameterDescription.ForLoadedParameter.ParameterAnnotationSource) this);
            if (m15206of == null) {
                return this.parameters;
            }
            this.parameters = m15206of;
            return m15206of;
        }

        @Override // net.bytebuddy.description.method.MethodDescription.InDefinedShape.AbstractBase.ForLoadedExecutable, net.bytebuddy.description.method.MethodDescription.InDefinedShape.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public /* bridge */ /* synthetic */ TypeDescription.Generic getReceiverType() {
            return super.getReceiverType();
        }

        @Override // net.bytebuddy.description.ModifierReviewable.AbstractBase, net.bytebuddy.description.ModifierReviewable.ForMethodDescription
        public boolean isBridge() {
            return ((Method) this.executable).isBridge();
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public boolean isConstructor() {
            return false;
        }

        @Override // net.bytebuddy.description.ModifierReviewable.AbstractBase, net.bytebuddy.description.ModifierReviewable
        public boolean isSynthetic() {
            return ((Method) this.executable).isSynthetic();
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public boolean isTypeInitializer() {
            return false;
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public boolean represents(Constructor<?> constructor) {
            return false;
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public boolean represents(Method method) {
            return ((Method) this.executable).equals(method) || equals(new ForLoadedMethod(method));
        }

        @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
        public TypeDescription getDeclaringType() {
            return TypeDescription.ForLoadedType.m15196of(((Method) this.executable).getDeclaringClass());
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        @MaybeNull
        public AnnotationValue<?, ?> getDefaultValue() {
            Object defaultValue = ((Method) this.executable).getDefaultValue();
            if (defaultValue == null) {
                return AnnotationValue.UNDEFINED;
            }
            return AnnotationDescription.ForLoadedAnnotation.asValue(defaultValue, ((Method) this.executable).getReturnType());
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public TypeList.Generic getExceptionTypes() {
            if (TypeDescription.AbstractBase.RAW_TYPES) {
                return new TypeList.Generic.ForLoadedTypes(((Method) this.executable).getExceptionTypes());
            }
            return new TypeList.Generic.OfMethodExceptionTypes((Method) this.executable);
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public TypeDescription.Generic getReturnType() {
            if (TypeDescription.AbstractBase.RAW_TYPES) {
                return TypeDescription.Generic.OfNonGenericType.ForLoadedType.m15189of(((Method) this.executable).getReturnType());
            }
            return new TypeDescription.Generic.LazyProjection.ForLoadedReturnType((Method) this.executable);
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public TypeList.Generic getTypeVariables() {
            if (TypeDescription.AbstractBase.RAW_TYPES) {
                return new TypeList.Generic.Empty();
            }
            return TypeList.Generic.ForLoadedTypes.OfTypeVariables.m15178of((GenericDeclaration) this.executable);
        }
    }

    /* loaded from: classes2.dex */
    public interface InDefinedShape extends MethodDescription {
        @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
        TypeDescription getDeclaringType();

        @Override // 
        ParameterList<ParameterDescription.InDefinedShape> getParameters();

        /* loaded from: classes2.dex */
        public static abstract class AbstractBase extends AbstractBase implements InDefinedShape {

            @JavaDispatcher.Proxied("java.lang.reflect.Executable")
            /* loaded from: classes2.dex */
            public interface Executable {
                @JavaDispatcher.Defaults
                @MaybeNull
                @JavaDispatcher.Proxied("getAnnotatedReceiverType")
                AnnotatedElement getAnnotatedReceiverType(Object obj);
            }

            /* loaded from: classes2.dex */
            public static abstract class ForLoadedExecutable<T extends AnnotatedElement> extends AbstractBase {
                private static final boolean ACCESS_CONTROLLER;
                public static final Executable EXECUTABLE;
                public final T executable;

                static {
                    boolean z = false;
                    try {
                        Class.forName("java.security.AccessController", false, null);
                        ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
                    } catch (ClassNotFoundException unused) {
                        ACCESS_CONTROLLER = z;
                        EXECUTABLE = (Executable) doPrivileged(JavaDispatcher.m14754of(Executable.class));
                    } catch (SecurityException unused2) {
                        z = true;
                        ACCESS_CONTROLLER = z;
                        EXECUTABLE = (Executable) doPrivileged(JavaDispatcher.m14754of(Executable.class));
                    }
                    EXECUTABLE = (Executable) doPrivileged(JavaDispatcher.m14754of(Executable.class));
                }

                @AccessControllerPlugin.Enhance
                private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
                    return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
                }

                @Override // net.bytebuddy.description.method.MethodDescription.InDefinedShape.AbstractBase, net.bytebuddy.description.ByteCodeElement.TypeDependant
                public /* bridge */ /* synthetic */ InDefinedShape asDefined() {
                    return super.asDefined();
                }

                @Override // net.bytebuddy.description.method.MethodDescription.InDefinedShape.AbstractBase, net.bytebuddy.description.method.MethodDescription
                public TypeDescription.Generic getReceiverType() {
                    AnnotatedElement annotatedReceiverType = EXECUTABLE.getAnnotatedReceiverType(this.executable);
                    if (annotatedReceiverType == null) {
                        return super.getReceiverType();
                    }
                    return TypeDefinition.Sort.describeAnnotated(annotatedReceiverType);
                }

                public ForLoadedExecutable(T t) {
                    this.executable = t;
                }
            }

            @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
            public InDefinedShape asDefined() {
                return this;
            }

            @MaybeNull
            public TypeDescription.Generic getReceiverType() {
                if (isStatic()) {
                    return TypeDescription.Generic.UNDEFINED;
                }
                if (isConstructor()) {
                    TypeDescription declaringType = getDeclaringType();
                    TypeDescription enclosingType = getDeclaringType().getEnclosingType();
                    if (enclosingType == null) {
                        return TypeDescription.Generic.OfParameterizedType.ForGenerifiedErasure.m15187of(declaringType);
                    }
                    if (declaringType.isStatic()) {
                        return enclosingType.asGenericType();
                    }
                    return TypeDescription.Generic.OfParameterizedType.ForGenerifiedErasure.m15187of(enclosingType);
                }
                return TypeDescription.Generic.OfParameterizedType.ForGenerifiedErasure.m15187of(getDeclaringType());
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface InGenericShape extends MethodDescription {
        @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
        TypeDescription.Generic getDeclaringType();

        @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
        ParameterList<ParameterDescription.InGenericShape> getParameters();
    }

    /* loaded from: classes2.dex */
    public static class Latent extends InDefinedShape.AbstractBase {
        private final List<? extends AnnotationDescription> declaredAnnotations;
        private final TypeDescription declaringType;
        @MaybeNull
        private final AnnotationValue<?, ?> defaultValue;
        private final List<? extends TypeDescription.Generic> exceptionTypes;
        private final String internalName;
        private final int modifiers;
        private final List<? extends ParameterDescription.Token> parameterTokens;
        @MaybeNull
        private final TypeDescription.Generic receiverType;
        private final TypeDescription.Generic returnType;
        private final List<? extends TypeVariableToken> typeVariables;

        /* loaded from: classes2.dex */
        public static class TypeInitializer extends InDefinedShape.AbstractBase {
            private final TypeDescription typeDescription;

            @Override // net.bytebuddy.description.annotation.AnnotationSource
            public AnnotationList getDeclaredAnnotations() {
                return new AnnotationList.Empty();
            }

            @Override // net.bytebuddy.description.method.MethodDescription
            @AlwaysNull
            public AnnotationValue<?, ?> getDefaultValue() {
                return AnnotationValue.UNDEFINED;
            }

            @Override // net.bytebuddy.description.method.MethodDescription
            public TypeList.Generic getExceptionTypes() {
                return new TypeList.Generic.Empty();
            }

            @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
            public String getInternalName() {
                return MethodDescription.TYPE_INITIALIZER_INTERNAL_NAME;
            }

            @Override // net.bytebuddy.description.ModifierReviewable
            public int getModifiers() {
                return 8;
            }

            @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
            public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
                return new ParameterList.Empty();
            }

            @Override // net.bytebuddy.description.method.MethodDescription
            public TypeDescription.Generic getReturnType() {
                return TypeDescription.Generic.VOID;
            }

            @Override // net.bytebuddy.description.TypeVariableSource
            public TypeList.Generic getTypeVariables() {
                return new TypeList.Generic.Empty();
            }

            @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
            public TypeDescription getDeclaringType() {
                return this.typeDescription;
            }

            public TypeInitializer(TypeDescription typeDescription) {
                this.typeDescription = typeDescription;
            }
        }

        public Latent(TypeDescription typeDescription, Token token) {
            this(typeDescription, token.getName(), token.getModifiers(), token.getTypeVariableTokens(), token.getReturnType(), token.getParameterTokens(), token.getExceptionTypes(), token.getAnnotations(), token.getDefaultValue(), token.getReceiverType());
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return new AnnotationList.Explicit(this.declaredAnnotations);
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        @MaybeNull
        public AnnotationValue<?, ?> getDefaultValue() {
            return this.defaultValue;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public TypeList.Generic getExceptionTypes() {
            return TypeList.Generic.ForDetachedTypes.attach(this, this.exceptionTypes);
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getInternalName() {
            return this.internalName;
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return this.modifiers;
        }

        @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
        public ParameterList<ParameterDescription.InDefinedShape> getParameters() {
            return new ParameterList.ForTokens(this, this.parameterTokens);
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public TypeDescription.Generic getReturnType() {
            return (TypeDescription.Generic) this.returnType.accept(TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15185of(this));
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public TypeList.Generic getTypeVariables() {
            return TypeList.Generic.ForDetachedTypes.attachVariables(this, this.typeVariables);
        }

        @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
        public TypeDescription getDeclaringType() {
            return this.declaringType;
        }

        @Override // net.bytebuddy.description.method.MethodDescription.InDefinedShape.AbstractBase, net.bytebuddy.description.method.MethodDescription
        @MaybeNull
        public TypeDescription.Generic getReceiverType() {
            TypeDescription.Generic generic = this.receiverType;
            if (generic == null) {
                return super.getReceiverType();
            }
            return (TypeDescription.Generic) generic.accept(TypeDescription.Generic.Visitor.Substitutor.ForAttachment.m15185of(this));
        }

        public Latent(TypeDescription typeDescription, String str, int i, List<? extends TypeVariableToken> list, TypeDescription.Generic generic, List<? extends ParameterDescription.Token> list2, List<? extends TypeDescription.Generic> list3, List<? extends AnnotationDescription> list4, @MaybeNull AnnotationValue<?, ?> annotationValue, @MaybeNull TypeDescription.Generic generic2) {
            this.declaringType = typeDescription;
            this.internalName = str;
            this.modifiers = i;
            this.typeVariables = list;
            this.returnType = generic;
            this.parameterTokens = list2;
            this.exceptionTypes = list3;
            this.declaredAnnotations = list4;
            this.defaultValue = annotationValue;
            this.receiverType = generic2;
        }
    }

    /* loaded from: classes2.dex */
    public static class SignatureToken {
        private transient /* synthetic */ int hashCode;
        private final String name;
        private final List<? extends TypeDescription> parameterTypes;
        private final TypeDescription returnType;

        public SignatureToken(String str, TypeDescription typeDescription, TypeDescription... typeDescriptionArr) {
            this(str, typeDescription, Arrays.asList(typeDescriptionArr));
        }

        public TypeToken asTypeToken() {
            return new TypeToken(this.returnType, this.parameterTypes);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SignatureToken)) {
                return false;
            }
            SignatureToken signatureToken = (SignatureToken) obj;
            return this.name.equals(signatureToken.name) && this.returnType.equals(signatureToken.returnType) && this.parameterTypes.equals(signatureToken.parameterTypes);
        }

        public String getName() {
            return this.name;
        }

        public List<TypeDescription> getParameterTypes() {
            return this.parameterTypes;
        }

        public TypeDescription getReturnType() {
            return this.returnType;
        }

        public SignatureToken(String str, TypeDescription typeDescription, List<? extends TypeDescription> list) {
            this.name = str;
            this.returnType = typeDescription;
            this.parameterTypes = list;
        }

        public String getDescriptor() {
            StringBuilder sb = new StringBuilder();
            sb.append('(');
            for (TypeDescription typeDescription : this.parameterTypes) {
                sb.append(typeDescription.getDescriptor());
            }
            sb.append(')');
            sb.append(this.returnType.getDescriptor());
            return sb.toString();
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int hashCode;
            if (this.hashCode != 0) {
                hashCode = 0;
            } else {
                hashCode = (((this.name.hashCode() * 31) + this.returnType.hashCode()) * 31) + this.parameterTypes.hashCode();
            }
            if (hashCode == 0) {
                return this.hashCode;
            }
            this.hashCode = hashCode;
            return hashCode;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.returnType);
            sb.append(' ');
            sb.append(this.name);
            sb.append('(');
            boolean z = true;
            for (TypeDescription typeDescription : this.parameterTypes) {
                if (z) {
                    z = false;
                } else {
                    sb.append(',');
                }
                sb.append(typeDescription);
            }
            sb.append(')');
            return sb.toString();
        }
    }

    /* loaded from: classes2.dex */
    public static class Token implements ByteCodeElement.Token<Token> {
        private final List<? extends AnnotationDescription> annotations;
        @MaybeNull
        private final AnnotationValue<?, ?> defaultValue;
        private final List<? extends TypeDescription.Generic> exceptionTypes;
        private transient /* synthetic */ int hashCode;
        private final int modifiers;
        private final String name;
        private final List<? extends ParameterDescription.Token> parameterTokens;
        @MaybeNull
        private final TypeDescription.Generic receiverType;
        private final TypeDescription.Generic returnType;
        private final List<? extends TypeVariableToken> typeVariableTokens;

        public Token(int i) {
            this(MethodDescription.CONSTRUCTOR_INTERNAL_NAME, i, TypeDescription.Generic.VOID);
        }

        @Override // net.bytebuddy.description.ByteCodeElement.Token
        public /* bridge */ /* synthetic */ Token accept(TypeDescription.Generic.Visitor visitor) {
            return accept2((TypeDescription.Generic.Visitor<? extends TypeDescription.Generic>) visitor);
        }

        public boolean equals(@MaybeNull Object obj) {
            AnnotationValue<?, ?> annotationValue;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Token token = (Token) obj;
            if (this.modifiers == token.modifiers && this.name.equals(token.name) && this.typeVariableTokens.equals(token.typeVariableTokens) && this.returnType.equals(token.returnType) && this.parameterTokens.equals(token.parameterTokens) && this.exceptionTypes.equals(token.exceptionTypes) && this.annotations.equals(token.annotations) && ((annotationValue = this.defaultValue) == null ? token.defaultValue == null : annotationValue.equals(token.defaultValue))) {
                TypeDescription.Generic generic = this.receiverType;
                if (generic != null) {
                    if (generic.equals(token.receiverType)) {
                        return true;
                    }
                } else if (token.receiverType == null) {
                    return true;
                }
            }
            return false;
        }

        public AnnotationList getAnnotations() {
            return new AnnotationList.Explicit(this.annotations);
        }

        @MaybeNull
        public AnnotationValue<?, ?> getDefaultValue() {
            return this.defaultValue;
        }

        public TypeList.Generic getExceptionTypes() {
            return new TypeList.Generic.Explicit(this.exceptionTypes);
        }

        public int getModifiers() {
            return this.modifiers;
        }

        public String getName() {
            return this.name;
        }

        public ByteCodeElement.Token.TokenList<ParameterDescription.Token> getParameterTokens() {
            return new ByteCodeElement.Token.TokenList<>(this.parameterTokens);
        }

        @MaybeNull
        public TypeDescription.Generic getReceiverType() {
            return this.receiverType;
        }

        public TypeDescription.Generic getReturnType() {
            return this.returnType;
        }

        public ByteCodeElement.Token.TokenList<TypeVariableToken> getTypeVariableTokens() {
            return new ByteCodeElement.Token.TokenList<>(this.typeVariableTokens);
        }

        public String toString() {
            return "MethodDescription.Token{name='" + this.name + "', modifiers=" + this.modifiers + ", typeVariableTokens=" + this.typeVariableTokens + ", returnType=" + this.returnType + ", parameterTokens=" + this.parameterTokens + ", exceptionTypes=" + this.exceptionTypes + ", annotations=" + this.annotations + ", defaultValue=" + this.defaultValue + ", receiverType=" + this.receiverType + '}';
        }

        public Token(String str, int i, TypeDescription.Generic generic) {
            this(str, i, generic, Collections.emptyList());
        }

        @Override // net.bytebuddy.description.ByteCodeElement.Token
        /* renamed from: accept  reason: avoid collision after fix types in other method */
        public Token accept2(TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
            String str = this.name;
            int i = this.modifiers;
            ByteCodeElement.Token.TokenList<TypeVariableToken> accept = getTypeVariableTokens().accept(visitor);
            TypeDescription.Generic generic = (TypeDescription.Generic) this.returnType.accept(visitor);
            ByteCodeElement.Token.TokenList<ParameterDescription.Token> accept2 = getParameterTokens().accept(visitor);
            TypeList.Generic accept3 = getExceptionTypes().accept(visitor);
            List<? extends AnnotationDescription> list = this.annotations;
            AnnotationValue<?, ?> annotationValue = this.defaultValue;
            TypeDescription.Generic generic2 = this.receiverType;
            return new Token(str, i, accept, generic, accept2, accept3, list, annotationValue, generic2 == null ? TypeDescription.Generic.UNDEFINED : (TypeDescription.Generic) generic2.accept(visitor));
        }

        public SignatureToken asSignatureToken(TypeDescription typeDescription) {
            TypeDescription.Generic.Visitor.Reducing reducing = new TypeDescription.Generic.Visitor.Reducing(typeDescription, this.typeVariableTokens);
            ArrayList arrayList = new ArrayList(this.parameterTokens.size());
            for (ParameterDescription.Token token : this.parameterTokens) {
                arrayList.add(token.getType().accept(reducing));
            }
            return new SignatureToken(this.name, (TypeDescription) this.returnType.accept(reducing), arrayList);
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int i;
            int i2 = 0;
            if (this.hashCode == 0) {
                int hashCode = ((((((((((((this.name.hashCode() * 31) + this.modifiers) * 31) + this.typeVariableTokens.hashCode()) * 31) + this.returnType.hashCode()) * 31) + this.parameterTokens.hashCode()) * 31) + this.exceptionTypes.hashCode()) * 31) + this.annotations.hashCode()) * 31;
                AnnotationValue<?, ?> annotationValue = this.defaultValue;
                if (annotationValue != null) {
                    i = annotationValue.hashCode();
                } else {
                    i = 0;
                }
                int i3 = (hashCode + i) * 31;
                TypeDescription.Generic generic = this.receiverType;
                if (generic != null) {
                    i2 = generic.hashCode();
                }
                i2 += i3;
            }
            if (i2 == 0) {
                return this.hashCode;
            }
            this.hashCode = i2;
            return i2;
        }

        public Token(String str, int i, TypeDescription.Generic generic, List<? extends TypeDescription.Generic> list) {
            this(str, i, Collections.emptyList(), generic, new ParameterDescription.Token.TypeList(list), Collections.emptyList(), Collections.emptyList(), AnnotationValue.UNDEFINED, TypeDescription.Generic.UNDEFINED);
        }

        public Token(String str, int i, List<? extends TypeVariableToken> list, TypeDescription.Generic generic, List<? extends ParameterDescription.Token> list2, List<? extends TypeDescription.Generic> list3, List<? extends AnnotationDescription> list4, @MaybeNull AnnotationValue<?, ?> annotationValue, @MaybeNull TypeDescription.Generic generic2) {
            this.name = str;
            this.modifiers = i;
            this.typeVariableTokens = list;
            this.returnType = generic;
            this.parameterTokens = list2;
            this.exceptionTypes = list3;
            this.annotations = list4;
            this.defaultValue = annotationValue;
            this.receiverType = generic2;
        }
    }

    /* loaded from: classes2.dex */
    public static class TypeSubstituting extends AbstractBase implements InGenericShape {
        private final TypeDescription.Generic declaringType;
        private final MethodDescription methodDescription;
        private final TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor;

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return this.methodDescription.getDeclaredAnnotations();
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        @MaybeNull
        public AnnotationValue<?, ?> getDefaultValue() {
            return this.methodDescription.getDefaultValue();
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public TypeList.Generic getExceptionTypes() {
            return new TypeList.Generic.ForDetachedTypes(this.methodDescription.getExceptionTypes(), this.visitor);
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getInternalName() {
            return this.methodDescription.getInternalName();
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return this.methodDescription.getModifiers();
        }

        @Override // net.bytebuddy.description.method.MethodDescription, net.bytebuddy.description.method.MethodDescription.InDefinedShape
        public ParameterList<ParameterDescription.InGenericShape> getParameters() {
            return new ParameterList.TypeSubstituting(this, this.methodDescription.getParameters(), this.visitor);
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public TypeDescription.Generic getReturnType() {
            return (TypeDescription.Generic) this.methodDescription.getReturnType().accept(this.visitor);
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public TypeList.Generic getTypeVariables() {
            return this.methodDescription.getTypeVariables().accept(this.visitor).filter(ElementMatchers.ofSort(TypeDefinition.Sort.VARIABLE));
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public boolean isConstructor() {
            return this.methodDescription.isConstructor();
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public boolean isMethod() {
            return this.methodDescription.isMethod();
        }

        @Override // net.bytebuddy.description.method.MethodDescription.AbstractBase, net.bytebuddy.description.method.MethodDescription
        public boolean isTypeInitializer() {
            return this.methodDescription.isTypeInitializer();
        }

        @Override // net.bytebuddy.description.ByteCodeElement.TypeDependant
        public InDefinedShape asDefined() {
            return this.methodDescription.asDefined();
        }

        @Override // net.bytebuddy.description.DeclaredByType.WithMandatoryDeclaration, net.bytebuddy.description.DeclaredByType
        public TypeDescription.Generic getDeclaringType() {
            return this.declaringType;
        }

        @Override // net.bytebuddy.description.method.MethodDescription
        public TypeDescription.Generic getReceiverType() {
            TypeDescription.Generic receiverType = this.methodDescription.getReceiverType();
            if (receiverType == null) {
                return TypeDescription.Generic.UNDEFINED;
            }
            return (TypeDescription.Generic) receiverType.accept(this.visitor);
        }

        public TypeSubstituting(TypeDescription.Generic generic, MethodDescription methodDescription, TypeDescription.Generic.Visitor<? extends TypeDescription.Generic> visitor) {
            this.declaringType = generic;
            this.methodDescription = methodDescription;
            this.visitor = visitor;
        }
    }

    /* loaded from: classes2.dex */
    public static class TypeToken {
        private transient /* synthetic */ int hashCode;
        private final List<? extends TypeDescription> parameterTypes;
        private final TypeDescription returnType;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TypeToken)) {
                return false;
            }
            TypeToken typeToken = (TypeToken) obj;
            return this.returnType.equals(typeToken.returnType) && this.parameterTypes.equals(typeToken.parameterTypes);
        }

        public List<TypeDescription> getParameterTypes() {
            return this.parameterTypes;
        }

        public TypeDescription getReturnType() {
            return this.returnType;
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int hashCode;
            if (this.hashCode != 0) {
                hashCode = 0;
            } else {
                hashCode = (this.returnType.hashCode() * 31) + this.parameterTypes.hashCode();
            }
            if (hashCode == 0) {
                return this.hashCode;
            }
            this.hashCode = hashCode;
            return hashCode;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append('(');
            for (TypeDescription typeDescription : this.parameterTypes) {
                sb.append(typeDescription.getDescriptor());
            }
            sb.append(')');
            sb.append(this.returnType.getDescriptor());
            return sb.toString();
        }

        public TypeToken(TypeDescription typeDescription, List<? extends TypeDescription> list) {
            this.returnType = typeDescription;
            this.parameterTypes = list;
        }
    }

    SignatureToken asSignatureToken();

    TypeToken asTypeToken();

    int getActualModifiers();

    int getActualModifiers(boolean z);

    int getActualModifiers(boolean z, Visibility visibility);

    @MaybeNull
    <T> T getDefaultValue(Class<T> cls);

    @MaybeNull
    AnnotationValue<?, ?> getDefaultValue();

    TypeList.Generic getExceptionTypes();

    ParameterList<?> getParameters();

    @MaybeNull
    TypeDescription.Generic getReceiverType();

    TypeDescription.Generic getReturnType();

    int getStackSize();

    boolean isBridgeCompatible(TypeToken typeToken);

    boolean isConstantBootstrap();

    boolean isConstantBootstrap(List<? extends TypeDefinition> list);

    boolean isConstructor();

    boolean isDefaultMethod();

    boolean isDefaultValue();

    boolean isDefaultValue(AnnotationValue<?, ?> annotationValue);

    boolean isInvokableOn(TypeDescription typeDescription);

    boolean isInvokeBootstrap();

    boolean isInvokeBootstrap(List<? extends TypeDefinition> list);

    boolean isMethod();

    boolean isSpecializableFor(TypeDescription typeDescription);

    boolean isTypeInitializer();

    boolean isVirtual();

    boolean represents(Constructor<?> constructor);

    boolean represents(Method method);
}
