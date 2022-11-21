package net.bytebuddy.description.type;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.ByteCodeElement;
import net.bytebuddy.description.ModifierReviewable;
import net.bytebuddy.description.NamedElement;
import net.bytebuddy.description.TypeVariableSource;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.annotation.AnnotationList;
import net.bytebuddy.description.annotation.AnnotationSource;
import net.bytebuddy.description.enumeration.EnumerationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.PackageDescription;
import net.bytebuddy.description.type.RecordComponentDescription;
import net.bytebuddy.description.type.RecordComponentList;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.TargetType;
import net.bytebuddy.implementation.MethodDelegation;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.FieldComparator;
import net.bytebuddy.utility.GraalImageCode;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.dispatcher.JavaDispatcher;
import net.bytebuddy.utility.nullability.AlwaysNull;
import net.bytebuddy.utility.nullability.MaybeNull;
import net.bytebuddy.utility.privilege.GetSystemPropertyAction;
/* loaded from: classes2.dex */
public interface TypeDescription extends TypeDefinition, ByteCodeElement, TypeVariableSource {
    public static final TypeDescription OBJECT = new ForLoadedType(Object.class);
    public static final TypeDescription STRING = new ForLoadedType(String.class);
    public static final TypeDescription CLASS = new ForLoadedType(Class.class);
    public static final TypeDescription THROWABLE = new ForLoadedType(Throwable.class);
    public static final TypeDescription VOID = new ForLoadedType(Void.TYPE);
    public static final TypeList.Generic ARRAY_INTERFACES = new TypeList.Generic.ForLoadedTypes(Cloneable.class, Serializable.class);
    @AlwaysNull
    public static final TypeDescription UNDEFINED = null;

    /* loaded from: classes2.dex */
    public static abstract class AbstractBase extends TypeVariableSource.AbstractBase implements TypeDescription {
        private static final boolean ACCESS_CONTROLLER;
        public static final boolean RAW_TYPES;
        private transient /* synthetic */ int hashCode;

        /* loaded from: classes2.dex */
        public static abstract class OfSimpleType extends AbstractBase {

            /* loaded from: classes2.dex */
            public static abstract class WithDelegation extends OfSimpleType {
                public abstract TypeDescription delegate();

                @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
                public int getActualModifiers(boolean z) {
                    return delegate().getActualModifiers(z);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
                @MaybeNull
                public ClassFileVersion getClassFileVersion() {
                    return delegate().getClassFileVersion();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase.OfSimpleType, net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                    return super.getComponentType();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return delegate().getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
                public FieldList<FieldDescription.InDefinedShape> getDeclaredFields() {
                    return delegate().getDeclaredFields();
                }

                @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
                public MethodList<MethodDescription.InDefinedShape> getDeclaredMethods() {
                    return delegate().getDeclaredMethods();
                }

                @Override // net.bytebuddy.description.type.TypeDescription
                public TypeList getDeclaredTypes() {
                    return delegate().getDeclaredTypes();
                }

                @Override // net.bytebuddy.description.type.TypeDescription
                @MaybeNull
                public MethodDescription.InDefinedShape getEnclosingMethod() {
                    return delegate().getEnclosingMethod();
                }

                @Override // net.bytebuddy.description.type.TypeDescription
                @MaybeNull
                public TypeDescription getEnclosingType() {
                    return delegate().getEnclosingType();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.NamedElement.WithDescriptor
                @MaybeNull
                public String getGenericSignature() {
                    return delegate().getGenericSignature();
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeList.Generic getInterfaces() {
                    return delegate().getInterfaces();
                }

                @Override // net.bytebuddy.description.ModifierReviewable
                public int getModifiers() {
                    return delegate().getModifiers();
                }

                @Override // net.bytebuddy.description.type.TypeDescription
                public TypeDescription getNestHost() {
                    return delegate().getNestHost();
                }

                @Override // net.bytebuddy.description.type.TypeDescription
                public TypeList getNestMembers() {
                    return delegate().getNestMembers();
                }

                @Override // net.bytebuddy.description.type.TypeDescription
                @MaybeNull
                public PackageDescription getPackage() {
                    return delegate().getPackage();
                }

                @Override // net.bytebuddy.description.type.TypeDescription
                public TypeList getPermittedSubtypes() {
                    return delegate().getPermittedSubtypes();
                }

                @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
                public RecordComponentList<RecordComponentDescription.InDefinedShape> getRecordComponents() {
                    return delegate().getRecordComponents();
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public Generic getSuperClass() {
                    return delegate().getSuperClass();
                }

                @Override // net.bytebuddy.description.TypeVariableSource
                public TypeList.Generic getTypeVariables() {
                    return delegate().getTypeVariables();
                }

                @Override // net.bytebuddy.description.type.TypeDescription
                public boolean isAnonymousType() {
                    return delegate().isAnonymousType();
                }

                @Override // net.bytebuddy.description.type.TypeDescription
                public boolean isLocalType() {
                    return delegate().isLocalType();
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public boolean isRecord() {
                    return delegate().isRecord();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
                public boolean isSealed() {
                    return delegate().isSealed();
                }

                @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.DeclaredByType
                @MaybeNull
                public TypeDescription getDeclaringType() {
                    return delegate().getDeclaringType();
                }
            }

            @Override // net.bytebuddy.description.NamedElement.WithDescriptor
            public String getDescriptor() {
                return "L" + getInternalName() + ";";
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public StackSize getStackSize() {
                return StackSize.SINGLE;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isArray() {
                return false;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isPrimitive() {
                return false;
            }

            @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
            @MaybeNull
            public TypeDescription getComponentType() {
                return TypeDescription.UNDEFINED;
            }

            @Override // net.bytebuddy.description.type.TypeDescription
            @MaybeNull
            public String getCanonicalName() {
                if (!isAnonymousType() && !isLocalType()) {
                    String internalName = getInternalName();
                    TypeDescription enclosingType = getEnclosingType();
                    if (enclosingType != null) {
                        if (internalName.startsWith(enclosingType.getInternalName() + "$")) {
                            return enclosingType.getCanonicalName() + "." + internalName.substring(enclosingType.getInternalName().length() + 1);
                        }
                    }
                    return getName();
                }
                return NamedElement.NO_NAME;
            }

            /* JADX WARN: Removed duplicated region for block: B:13:0x0040  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0048 -> B:7:0x002d). Please submit an issue!!! */
            @Override // net.bytebuddy.description.type.TypeDescription
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.String getSimpleName() {
                /*
                    r4 = this;
                    java.lang.String r0 = r4.getInternalName()
                    net.bytebuddy.description.type.TypeDescription r1 = r4.getEnclosingType()
                    if (r1 == 0) goto L30
                    java.lang.StringBuilder r2 = new java.lang.StringBuilder
                    r2.<init>()
                    java.lang.String r3 = r1.getInternalName()
                    r2.append(r3)
                    java.lang.String r3 = "$"
                    r2.append(r3)
                    java.lang.String r2 = r2.toString()
                    boolean r2 = r0.startsWith(r2)
                    if (r2 == 0) goto L30
                    java.lang.String r1 = r1.getInternalName()
                    int r1 = r1.length()
                L2d:
                    int r1 = r1 + 1
                    goto L3a
                L30:
                    r1 = 47
                    int r1 = r0.lastIndexOf(r1)
                    r2 = -1
                    if (r1 != r2) goto L3a
                    return r0
                L3a:
                    int r2 = r0.length()
                    if (r1 >= r2) goto L4b
                    char r2 = r0.charAt(r1)
                    boolean r2 = java.lang.Character.isLetter(r2)
                    if (r2 != 0) goto L4b
                    goto L2d
                L4b:
                    java.lang.String r0 = r0.substring(r1)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.description.type.TypeDescription.AbstractBase.OfSimpleType.getSimpleName():java.lang.String");
            }
        }

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = false;
            } catch (SecurityException unused2) {
                ACCESS_CONTROLLER = true;
            }
            try {
                z = Boolean.parseBoolean((String) doPrivileged(new GetSystemPropertyAction(TypeDefinition.RAW_TYPES_PROPERTY)));
            } catch (Exception unused3) {
            }
            RAW_TYPES = z;
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public <T> T accept(TypeVariableSource.Visitor<T> visitor) {
            return visitor.onType(this);
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public TypeDescription asErasure() {
            return this;
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public Generic asGenericType() {
            return new Generic.OfNonGenericType.ForErasure(this);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TypeDefinition)) {
                return false;
            }
            TypeDefinition typeDefinition = (TypeDefinition) obj;
            return typeDefinition.getSort().isNonGeneric() && getName().equals(typeDefinition.asErasure().getName());
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public ClassFileVersion getClassFileVersion() {
            return null;
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getInternalName() {
            return getName().replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/');
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public TypeDefinition.Sort getSort() {
            return TypeDefinition.Sort.NON_GENERIC;
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public String getTypeName() {
            return getName();
        }

        @CachedReturnPlugin.Enhance("hashCode")
        public int hashCode() {
            int hashCode = this.hashCode != 0 ? 0 : getName().hashCode();
            if (hashCode == 0) {
                return this.hashCode;
            }
            this.hashCode = hashCode;
            return hashCode;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isAnnotationValue(Object obj) {
            if ((represents(Class.class) && (obj instanceof TypeDescription)) || (((obj instanceof AnnotationDescription) && ((AnnotationDescription) obj).getAnnotationType().equals(this)) || (((obj instanceof EnumerationDescription) && ((EnumerationDescription) obj).getEnumerationType().equals(this)) || ((represents(String.class) && (obj instanceof String)) || ((represents(Boolean.TYPE) && (obj instanceof Boolean)) || ((represents(Byte.TYPE) && (obj instanceof Byte)) || ((represents(Short.TYPE) && (obj instanceof Short)) || ((represents(Character.TYPE) && (obj instanceof Character)) || ((represents(Integer.TYPE) && (obj instanceof Integer)) || ((represents(Long.TYPE) && (obj instanceof Long)) || ((represents(Float.TYPE) && (obj instanceof Float)) || ((represents(Double.TYPE) && (obj instanceof Double)) || ((represents(String[].class) && (obj instanceof String[])) || ((represents(boolean[].class) && (obj instanceof boolean[])) || ((represents(byte[].class) && (obj instanceof byte[])) || ((represents(short[].class) && (obj instanceof short[])) || ((represents(char[].class) && (obj instanceof char[])) || ((represents(int[].class) && (obj instanceof int[])) || ((represents(long[].class) && (obj instanceof long[])) || ((represents(float[].class) && (obj instanceof float[])) || ((represents(double[].class) && (obj instanceof double[])) || (represents(Class[].class) && (obj instanceof TypeDescription[]))))))))))))))))))))))) {
                return true;
            }
            if (isAssignableTo(Annotation[].class) && (obj instanceof AnnotationDescription[])) {
                for (AnnotationDescription annotationDescription : (AnnotationDescription[]) obj) {
                    if (!annotationDescription.getAnnotationType().equals(getComponentType())) {
                        return false;
                    }
                }
                return true;
            } else if (isAssignableTo(Enum[].class) && (obj instanceof EnumerationDescription[])) {
                for (EnumerationDescription enumerationDescription : (EnumerationDescription[]) obj) {
                    if (!enumerationDescription.getEnumerationType().equals(getComponentType())) {
                        return false;
                    }
                }
                return true;
            } else {
                return false;
            }
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isAssignableFrom(Class<?> cls) {
            return isAssignableFrom(ForLoadedType.m15196of(cls));
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isAssignableTo(Class<?> cls) {
            return isAssignableTo(ForLoadedType.m15196of(cls));
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isInHierarchyWith(Class<?> cls) {
            return isAssignableTo(cls) || isAssignableFrom(cls);
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public boolean isInferrable() {
            return false;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isInnerClass() {
            return !isStatic() && isNestedClass();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isInstance(Object obj) {
            return isAssignableFrom(obj.getClass());
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isMemberType() {
            return (isLocalType() || isAnonymousType() || getDeclaringType() == null) ? false : true;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isNestHost() {
            return equals(getNestHost());
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isNestMateOf(Class<?> cls) {
            return isNestMateOf(ForLoadedType.m15196of(cls));
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isNestedClass() {
            return getDeclaringType() != null;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isPackageType() {
            return getSimpleName().equals(PackageDescription.PACKAGE_CLASS_NAME);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isSealed() {
            return (isPrimitive() || isArray() || getPermittedSubtypes().isEmpty()) ? false : true;
        }

        @Override // java.lang.Iterable
        public Iterator<TypeDefinition> iterator() {
            return new TypeDefinition.SuperClassIterator(this);
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        @SuppressFBWarnings(justification = "Fits equality contract for type definitions.", value = {"EC_UNRELATED_CLASS_AND_INTERFACE"})
        public boolean represents(Type type) {
            return equals(TypeDefinition.Sort.describe(type));
        }

        public String toString() {
            String sb;
            StringBuilder sb2 = new StringBuilder();
            if (isPrimitive()) {
                sb = "";
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(isInterface() ? "interface" : "class");
                sb3.append(" ");
                sb = sb3.toString();
            }
            sb2.append(sb);
            sb2.append(getName());
            return sb2.toString();
        }

        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        private static boolean isAssignable(TypeDescription typeDescription, TypeDescription typeDescription2) {
            if (typeDescription.equals(typeDescription2)) {
                return true;
            }
            if (typeDescription2.isArray()) {
                if (typeDescription.isArray()) {
                    return isAssignable(typeDescription.getComponentType(), typeDescription2.getComponentType());
                }
                if (typeDescription.represents(Object.class) || TypeDescription.ARRAY_INTERFACES.contains(typeDescription.asGenericType())) {
                    return true;
                }
                return false;
            } else if (typeDescription.represents(Object.class)) {
                return !typeDescription2.isPrimitive();
            } else {
                Generic superClass = typeDescription2.getSuperClass();
                if (superClass != null && typeDescription.isAssignableFrom(superClass.asErasure())) {
                    return true;
                }
                if (typeDescription.isInterface()) {
                    for (TypeDescription typeDescription3 : typeDescription2.getInterfaces().asErasures()) {
                        if (typeDescription.isAssignableFrom(typeDescription3)) {
                            return true;
                        }
                    }
                }
                return false;
            }
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeDescription asBoxed() {
            if (represents(Boolean.TYPE)) {
                return ForLoadedType.m15196of(Boolean.class);
            }
            if (represents(Byte.TYPE)) {
                return ForLoadedType.m15196of(Byte.class);
            }
            if (represents(Short.TYPE)) {
                return ForLoadedType.m15196of(Short.class);
            }
            if (represents(Character.TYPE)) {
                return ForLoadedType.m15196of(Character.class);
            }
            if (represents(Integer.TYPE)) {
                return ForLoadedType.m15196of(Integer.class);
            }
            if (represents(Long.TYPE)) {
                return ForLoadedType.m15196of(Long.class);
            }
            if (represents(Float.TYPE)) {
                return ForLoadedType.m15196of(Float.class);
            }
            if (represents(Double.TYPE)) {
                return ForLoadedType.m15196of(Double.class);
            }
            return this;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeDescription asUnboxed() {
            if (represents(Boolean.class)) {
                return ForLoadedType.m15196of(Boolean.TYPE);
            }
            if (represents(Byte.class)) {
                return ForLoadedType.m15196of(Byte.TYPE);
            }
            if (represents(Short.class)) {
                return ForLoadedType.m15196of(Short.TYPE);
            }
            if (represents(Character.class)) {
                return ForLoadedType.m15196of(Character.TYPE);
            }
            if (represents(Integer.class)) {
                return ForLoadedType.m15196of(Integer.TYPE);
            }
            if (represents(Long.class)) {
                return ForLoadedType.m15196of(Long.TYPE);
            }
            if (represents(Float.class)) {
                return ForLoadedType.m15196of(Float.TYPE);
            }
            if (represents(Double.class)) {
                return ForLoadedType.m15196of(Double.TYPE);
            }
            return this;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public Object getDefaultValue() {
            if (represents(Boolean.TYPE)) {
                return Boolean.FALSE;
            }
            if (represents(Byte.TYPE)) {
                return (byte) 0;
            }
            if (represents(Short.TYPE)) {
                return (short) 0;
            }
            if (represents(Character.TYPE)) {
                return (char) 0;
            }
            if (represents(Integer.TYPE)) {
                return 0;
            }
            if (represents(Long.TYPE)) {
                return 0L;
            }
            if (represents(Float.TYPE)) {
                return Float.valueOf(0.0f);
            }
            if (represents(Double.TYPE)) {
                return Double.valueOf(0.0d);
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0087 A[Catch: GenericSignatureFormatError -> 0x00b4, TryCatch #0 {GenericSignatureFormatError -> 0x00b4, blocks: (B:2:0x0000, B:3:0x0010, B:5:0x0016, B:6:0x002b, B:8:0x0031, B:10:0x0043, B:12:0x004c, B:11:0x0048, B:14:0x0055, B:16:0x005b, B:17:0x005d, B:19:0x006b, B:24:0x0079, B:25:0x0081, B:27:0x0087, B:29:0x009b, B:35:0x00ac, B:36:0x00b1), top: B:40:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00ac A[Catch: GenericSignatureFormatError -> 0x00b4, TryCatch #0 {GenericSignatureFormatError -> 0x00b4, blocks: (B:2:0x0000, B:3:0x0010, B:5:0x0016, B:6:0x002b, B:8:0x0031, B:10:0x0043, B:12:0x004c, B:11:0x0048, B:14:0x0055, B:16:0x005b, B:17:0x005d, B:19:0x006b, B:24:0x0079, B:25:0x0081, B:27:0x0087, B:29:0x009b, B:35:0x00ac, B:36:0x00b1), top: B:40:0x0000 }] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00b1 A[Catch: GenericSignatureFormatError -> 0x00b4, TRY_LEAVE, TryCatch #0 {GenericSignatureFormatError -> 0x00b4, blocks: (B:2:0x0000, B:3:0x0010, B:5:0x0016, B:6:0x002b, B:8:0x0031, B:10:0x0043, B:12:0x004c, B:11:0x0048, B:14:0x0055, B:16:0x005b, B:17:0x005d, B:19:0x006b, B:24:0x0079, B:25:0x0081, B:27:0x0087, B:29:0x009b, B:35:0x00ac, B:36:0x00b1), top: B:40:0x0000 }] */
        @Override // net.bytebuddy.description.NamedElement.WithDescriptor
        @net.bytebuddy.utility.nullability.MaybeNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String getGenericSignature() {
            /*
                r8 = this;
                net.bytebuddy.jar.asm.signature.SignatureWriter r0 = new net.bytebuddy.jar.asm.signature.SignatureWriter     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                r0.<init>()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                net.bytebuddy.description.type.TypeList$Generic r1 = r8.getTypeVariables()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                r2 = 1
                r3 = 0
                r4 = 0
            L10:
                boolean r5 = r1.hasNext()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                if (r5 == 0) goto L55
                java.lang.Object r4 = r1.next()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                net.bytebuddy.description.type.TypeDescription$Generic r4 = (net.bytebuddy.description.type.TypeDescription.Generic) r4     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                java.lang.String r5 = r4.getSymbol()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                r0.visitFormalTypeParameter(r5)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                net.bytebuddy.description.type.TypeList$Generic r4 = r4.getUpperBounds()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
            L2b:
                boolean r5 = r4.hasNext()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                if (r5 == 0) goto L53
                java.lang.Object r5 = r4.next()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                net.bytebuddy.description.type.TypeDescription$Generic r5 = (net.bytebuddy.description.type.TypeDescription.Generic) r5     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor r6 = new net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                net.bytebuddy.description.type.TypeDescription r7 = r5.asErasure()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                boolean r7 = r7.isInterface()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                if (r7 == 0) goto L48
                net.bytebuddy.jar.asm.signature.SignatureVisitor r7 = r0.visitInterfaceBound()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                goto L4c
            L48:
                net.bytebuddy.jar.asm.signature.SignatureVisitor r7 = r0.visitClassBound()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
            L4c:
                r6.<init>(r7)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                r5.accept(r6)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                goto L2b
            L53:
                r4 = 1
                goto L10
            L55:
                net.bytebuddy.description.type.TypeDescription$Generic r1 = r8.getSuperClass()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                if (r1 != 0) goto L5d
                net.bytebuddy.description.type.TypeDescription$Generic r1 = net.bytebuddy.description.type.TypeDescription.Generic.OBJECT     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
            L5d:
                net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor r5 = new net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                net.bytebuddy.jar.asm.signature.SignatureVisitor r6 = r0.visitSuperclass()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                r5.<init>(r6)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                r1.accept(r5)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                if (r4 != 0) goto L78
                net.bytebuddy.description.type.TypeDefinition$Sort r1 = r1.getSort()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                boolean r1 = r1.isNonGeneric()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                if (r1 != 0) goto L76
                goto L78
            L76:
                r1 = 0
                goto L79
            L78:
                r1 = 1
            L79:
                net.bytebuddy.description.type.TypeList$Generic r4 = r8.getInterfaces()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                java.util.Iterator r4 = r4.iterator()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
            L81:
                boolean r5 = r4.hasNext()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                if (r5 == 0) goto Laa
                java.lang.Object r5 = r4.next()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                net.bytebuddy.description.type.TypeDescription$Generic r5 = (net.bytebuddy.description.type.TypeDescription.Generic) r5     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor r6 = new net.bytebuddy.description.type.TypeDescription$Generic$Visitor$ForSignatureVisitor     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                net.bytebuddy.jar.asm.signature.SignatureVisitor r7 = r0.visitInterface()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                r6.<init>(r7)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                r5.accept(r6)     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                if (r1 != 0) goto La8
                net.bytebuddy.description.type.TypeDefinition$Sort r1 = r5.getSort()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                boolean r1 = r1.isNonGeneric()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                if (r1 != 0) goto La6
                goto La8
            La6:
                r1 = 0
                goto L81
            La8:
                r1 = 1
                goto L81
            Laa:
                if (r1 == 0) goto Lb1
                java.lang.String r0 = r0.toString()     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
                goto Lb3
            Lb1:
                java.lang.String r0 = net.bytebuddy.description.NamedElement.WithDescriptor.NON_GENERIC_SIGNATURE     // Catch: java.lang.reflect.GenericSignatureFormatError -> Lb4
            Lb3:
                return r0
            Lb4:
                java.lang.String r0 = net.bytebuddy.description.NamedElement.WithDescriptor.NON_GENERIC_SIGNATURE
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.description.type.TypeDescription.AbstractBase.getGenericSignature():java.lang.String");
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public boolean isAnnotationReturnType() {
            if (!isPrimitive() && !represents(String.class) && ((!isAssignableTo(Enum.class) || represents(Enum.class)) && ((!isAssignableTo(Annotation.class) || represents(Annotation.class)) && !represents(Class.class) && (!isArray() || getComponentType().isArray() || !getComponentType().isAnnotationReturnType())))) {
                return false;
            }
            return true;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isAssignableFrom(TypeDescription typeDescription) {
            return isAssignable(this, typeDescription);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isAssignableTo(TypeDescription typeDescription) {
            return isAssignable(typeDescription, this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isCompileTimeConstant() {
            if (!represents(Integer.TYPE) && !represents(Long.TYPE) && !represents(Float.TYPE) && !represents(Double.TYPE) && !represents(String.class) && !represents(Class.class) && !equals(JavaType.METHOD_TYPE.getTypeStub()) && !equals(JavaType.METHOD_HANDLE.getTypeStub())) {
                return false;
            }
            return true;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isInHierarchyWith(TypeDescription typeDescription) {
            return isAssignableTo(typeDescription) || isAssignableFrom(typeDescription);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isNestMateOf(TypeDescription typeDescription) {
            return getNestHost().equals(typeDescription.getNestHost());
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isPrimitiveWrapper() {
            if (!represents(Boolean.class) && !represents(Byte.class) && !represents(Short.class) && !represents(Character.class) && !represents(Integer.class) && !represents(Long.class) && !represents(Float.class) && !represents(Double.class)) {
                return false;
            }
            return true;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public int getActualModifiers(boolean z) {
            int i;
            int i2;
            int modifiers = getModifiers();
            int i3 = 0;
            if (getDeclaredAnnotations().isAnnotationPresent(Deprecated.class)) {
                i = 131072;
            } else {
                i = 0;
            }
            int i4 = modifiers | i;
            if (isRecord()) {
                i2 = 65536;
            } else {
                i2 = 0;
            }
            int i5 = i4 | i2;
            if (z) {
                i3 = 32;
            }
            int i6 = i5 | i3;
            if (isPrivate()) {
                return i6 & (-11);
            }
            if (isProtected()) {
                return (i6 & (-13)) | 1;
            }
            return i6 & (-9);
        }

        @Override // net.bytebuddy.description.NamedElement
        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public String getActualName() {
            if (isArray()) {
                TypeDescription typeDescription = this;
                int i = 0;
                do {
                    i++;
                    typeDescription = typeDescription.getComponentType();
                } while (typeDescription.isArray());
                StringBuilder sb = new StringBuilder();
                sb.append(typeDescription.getActualName());
                for (int i2 = 0; i2 < i; i2++) {
                    sb.append("[]");
                }
                return sb.toString();
            }
            return getName();
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        @MaybeNull
        public TypeVariableSource getEnclosingSource() {
            MethodDescription.InDefinedShape enclosingMethod = getEnclosingMethod();
            if (enclosingMethod == null) {
                if (isStatic()) {
                    return TypeVariableSource.UNDEFINED;
                }
                return getEnclosingType();
            }
            return enclosingMethod;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public AnnotationList getInheritedAnnotations() {
            Generic superClass = getSuperClass();
            AnnotationList<AnnotationDescription> declaredAnnotations = getDeclaredAnnotations();
            if (superClass == null) {
                return declaredAnnotations;
            }
            HashSet hashSet = new HashSet();
            for (AnnotationDescription annotationDescription : declaredAnnotations) {
                hashSet.add(annotationDescription.getAnnotationType());
            }
            return new AnnotationList.Explicit(CompoundList.m14776of((List) declaredAnnotations, (List) superClass.asErasure().getInheritedAnnotations().inherited(hashSet)));
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public int getInnerClassCount() {
            TypeDescription declaringType;
            if (isStatic() || (declaringType = getDeclaringType()) == null) {
                return 0;
            }
            return declaringType.getInnerClassCount() + 1;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public String getLongSimpleName() {
            TypeDescription declaringType = getDeclaringType();
            if (declaringType == null) {
                return getSimpleName();
            }
            return declaringType.getLongSimpleName() + "." + getSimpleName();
        }

        @Override // net.bytebuddy.description.ByteCodeElement
        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public boolean isAccessibleTo(TypeDescription typeDescription) {
            if (!isPrimitive() && (!isArray() ? !(isPublic() || isSamePackage(typeDescription)) : !getComponentType().isVisibleTo(typeDescription))) {
                return false;
            }
            return true;
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public boolean isGenerified() {
            TypeDescription declaringType;
            if (!getTypeVariables().isEmpty()) {
                return true;
            }
            if (!isStatic() && (declaringType = getDeclaringType()) != null && declaringType.isGenerified()) {
                return true;
            }
            try {
                MethodDescription.InDefinedShape enclosingMethod = getEnclosingMethod();
                if (enclosingMethod != null) {
                    if (enclosingMethod.isGenerified()) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable unused) {
                return false;
            }
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isSamePackage(TypeDescription typeDescription) {
            PackageDescription packageDescription = getPackage();
            PackageDescription packageDescription2 = typeDescription.getPackage();
            if (packageDescription != null && packageDescription2 != null) {
                return packageDescription.equals(packageDescription2);
            }
            if (packageDescription == packageDescription2) {
                return true;
            }
            return false;
        }

        @Override // net.bytebuddy.description.ByteCodeElement
        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public boolean isVisibleTo(TypeDescription typeDescription) {
            if (!isPrimitive() && (!isArray() ? !(isPublic() || isProtected() || isSamePackage(typeDescription)) : !getComponentType().isVisibleTo(typeDescription))) {
                return false;
            }
            return true;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public boolean isAnnotationValue() {
            return isPrimitive() || represents(String.class) || isAssignableTo(TypeDescription.class) || isAssignableTo(AnnotationDescription.class) || isAssignableTo(EnumerationDescription.class) || (isArray() && !getComponentType().isArray() && getComponentType().isAnnotationValue());
        }
    }

    /* loaded from: classes2.dex */
    public static class ArrayProjection extends AbstractBase {
        private static final int ARRAY_EXCLUDED = 8712;
        private static final int ARRAY_IMPLIED = 1040;
        private final int arity;
        private final TypeDescription componentType;

        /* renamed from: of */
        public static TypeDescription m15199of(TypeDescription typeDescription) {
            return m15198of(typeDescription, 1);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return new AnnotationList.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public FieldList<FieldDescription.InDefinedShape> getDeclaredFields() {
            return new FieldList.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public MethodList<MethodDescription.InDefinedShape> getDeclaredMethods() {
            return new MethodList.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getDeclaredTypes() {
            return new TypeList.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public MethodDescription.InDefinedShape getEnclosingMethod() {
            return MethodDescription.UNDEFINED;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public TypeDescription getEnclosingType() {
            return TypeDescription.UNDEFINED;
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public AnnotationList getInheritedAnnotations() {
            return new AnnotationList.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public TypeList.Generic getInterfaces() {
            return TypeDescription.ARRAY_INTERFACES;
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        public int getModifiers() {
            return (getComponentType().getModifiers() & (-8713)) | ARRAY_IMPLIED;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeDescription getNestHost() {
            return this;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getNestMembers() {
            return new TypeList.Explicit(this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public PackageDescription getPackage() {
            return PackageDescription.UNDEFINED;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getPermittedSubtypes() {
            return new TypeList.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public RecordComponentList<RecordComponentDescription.InDefinedShape> getRecordComponents() {
            return new RecordComponentList.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public StackSize getStackSize() {
            return StackSize.SINGLE;
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        @MaybeNull
        public Generic getSuperClass() {
            return Generic.OBJECT;
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public TypeList.Generic getTypeVariables() {
            return new TypeList.Generic.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isAnonymousType() {
            return false;
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public boolean isArray() {
            return true;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isLocalType() {
            return false;
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isMemberType() {
            return false;
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public boolean isPrimitive() {
            return false;
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public boolean isRecord() {
            return false;
        }

        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
        /* renamed from: of */
        public static TypeDescription m15198of(TypeDescription typeDescription, int i) {
            if (i >= 0) {
                while (typeDescription.isArray()) {
                    typeDescription = typeDescription.getComponentType();
                    i++;
                }
                return i == 0 ? typeDescription : new ArrayProjection(typeDescription, i);
            }
            throw new IllegalArgumentException("Arrays cannot have a negative arity");
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public String getCanonicalName() {
            String canonicalName = this.componentType.getCanonicalName();
            if (canonicalName == null) {
                return NamedElement.NO_NAME;
            }
            StringBuilder sb = new StringBuilder(canonicalName);
            for (int i = 0; i < this.arity; i++) {
                sb.append("[]");
            }
            return sb.toString();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        @MaybeNull
        public TypeDescription getComponentType() {
            int i = this.arity;
            return i == 1 ? this.componentType : new ArrayProjection(this.componentType, i - 1);
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.DeclaredByType
        @AlwaysNull
        public TypeDescription getDeclaringType() {
            return TypeDescription.UNDEFINED;
        }

        @Override // net.bytebuddy.description.NamedElement.WithDescriptor
        public String getDescriptor() {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < this.arity; i++) {
                sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
            }
            sb.append(this.componentType.getDescriptor());
            return sb.toString();
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            String descriptor = this.componentType.getDescriptor();
            StringBuilder sb = new StringBuilder(descriptor.length() + this.arity);
            for (int i = 0; i < this.arity; i++) {
                sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
            }
            for (int i2 = 0; i2 < descriptor.length(); i2++) {
                char charAt = descriptor.charAt(i2);
                if (charAt == '/') {
                    charAt = TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH;
                }
                sb.append(charAt);
            }
            return sb.toString();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public String getSimpleName() {
            StringBuilder sb = new StringBuilder(this.componentType.getSimpleName());
            for (int i = 0; i < this.arity; i++) {
                sb.append("[]");
            }
            return sb.toString();
        }

        public ArrayProjection(TypeDescription typeDescription, int i) {
            this.componentType = typeDescription;
            this.arity = i;
        }
    }

    @SuppressFBWarnings(justification = "Field is only used as a cache store and is implicitly recomputed", value = {"SE_TRANSIENT_FIELD_NOT_RESTORED"})
    /* loaded from: classes2.dex */
    public static class ForLoadedType extends AbstractBase implements Serializable {
        private static final boolean ACCESS_CONTROLLER;
        private static final Dispatcher DISPATCHER;
        private static final Map<Class<?>, TypeDescription> TYPE_CACHE;
        private static final long serialVersionUID = 1;
        private transient /* synthetic */ ClassFileVersion classFileVersion;
        private transient /* synthetic */ AnnotationList declaredAnnotations;
        private transient /* synthetic */ FieldList declaredFields;
        private transient /* synthetic */ MethodList declaredMethods;
        private final Class<?> type;

        @JavaDispatcher.Defaults
        @JavaDispatcher.Proxied("java.lang.Class")
        /* loaded from: classes2.dex */
        public interface Dispatcher {
            @JavaDispatcher.Proxied("getAnnotatedInterfaces")
            AnnotatedElement[] getAnnotatedInterfaces(Class<?> cls);

            @MaybeNull
            @JavaDispatcher.Proxied("getAnnotatedSuperclass")
            AnnotatedElement getAnnotatedSuperclass(Class<?> cls);

            @MaybeNull
            @JavaDispatcher.Proxied("getNestHost")
            Class<?> getNestHost(Class<?> cls);

            @JavaDispatcher.Proxied("getNestMembers")
            Class<?>[] getNestMembers(Class<?> cls);

            @MaybeNull
            @JavaDispatcher.Proxied("getPermittedSubclasses")
            Class<?>[] getPermittedSubclasses(Class<?> cls);

            @MaybeNull
            @JavaDispatcher.Proxied("getRecordComponents")
            Object[] getRecordComponents(Class<?> cls);

            @JavaDispatcher.Proxied("isNestmateOf")
            boolean isNestmateOf(Class<?> cls, Class<?> cls2);

            @JavaDispatcher.Proxied("isRecord")
            boolean isRecord(Class<?> cls);

            @JavaDispatcher.Proxied("isSealed")
            boolean isSealed(Class<?> cls);
        }

        @AccessControllerPlugin.Enhance
        private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
            return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
        }

        public static String getName(Class<?> cls) {
            String name = cls.getName();
            int indexOf = name.indexOf(47);
            return indexOf == -1 ? name : name.substring(0, indexOf);
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDefinition
        public Generic asGenericType() {
            return Generic.OfNonGenericType.ForLoadedType.m15189of(this.type);
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        @CachedReturnPlugin.Enhance("declaredAnnotations")
        public AnnotationList getDeclaredAnnotations() {
            AnnotationList.ForLoadedAnnotations forLoadedAnnotations = this.declaredAnnotations != null ? null : new AnnotationList.ForLoadedAnnotations(this.type.getDeclaredAnnotations());
            if (forLoadedAnnotations == null) {
                return this.declaredAnnotations;
            }
            this.declaredAnnotations = forLoadedAnnotations;
            return forLoadedAnnotations;
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        @CachedReturnPlugin.Enhance("declaredFields")
        public FieldList<FieldDescription.InDefinedShape> getDeclaredFields() {
            FieldList.ForLoadedFields forLoadedFields = this.declaredFields != null ? null : new FieldList.ForLoadedFields((Field[]) GraalImageCode.getCurrent().sorted(this.type.getDeclaredFields(), FieldComparator.INSTANCE));
            if (forLoadedFields == null) {
                return this.declaredFields;
            }
            this.declaredFields = forLoadedFields;
            return forLoadedFields;
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        @CachedReturnPlugin.Enhance("declaredMethods")
        public MethodList<MethodDescription.InDefinedShape> getDeclaredMethods() {
            MethodList.ForLoadedMethods forLoadedMethods = this.declaredMethods != null ? null : new MethodList.ForLoadedMethods(this.type);
            if (forLoadedMethods == null) {
                return this.declaredMethods;
            }
            this.declaredMethods = forLoadedMethods;
            return forLoadedMethods;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getDeclaredTypes() {
            return new TypeList.ForLoadedTypes(this.type.getDeclaredClasses());
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return this.type.getModifiers();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public StackSize getStackSize() {
            return StackSize.m14977of(this.type);
        }

        @Override // net.bytebuddy.description.ModifierReviewable.AbstractBase, net.bytebuddy.description.ModifierReviewable.ForTypeDefinition
        public boolean isAnnotation() {
            return this.type.isAnnotation();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isAnonymousType() {
            return this.type.isAnonymousClass();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public boolean isArray() {
            return this.type.isArray();
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isAssignableFrom(Class<?> cls) {
            return this.type.isAssignableFrom(cls) || super.isAssignableFrom(cls);
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isAssignableTo(Class<?> cls) {
            return cls.isAssignableFrom(this.type) || super.isAssignableTo(cls);
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isInHierarchyWith(Class<?> cls) {
            return cls.isAssignableFrom(this.type) || this.type.isAssignableFrom(cls) || super.isInHierarchyWith(cls);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isLocalType() {
            return this.type.isLocalClass();
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isMemberType() {
            return this.type.isMemberClass();
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isNestMateOf(Class<?> cls) {
            return DISPATCHER.isNestmateOf(this.type, cls) || super.isNestMateOf(m15196of(cls));
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public boolean isPrimitive() {
            return this.type.isPrimitive();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public boolean isRecord() {
            return DISPATCHER.isRecord(this.type);
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isSealed() {
            return DISPATCHER.isSealed(this.type);
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDefinition
        public boolean represents(Type type) {
            return type == this.type || super.represents(type);
        }

        static {
            boolean z = false;
            try {
                Class.forName("java.security.AccessController", false, null);
                ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
            } catch (ClassNotFoundException unused) {
                ACCESS_CONTROLLER = z;
                DISPATCHER = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
                HashMap hashMap = new HashMap();
                TYPE_CACHE = hashMap;
                hashMap.put(TargetType.class, new ForLoadedType(TargetType.class));
                hashMap.put(Object.class, new ForLoadedType(Object.class));
                hashMap.put(String.class, new ForLoadedType(String.class));
                hashMap.put(Boolean.class, new ForLoadedType(Boolean.class));
                hashMap.put(Byte.class, new ForLoadedType(Byte.class));
                hashMap.put(Short.class, new ForLoadedType(Short.class));
                hashMap.put(Character.class, new ForLoadedType(Character.class));
                hashMap.put(Integer.class, new ForLoadedType(Integer.class));
                hashMap.put(Long.class, new ForLoadedType(Long.class));
                hashMap.put(Float.class, new ForLoadedType(Float.class));
                hashMap.put(Double.class, new ForLoadedType(Double.class));
                Class cls = Void.TYPE;
                hashMap.put(cls, new ForLoadedType(cls));
                Class cls2 = Boolean.TYPE;
                hashMap.put(cls2, new ForLoadedType(cls2));
                Class cls3 = Byte.TYPE;
                hashMap.put(cls3, new ForLoadedType(cls3));
                Class cls4 = Short.TYPE;
                hashMap.put(cls4, new ForLoadedType(cls4));
                Class cls5 = Character.TYPE;
                hashMap.put(cls5, new ForLoadedType(cls5));
                Class cls6 = Integer.TYPE;
                hashMap.put(cls6, new ForLoadedType(cls6));
                Class cls7 = Long.TYPE;
                hashMap.put(cls7, new ForLoadedType(cls7));
                Class cls8 = Float.TYPE;
                hashMap.put(cls8, new ForLoadedType(cls8));
                Class cls9 = Double.TYPE;
                hashMap.put(cls9, new ForLoadedType(cls9));
            } catch (SecurityException unused2) {
                z = true;
                ACCESS_CONTROLLER = z;
                DISPATCHER = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
                HashMap hashMap2 = new HashMap();
                TYPE_CACHE = hashMap2;
                hashMap2.put(TargetType.class, new ForLoadedType(TargetType.class));
                hashMap2.put(Object.class, new ForLoadedType(Object.class));
                hashMap2.put(String.class, new ForLoadedType(String.class));
                hashMap2.put(Boolean.class, new ForLoadedType(Boolean.class));
                hashMap2.put(Byte.class, new ForLoadedType(Byte.class));
                hashMap2.put(Short.class, new ForLoadedType(Short.class));
                hashMap2.put(Character.class, new ForLoadedType(Character.class));
                hashMap2.put(Integer.class, new ForLoadedType(Integer.class));
                hashMap2.put(Long.class, new ForLoadedType(Long.class));
                hashMap2.put(Float.class, new ForLoadedType(Float.class));
                hashMap2.put(Double.class, new ForLoadedType(Double.class));
                Class cls10 = Void.TYPE;
                hashMap2.put(cls10, new ForLoadedType(cls10));
                Class cls22 = Boolean.TYPE;
                hashMap2.put(cls22, new ForLoadedType(cls22));
                Class cls32 = Byte.TYPE;
                hashMap2.put(cls32, new ForLoadedType(cls32));
                Class cls42 = Short.TYPE;
                hashMap2.put(cls42, new ForLoadedType(cls42));
                Class cls52 = Character.TYPE;
                hashMap2.put(cls52, new ForLoadedType(cls52));
                Class cls62 = Integer.TYPE;
                hashMap2.put(cls62, new ForLoadedType(cls62));
                Class cls72 = Long.TYPE;
                hashMap2.put(cls72, new ForLoadedType(cls72));
                Class cls82 = Float.TYPE;
                hashMap2.put(cls82, new ForLoadedType(cls82));
                Class cls92 = Double.TYPE;
                hashMap2.put(cls92, new ForLoadedType(cls92));
            }
            DISPATCHER = (Dispatcher) doPrivileged(JavaDispatcher.m14754of(Dispatcher.class));
            HashMap hashMap22 = new HashMap();
            TYPE_CACHE = hashMap22;
            hashMap22.put(TargetType.class, new ForLoadedType(TargetType.class));
            hashMap22.put(Object.class, new ForLoadedType(Object.class));
            hashMap22.put(String.class, new ForLoadedType(String.class));
            hashMap22.put(Boolean.class, new ForLoadedType(Boolean.class));
            hashMap22.put(Byte.class, new ForLoadedType(Byte.class));
            hashMap22.put(Short.class, new ForLoadedType(Short.class));
            hashMap22.put(Character.class, new ForLoadedType(Character.class));
            hashMap22.put(Integer.class, new ForLoadedType(Integer.class));
            hashMap22.put(Long.class, new ForLoadedType(Long.class));
            hashMap22.put(Float.class, new ForLoadedType(Float.class));
            hashMap22.put(Double.class, new ForLoadedType(Double.class));
            Class cls102 = Void.TYPE;
            hashMap22.put(cls102, new ForLoadedType(cls102));
            Class cls222 = Boolean.TYPE;
            hashMap22.put(cls222, new ForLoadedType(cls222));
            Class cls322 = Byte.TYPE;
            hashMap22.put(cls322, new ForLoadedType(cls322));
            Class cls422 = Short.TYPE;
            hashMap22.put(cls422, new ForLoadedType(cls422));
            Class cls522 = Character.TYPE;
            hashMap22.put(cls522, new ForLoadedType(cls522));
            Class cls622 = Integer.TYPE;
            hashMap22.put(cls622, new ForLoadedType(cls622));
            Class cls722 = Long.TYPE;
            hashMap22.put(cls722, new ForLoadedType(cls722));
            Class cls822 = Float.TYPE;
            hashMap22.put(cls822, new ForLoadedType(cls822));
            Class cls922 = Double.TYPE;
            hashMap22.put(cls922, new ForLoadedType(cls922));
        }

        /* renamed from: of */
        public static TypeDescription m15196of(Class<?> cls) {
            TypeDescription typeDescription = TYPE_CACHE.get(cls);
            if (typeDescription == null) {
                return new ForLoadedType(cls);
            }
            return typeDescription;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public String getCanonicalName() {
            String canonicalName = this.type.getCanonicalName();
            if (canonicalName == null) {
                return NamedElement.NO_NAME;
            }
            int indexOf = canonicalName.indexOf(47);
            if (indexOf == -1) {
                return canonicalName;
            }
            StringBuilder sb = new StringBuilder(canonicalName.substring(0, indexOf));
            for (Class<?> cls = this.type; cls.isArray(); cls = cls.getComponentType()) {
                sb.append("[]");
            }
            return sb.toString();
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        @CachedReturnPlugin.Enhance("classFileVersion")
        @MaybeNull
        public ClassFileVersion getClassFileVersion() {
            ClassFileVersion classFileVersion = null;
            if (this.classFileVersion == null) {
                try {
                    classFileVersion = ClassFileVersion.m15382of(this.type);
                } catch (Throwable unused) {
                }
            }
            if (classFileVersion == null) {
                return this.classFileVersion;
            }
            this.classFileVersion = classFileVersion;
            return classFileVersion;
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        @MaybeNull
        public TypeDescription getComponentType() {
            Class<?> componentType = this.type.getComponentType();
            if (componentType == null) {
                return TypeDescription.UNDEFINED;
            }
            return m15196of(componentType);
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.DeclaredByType
        @MaybeNull
        public TypeDescription getDeclaringType() {
            Class<?> declaringClass = this.type.getDeclaringClass();
            if (declaringClass == null) {
                return TypeDescription.UNDEFINED;
            }
            return m15196of(declaringClass);
        }

        @Override // net.bytebuddy.description.NamedElement.WithDescriptor
        public String getDescriptor() {
            String name = this.type.getName();
            int indexOf = name.indexOf(47);
            if (indexOf == -1) {
                return net.bytebuddy.jar.asm.Type.getDescriptor(this.type);
            }
            return "L" + name.substring(0, indexOf).replace(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/') + ";";
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public MethodDescription.InDefinedShape getEnclosingMethod() {
            Method enclosingMethod = this.type.getEnclosingMethod();
            Constructor<?> enclosingConstructor = this.type.getEnclosingConstructor();
            if (enclosingMethod != null) {
                return new MethodDescription.ForLoadedMethod(enclosingMethod);
            }
            if (enclosingConstructor != null) {
                return new MethodDescription.ForLoadedConstructor(enclosingConstructor);
            }
            return MethodDescription.UNDEFINED;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeDescription getEnclosingType() {
            Class<?> enclosingClass = this.type.getEnclosingClass();
            if (enclosingClass == null) {
                return TypeDescription.UNDEFINED;
            }
            return m15196of(enclosingClass);
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public TypeList.Generic getInterfaces() {
            if (AbstractBase.RAW_TYPES) {
                if (isArray()) {
                    return TypeDescription.ARRAY_INTERFACES;
                }
                return new TypeList.Generic.ForLoadedTypes(this.type.getInterfaces());
            } else if (isArray()) {
                return TypeDescription.ARRAY_INTERFACES;
            } else {
                return new TypeList.Generic.OfLoadedInterfaceTypes(this.type);
            }
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeDescription getNestHost() {
            Class<?> nestHost = DISPATCHER.getNestHost(this.type);
            if (nestHost == null) {
                return this;
            }
            return m15196of(nestHost);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getNestMembers() {
            Class<?>[] nestMembers = DISPATCHER.getNestMembers(this.type);
            if (nestMembers.length == 0) {
                nestMembers = new Class[]{this.type};
            }
            return new TypeList.ForLoadedTypes(nestMembers);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public PackageDescription getPackage() {
            if (!this.type.isArray() && !this.type.isPrimitive()) {
                Package r0 = this.type.getPackage();
                if (r0 == null) {
                    String name = this.type.getName();
                    int lastIndexOf = name.lastIndexOf(46);
                    if (lastIndexOf == -1) {
                        return new PackageDescription.Simple("");
                    }
                    return new PackageDescription.Simple(name.substring(0, lastIndexOf));
                }
                return new PackageDescription.ForLoadedPackage(r0);
            }
            return PackageDescription.UNDEFINED;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getPermittedSubtypes() {
            Class<?>[] permittedSubclasses = DISPATCHER.getPermittedSubclasses(this.type);
            if (permittedSubclasses == null) {
                return new TypeList.Empty();
            }
            return new TypeList.ForLoadedTypes(permittedSubclasses);
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public RecordComponentList<RecordComponentDescription.InDefinedShape> getRecordComponents() {
            Object[] recordComponents = DISPATCHER.getRecordComponents(this.type);
            if (recordComponents == null) {
                return new RecordComponentList.Empty();
            }
            return new RecordComponentList.ForLoadedRecordComponents(recordComponents);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public String getSimpleName() {
            String simpleName = this.type.getSimpleName();
            int indexOf = simpleName.indexOf(47);
            if (indexOf == -1) {
                return simpleName;
            }
            StringBuilder sb = new StringBuilder(simpleName.substring(0, indexOf));
            for (Class<?> cls = this.type; cls.isArray(); cls = cls.getComponentType()) {
                sb.append("[]");
            }
            return sb.toString();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        @MaybeNull
        public Generic getSuperClass() {
            if (AbstractBase.RAW_TYPES) {
                if (this.type.getSuperclass() == null) {
                    return Generic.UNDEFINED;
                }
                return Generic.OfNonGenericType.ForLoadedType.m15189of(this.type.getSuperclass());
            }
            return Generic.LazyProjection.ForLoadedSuperClass.m15192of(this.type);
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public TypeList.Generic getTypeVariables() {
            if (AbstractBase.RAW_TYPES) {
                return new TypeList.Generic.Empty();
            }
            return TypeList.Generic.ForLoadedTypes.OfTypeVariables.m15178of((GenericDeclaration) this.type);
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isAssignableFrom(TypeDescription typeDescription) {
            return ((typeDescription instanceof ForLoadedType) && this.type.isAssignableFrom(((ForLoadedType) typeDescription).type)) || super.isAssignableFrom(typeDescription);
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isAssignableTo(TypeDescription typeDescription) {
            return ((typeDescription instanceof ForLoadedType) && ((ForLoadedType) typeDescription).type.isAssignableFrom(this.type)) || super.isAssignableTo(typeDescription);
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
            if (r3.type.isAssignableFrom(r0.type) == false) goto L9;
         */
        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean isInHierarchyWith(net.bytebuddy.description.type.TypeDescription r4) {
            /*
                r3 = this;
                boolean r0 = r4 instanceof net.bytebuddy.description.type.TypeDescription.ForLoadedType
                if (r0 == 0) goto L1b
                r0 = r4
                net.bytebuddy.description.type.TypeDescription$ForLoadedType r0 = (net.bytebuddy.description.type.TypeDescription.ForLoadedType) r0
                java.lang.Class<?> r1 = r0.type
                java.lang.Class<?> r2 = r3.type
                boolean r1 = r1.isAssignableFrom(r2)
                if (r1 != 0) goto L21
                java.lang.Class<?> r1 = r3.type
                java.lang.Class<?> r0 = r0.type
                boolean r0 = r1.isAssignableFrom(r0)
                if (r0 != 0) goto L21
            L1b:
                boolean r4 = super.isInHierarchyWith(r4)
                if (r4 == 0) goto L23
            L21:
                r4 = 1
                goto L24
            L23:
                r4 = 0
            L24:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.description.type.TypeDescription.ForLoadedType.isInHierarchyWith(net.bytebuddy.description.type.TypeDescription):boolean");
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isNestHost() {
            Class<?> nestHost = DISPATCHER.getNestHost(this.type);
            if (nestHost != null && nestHost != this.type) {
                return false;
            }
            return true;
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isNestMateOf(TypeDescription typeDescription) {
            return ((typeDescription instanceof ForLoadedType) && DISPATCHER.isNestmateOf(this.type, ((ForLoadedType) typeDescription).type)) || super.isNestMateOf(typeDescription);
        }

        public ForLoadedType(Class<?> cls) {
            this.type = cls;
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return getName(this.type);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForPackageDescription extends AbstractBase.OfSimpleType {
        private final PackageDescription packageDescription;

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return this.packageDescription.getDeclaredAnnotations();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public FieldList<FieldDescription.InDefinedShape> getDeclaredFields() {
            return new FieldList.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public MethodList<MethodDescription.InDefinedShape> getDeclaredMethods() {
            return new MethodList.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getDeclaredTypes() {
            return new TypeList.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public MethodDescription.InDefinedShape getEnclosingMethod() {
            return MethodDescription.UNDEFINED;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public TypeDescription getEnclosingType() {
            return TypeDescription.UNDEFINED;
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public TypeList.Generic getInterfaces() {
            return new TypeList.Generic.Empty();
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return PackageDescription.PACKAGE_MODIFIERS;
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return this.packageDescription.getName() + "." + PackageDescription.PACKAGE_CLASS_NAME;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeDescription getNestHost() {
            return this;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getNestMembers() {
            return new TypeList.Explicit(this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public PackageDescription getPackage() {
            return this.packageDescription;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getPermittedSubtypes() {
            return new TypeList.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public RecordComponentList<RecordComponentDescription.InDefinedShape> getRecordComponents() {
            return new RecordComponentList.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        @MaybeNull
        public Generic getSuperClass() {
            return Generic.OBJECT;
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public TypeList.Generic getTypeVariables() {
            return new TypeList.Generic.Empty();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isAnonymousType() {
            return false;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isLocalType() {
            return false;
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public boolean isRecord() {
            return false;
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.DeclaredByType
        @MaybeNull
        public TypeDescription getDeclaringType() {
            return TypeDescription.UNDEFINED;
        }

        public ForPackageDescription(PackageDescription packageDescription) {
            this.packageDescription = packageDescription;
        }
    }

    /* loaded from: classes2.dex */
    public interface Generic extends TypeDefinition, AnnotationSource {
        public static final Generic OBJECT = new OfNonGenericType.ForLoadedType(Object.class);
        public static final Generic CLASS = new OfNonGenericType.ForLoadedType(Class.class);
        public static final Generic VOID = new OfNonGenericType.ForLoadedType(Void.TYPE);
        public static final Generic ANNOTATION = new OfNonGenericType.ForLoadedType(Annotation.class);
        @AlwaysNull
        public static final Generic UNDEFINED = null;

        /* loaded from: classes2.dex */
        public static abstract class AbstractBase extends ModifierReviewable.AbstractBase implements Generic {
            @Override // net.bytebuddy.description.type.TypeDefinition
            public Generic asGenericType() {
                return this;
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public Generic asRawType() {
                return asErasure().asGenericType();
            }

            @Override // net.bytebuddy.description.ModifierReviewable
            public int getModifiers() {
                return asErasure().getModifiers();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean represents(Type type) {
                return equals(TypeDefinition.Sort.describe(type));
            }
        }

        /* loaded from: classes2.dex */
        public interface AnnotationReader {

            /* loaded from: classes2.dex */
            public static abstract class Delegator implements AnnotationReader {
                private static final boolean ACCESS_CONTROLLER;

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public static class ForLoadedExecutableExceptionType extends Delegator {
                    public static final Dispatcher DISPATCHER = (Dispatcher) Delegator.m15195a(JavaDispatcher.m14754of(Dispatcher.class));
                    private final AccessibleObject executable;
                    private final int index;

                    @JavaDispatcher.Proxied("java.lang.reflect.Executable")
                    /* loaded from: classes2.dex */
                    public interface Dispatcher {
                        @JavaDispatcher.Defaults
                        @JavaDispatcher.Proxied("getAnnotatedExceptionTypes")
                        AnnotatedElement[] getAnnotatedExceptionTypes(Object obj);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForLoadedExecutableExceptionType forLoadedExecutableExceptionType = (ForLoadedExecutableExceptionType) obj;
                            return this.index == forLoadedExecutableExceptionType.index && this.executable.equals(forLoadedExecutableExceptionType.executable);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.executable.hashCode()) * 31) + this.index;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                    public AnnotatedElement resolve() {
                        AnnotatedElement[] annotatedExceptionTypes = DISPATCHER.getAnnotatedExceptionTypes(this.executable);
                        if (annotatedExceptionTypes.length == 0) {
                            return NoOp.INSTANCE;
                        }
                        return annotatedExceptionTypes[this.index];
                    }

                    public ForLoadedExecutableExceptionType(AccessibleObject accessibleObject, int i) {
                        this.executable = accessibleObject;
                        this.index = i;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public static class ForLoadedExecutableParameterType extends Delegator {
                    public static final Dispatcher DISPATCHER = (Dispatcher) Delegator.m15195a(JavaDispatcher.m14754of(Dispatcher.class));
                    private final AccessibleObject executable;
                    private final int index;

                    @JavaDispatcher.Proxied("java.lang.reflect.Executable")
                    /* loaded from: classes2.dex */
                    public interface Dispatcher {
                        @JavaDispatcher.Defaults
                        @JavaDispatcher.Proxied("getAnnotatedParameterTypes")
                        AnnotatedElement[] getAnnotatedParameterTypes(Object obj);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForLoadedExecutableParameterType forLoadedExecutableParameterType = (ForLoadedExecutableParameterType) obj;
                            return this.index == forLoadedExecutableParameterType.index && this.executable.equals(forLoadedExecutableParameterType.executable);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.executable.hashCode()) * 31) + this.index;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                    public AnnotatedElement resolve() {
                        AnnotatedElement[] annotatedParameterTypes = DISPATCHER.getAnnotatedParameterTypes(this.executable);
                        if (annotatedParameterTypes.length == 0) {
                            return NoOp.INSTANCE;
                        }
                        return annotatedParameterTypes[this.index];
                    }

                    public ForLoadedExecutableParameterType(AccessibleObject accessibleObject, int i) {
                        this.executable = accessibleObject;
                        this.index = i;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public static class ForLoadedField extends Delegator {
                    public static final Dispatcher DISPATCHER = (Dispatcher) Delegator.m15195a(JavaDispatcher.m14754of(Dispatcher.class));
                    private final Field field;

                    @JavaDispatcher.Proxied("java.lang.reflect.Field")
                    /* loaded from: classes2.dex */
                    public interface Dispatcher {
                        @JavaDispatcher.Defaults
                        @MaybeNull
                        @JavaDispatcher.Proxied("getAnnotatedType")
                        AnnotatedElement getAnnotatedType(Field field);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.field.equals(((ForLoadedField) obj).field);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.field.hashCode();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                    public AnnotatedElement resolve() {
                        AnnotatedElement annotatedType = DISPATCHER.getAnnotatedType(this.field);
                        if (annotatedType == null) {
                            return NoOp.INSTANCE;
                        }
                        return annotatedType;
                    }

                    public ForLoadedField(Field field) {
                        this.field = field;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public static class ForLoadedMethodReturnType extends Delegator {
                    public static final Dispatcher DISPATCHER = (Dispatcher) Delegator.m15195a(JavaDispatcher.m14754of(Dispatcher.class));
                    private final Method method;

                    @JavaDispatcher.Proxied("java.lang.reflect.Method")
                    /* loaded from: classes2.dex */
                    public interface Dispatcher {
                        @JavaDispatcher.Defaults
                        @MaybeNull
                        @JavaDispatcher.Proxied("getAnnotatedReturnType")
                        AnnotatedElement getAnnotatedReturnType(Method method);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.method.equals(((ForLoadedMethodReturnType) obj).method);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.method.hashCode();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                    public AnnotatedElement resolve() {
                        AnnotatedElement annotatedReturnType = DISPATCHER.getAnnotatedReturnType(this.method);
                        if (annotatedReturnType == null) {
                            return NoOp.INSTANCE;
                        }
                        return annotatedReturnType;
                    }

                    public ForLoadedMethodReturnType(Method method) {
                        this.method = method;
                    }
                }

                static {
                    boolean z = false;
                    try {
                        Class.forName("java.security.AccessController", false, null);
                        ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
                    } catch (ClassNotFoundException unused) {
                        ACCESS_CONTROLLER = z;
                    } catch (SecurityException unused2) {
                        z = true;
                        ACCESS_CONTROLLER = z;
                    }
                }

                @AccessControllerPlugin.Enhance
                /* renamed from: a */
                public static <T> T m15195a(PrivilegedAction<T> privilegedAction) {
                    return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationList asList() {
                    return new AnnotationList.ForLoadedAnnotations(resolve().getDeclaredAnnotations());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofComponentType() {
                    return new ForComponentType(this);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofOuterClass() {
                    return new ForOwnerType(this);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofOwnerType() {
                    return new ForOwnerType(this);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofTypeArgument(int i) {
                    return new ForTypeArgument(this, i);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofTypeVariableBoundType(int i) {
                    return new ForTypeVariableBoundType(this, i);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofWildcardLowerBoundType(int i) {
                    return new ForWildcardLowerBoundType(this, i);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofWildcardUpperBoundType(int i) {
                    return new ForWildcardUpperBoundType(this, i);
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static abstract class Chained extends Delegator {
                    public final AnnotationReader annotationReader;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.annotationReader.equals(((Chained) obj).annotationReader);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.annotationReader.hashCode();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                    public AnnotatedElement resolve() {
                        return resolve(this.annotationReader.resolve());
                    }

                    public abstract AnnotatedElement resolve(AnnotatedElement annotatedElement);

                    public Chained(AnnotationReader annotationReader) {
                        this.annotationReader = annotationReader;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public static class ForLoadedInterface extends Delegator {
                    private final int index;
                    private final Class<?> type;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForLoadedInterface forLoadedInterface = (ForLoadedInterface) obj;
                            return this.index == forLoadedInterface.index && this.type.equals(forLoadedInterface.type);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.type.hashCode()) * 31) + this.index;
                    }

                    public ForLoadedInterface(Class<?> cls, int i) {
                        this.type = cls;
                        this.index = i;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                    public AnnotatedElement resolve() {
                        AnnotatedElement[] annotatedInterfaces = ForLoadedType.DISPATCHER.getAnnotatedInterfaces(this.type);
                        if (annotatedInterfaces.length == 0) {
                            return NoOp.INSTANCE;
                        }
                        return annotatedInterfaces[this.index];
                    }
                }

                /* loaded from: classes2.dex */
                public static class ForLoadedRecordComponent extends Delegator {
                    private final Object recordComponent;

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                    public AnnotatedElement resolve() {
                        return RecordComponentDescription.ForLoadedRecordComponent.RECORD_COMPONENT.getAnnotatedType(this.recordComponent);
                    }

                    public ForLoadedRecordComponent(Object obj) {
                        this.recordComponent = obj;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                /* loaded from: classes.dex */
                public static class ForLoadedSuperClass extends Delegator {
                    private final Class<?> type;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.type.equals(((ForLoadedSuperClass) obj).type);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.type.hashCode();
                    }

                    public ForLoadedSuperClass(Class<?> cls) {
                        this.type = cls;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                    public AnnotatedElement resolve() {
                        AnnotatedElement annotatedSuperclass = ForLoadedType.DISPATCHER.getAnnotatedSuperclass(this.type);
                        if (annotatedSuperclass == null) {
                            return NoOp.INSTANCE;
                        }
                        return annotatedSuperclass;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForLoadedTypeVariable extends Delegator {
                    private final TypeVariable<?> typeVariable;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.typeVariable.equals(((ForLoadedTypeVariable) obj).typeVariable);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.typeVariable.hashCode();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator, net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                    public AnnotationReader ofTypeVariableBoundType(int i) {
                        return new ForTypeVariableBoundType.OfFormalTypeVariable(this.typeVariable, i);
                    }

                    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.reflect.TypeVariable<?>, java.lang.reflect.AnnotatedElement] */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                    @SuppressFBWarnings(justification = "Cast is required for JVMs before Java 8.", value = {"BC_VACUOUS_INSTANCEOF"})
                    public AnnotatedElement resolve() {
                        ?? r0 = this.typeVariable;
                        return r0 instanceof AnnotatedElement ? r0 : NoOp.INSTANCE;
                    }

                    public ForLoadedTypeVariable(TypeVariable<?> typeVariable) {
                        this.typeVariable = typeVariable;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class Simple extends Delegator {
                    private final AnnotatedElement annotatedElement;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.annotatedElement.equals(((Simple) obj).annotatedElement);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.annotatedElement.hashCode();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                    public AnnotatedElement resolve() {
                        return this.annotatedElement;
                    }

                    public Simple(AnnotatedElement annotatedElement) {
                        this.annotatedElement = annotatedElement;
                    }
                }
            }

            /* loaded from: classes2.dex */
            public static class ForComponentType extends Delegator.Chained {
                private static final AnnotatedParameterizedType ANNOTATED_PARAMETERIZED_TYPE = (AnnotatedParameterizedType) Delegator.m15195a(JavaDispatcher.m14754of(AnnotatedParameterizedType.class));

                @JavaDispatcher.Proxied("java.lang.reflect.AnnotatedArrayType")
                /* loaded from: classes2.dex */
                public interface AnnotatedParameterizedType {
                    @JavaDispatcher.Proxied("getAnnotatedGenericComponentType")
                    AnnotatedElement getAnnotatedGenericComponentType(AnnotatedElement annotatedElement);

                    @JavaDispatcher.Instance
                    @JavaDispatcher.Proxied("isInstance")
                    boolean isInstance(AnnotatedElement annotatedElement);
                }

                public ForComponentType(AnnotationReader annotationReader) {
                    super(annotationReader);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained, net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public /* bridge */ /* synthetic */ AnnotatedElement resolve() {
                    return super.resolve();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public AnnotatedElement resolve(AnnotatedElement annotatedElement) {
                    AnnotatedParameterizedType annotatedParameterizedType = ANNOTATED_PARAMETERIZED_TYPE;
                    if (!annotatedParameterizedType.isInstance(annotatedElement)) {
                        return NoOp.INSTANCE;
                    }
                    try {
                        return annotatedParameterizedType.getAnnotatedGenericComponentType(annotatedElement);
                    } catch (ClassCastException unused) {
                        return NoOp.INSTANCE;
                    }
                }
            }

            /* loaded from: classes2.dex */
            public static class ForOwnerType extends Delegator.Chained {
                private static final AnnotatedType ANNOTATED_TYPE = (AnnotatedType) Delegator.m15195a(JavaDispatcher.m14754of(AnnotatedType.class));

                @JavaDispatcher.Proxied("java.lang.reflect.AnnotatedType")
                /* loaded from: classes2.dex */
                public interface AnnotatedType {
                    @JavaDispatcher.Defaults
                    @MaybeNull
                    @JavaDispatcher.Proxied("getAnnotatedOwnerType")
                    AnnotatedElement getAnnotatedOwnerType(AnnotatedElement annotatedElement);
                }

                public ForOwnerType(AnnotationReader annotationReader) {
                    super(annotationReader);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained, net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public /* bridge */ /* synthetic */ AnnotatedElement resolve() {
                    return super.resolve();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public AnnotatedElement resolve(AnnotatedElement annotatedElement) {
                    try {
                        AnnotatedElement annotatedOwnerType = ANNOTATED_TYPE.getAnnotatedOwnerType(annotatedElement);
                        return annotatedOwnerType == null ? NoOp.INSTANCE : annotatedOwnerType;
                    } catch (ClassCastException unused) {
                        return NoOp.INSTANCE;
                    }
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForTypeArgument extends Delegator.Chained {
                private static final AnnotatedParameterizedType ANNOTATED_PARAMETERIZED_TYPE = (AnnotatedParameterizedType) Delegator.m15195a(JavaDispatcher.m14754of(AnnotatedParameterizedType.class));
                private final int index;

                @JavaDispatcher.Proxied("java.lang.reflect.AnnotatedParameterizedType")
                /* loaded from: classes2.dex */
                public interface AnnotatedParameterizedType {
                    @JavaDispatcher.Proxied("getAnnotatedActualTypeArguments")
                    AnnotatedElement[] getAnnotatedActualTypeArguments(AnnotatedElement annotatedElement);

                    @JavaDispatcher.Instance
                    @JavaDispatcher.Proxied("isInstance")
                    boolean isInstance(AnnotatedElement annotatedElement);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.index == ((ForTypeArgument) obj).index;
                    }
                    return false;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public int hashCode() {
                    return (super.hashCode() * 31) + this.index;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained, net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public /* bridge */ /* synthetic */ AnnotatedElement resolve() {
                    return super.resolve();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public AnnotatedElement resolve(AnnotatedElement annotatedElement) {
                    AnnotatedParameterizedType annotatedParameterizedType = ANNOTATED_PARAMETERIZED_TYPE;
                    if (!annotatedParameterizedType.isInstance(annotatedElement)) {
                        return NoOp.INSTANCE;
                    }
                    try {
                        return annotatedParameterizedType.getAnnotatedActualTypeArguments(annotatedElement)[this.index];
                    } catch (ClassCastException unused) {
                        return NoOp.INSTANCE;
                    }
                }

                public ForTypeArgument(AnnotationReader annotationReader, int i) {
                    super(annotationReader);
                    this.index = i;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForTypeVariableBoundType extends Delegator.Chained {
                private static final AnnotatedTypeVariable ANNOTATED_TYPE_VARIABLE = (AnnotatedTypeVariable) Delegator.m15195a(JavaDispatcher.m14754of(AnnotatedTypeVariable.class));
                private final int index;

                @JavaDispatcher.Proxied("java.lang.reflect.AnnotatedTypeVariable")
                /* loaded from: classes2.dex */
                public interface AnnotatedTypeVariable {
                    @JavaDispatcher.Proxied("getAnnotatedBounds")
                    AnnotatedElement[] getAnnotatedBounds(AnnotatedElement annotatedElement);

                    @JavaDispatcher.Instance
                    @JavaDispatcher.Proxied("isInstance")
                    boolean isInstance(AnnotatedElement annotatedElement);
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class OfFormalTypeVariable extends Delegator {
                    private static final FormalTypeVariable TYPE_VARIABLE = (FormalTypeVariable) Delegator.m15195a(JavaDispatcher.m14754of(FormalTypeVariable.class));
                    private final int index;
                    private final TypeVariable<?> typeVariable;

                    @JavaDispatcher.Proxied("java.lang.reflect.TypeVariable")
                    /* loaded from: classes2.dex */
                    public interface FormalTypeVariable {
                        @JavaDispatcher.Defaults
                        @JavaDispatcher.Proxied("getAnnotatedBounds")
                        AnnotatedElement[] getAnnotatedBounds(Object obj);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            OfFormalTypeVariable ofFormalTypeVariable = (OfFormalTypeVariable) obj;
                            return this.index == ofFormalTypeVariable.index && this.typeVariable.equals(ofFormalTypeVariable.typeVariable);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.typeVariable.hashCode()) * 31) + this.index;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                    public AnnotatedElement resolve() {
                        try {
                            AnnotatedElement[] annotatedBounds = TYPE_VARIABLE.getAnnotatedBounds(this.typeVariable);
                            if (annotatedBounds.length == 0) {
                                return NoOp.INSTANCE;
                            }
                            return annotatedBounds[this.index];
                        } catch (ClassCastException unused) {
                            return NoOp.INSTANCE;
                        }
                    }

                    public OfFormalTypeVariable(TypeVariable<?> typeVariable, int i) {
                        this.typeVariable = typeVariable;
                        this.index = i;
                    }
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.index == ((ForTypeVariableBoundType) obj).index;
                    }
                    return false;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public int hashCode() {
                    return (super.hashCode() * 31) + this.index;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained, net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public /* bridge */ /* synthetic */ AnnotatedElement resolve() {
                    return super.resolve();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public AnnotatedElement resolve(AnnotatedElement annotatedElement) {
                    AnnotatedTypeVariable annotatedTypeVariable = ANNOTATED_TYPE_VARIABLE;
                    if (!annotatedTypeVariable.isInstance(annotatedElement)) {
                        return NoOp.INSTANCE;
                    }
                    try {
                        return annotatedTypeVariable.getAnnotatedBounds(annotatedElement)[this.index];
                    } catch (ClassCastException unused) {
                        return NoOp.INSTANCE;
                    }
                }

                public ForTypeVariableBoundType(AnnotationReader annotationReader, int i) {
                    super(annotationReader);
                    this.index = i;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForWildcardLowerBoundType extends Delegator.Chained {
                private static final AnnotatedWildcardType ANNOTATED_WILDCARD_TYPE = (AnnotatedWildcardType) Delegator.m15195a(JavaDispatcher.m14754of(AnnotatedWildcardType.class));
                private final int index;

                @JavaDispatcher.Proxied("java.lang.reflect.AnnotatedWildcardType")
                /* loaded from: classes2.dex */
                public interface AnnotatedWildcardType {
                    @JavaDispatcher.Proxied("getAnnotatedLowerBounds")
                    AnnotatedElement[] getAnnotatedLowerBounds(AnnotatedElement annotatedElement);

                    @JavaDispatcher.Instance
                    @JavaDispatcher.Proxied("isInstance")
                    boolean isInstance(AnnotatedElement annotatedElement);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.index == ((ForWildcardLowerBoundType) obj).index;
                    }
                    return false;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public int hashCode() {
                    return (super.hashCode() * 31) + this.index;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained, net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public /* bridge */ /* synthetic */ AnnotatedElement resolve() {
                    return super.resolve();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public AnnotatedElement resolve(AnnotatedElement annotatedElement) {
                    AnnotatedWildcardType annotatedWildcardType = ANNOTATED_WILDCARD_TYPE;
                    if (!annotatedWildcardType.isInstance(annotatedElement)) {
                        return NoOp.INSTANCE;
                    }
                    try {
                        return annotatedWildcardType.getAnnotatedLowerBounds(annotatedElement)[this.index];
                    } catch (ClassCastException unused) {
                        return NoOp.INSTANCE;
                    }
                }

                public ForWildcardLowerBoundType(AnnotationReader annotationReader, int i) {
                    super(annotationReader);
                    this.index = i;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForWildcardUpperBoundType extends Delegator.Chained {
                private static final AnnotatedWildcardType ANNOTATED_WILDCARD_TYPE = (AnnotatedWildcardType) Delegator.m15195a(JavaDispatcher.m14754of(AnnotatedWildcardType.class));
                private final int index;

                @JavaDispatcher.Proxied("java.lang.reflect.AnnotatedWildcardType")
                /* loaded from: classes2.dex */
                public interface AnnotatedWildcardType {
                    @JavaDispatcher.Proxied("getAnnotatedUpperBounds")
                    AnnotatedElement[] getAnnotatedUpperBounds(AnnotatedElement annotatedElement);

                    @JavaDispatcher.Instance
                    @JavaDispatcher.Proxied("isInstance")
                    boolean isInstance(AnnotatedElement annotatedElement);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.index == ((ForWildcardUpperBoundType) obj).index;
                    }
                    return false;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public int hashCode() {
                    return (super.hashCode() * 31) + this.index;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained, net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public /* bridge */ /* synthetic */ AnnotatedElement resolve() {
                    return super.resolve();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader.Delegator.Chained
                public AnnotatedElement resolve(AnnotatedElement annotatedElement) {
                    AnnotatedWildcardType annotatedWildcardType = ANNOTATED_WILDCARD_TYPE;
                    if (!annotatedWildcardType.isInstance(annotatedElement)) {
                        return NoOp.INSTANCE;
                    }
                    try {
                        AnnotatedElement[] annotatedUpperBounds = annotatedWildcardType.getAnnotatedUpperBounds(annotatedElement);
                        return annotatedUpperBounds.length == 0 ? NoOp.INSTANCE : annotatedUpperBounds[this.index];
                    } catch (ClassCastException unused) {
                        return NoOp.INSTANCE;
                    }
                }

                public ForWildcardUpperBoundType(AnnotationReader annotationReader, int i) {
                    super(annotationReader);
                    this.index = i;
                }
            }

            /* loaded from: classes2.dex */
            public enum NoOp implements AnnotationReader, AnnotatedElement {
                INSTANCE;

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationList asList() {
                    return new AnnotationList.Empty();
                }

                @Override // java.lang.reflect.AnnotatedElement
                public <T extends Annotation> T getAnnotation(Class<T> cls) {
                    throw new IllegalStateException("Cannot resolve annotations for no-op reader: " + this);
                }

                @Override // java.lang.reflect.AnnotatedElement
                public Annotation[] getAnnotations() {
                    throw new IllegalStateException("Cannot resolve annotations for no-op reader: " + this);
                }

                @Override // java.lang.reflect.AnnotatedElement
                public Annotation[] getDeclaredAnnotations() {
                    return new Annotation[0];
                }

                @Override // java.lang.reflect.AnnotatedElement
                public boolean isAnnotationPresent(Class<? extends Annotation> cls) {
                    throw new IllegalStateException("Cannot resolve annotations for no-op reader: " + this);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofComponentType() {
                    return this;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofOuterClass() {
                    return this;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofOwnerType() {
                    return this;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofTypeArgument(int i) {
                    return this;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofTypeVariableBoundType(int i) {
                    return this;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofWildcardLowerBoundType(int i) {
                    return this;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotationReader ofWildcardUpperBoundType(int i) {
                    return this;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AnnotationReader
                public AnnotatedElement resolve() {
                    return this;
                }
            }

            AnnotationList asList();

            AnnotationReader ofComponentType();

            AnnotationReader ofOuterClass();

            AnnotationReader ofOwnerType();

            AnnotationReader ofTypeArgument(int i);

            AnnotationReader ofTypeVariableBoundType(int i);

            AnnotationReader ofWildcardLowerBoundType(int i);

            AnnotationReader ofWildcardUpperBoundType(int i);

            AnnotatedElement resolve();
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static abstract class Builder {
            @AlwaysNull
            private static final Type UNDEFINED = null;
            public final List<? extends AnnotationDescription> annotations;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfGenericArrayType extends Builder {
                private final Generic componentType;

                public OfGenericArrayType(Generic generic) {
                    this(generic, Collections.emptyList());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public Builder doAnnotate(List<? extends AnnotationDescription> list) {
                    return new OfGenericArrayType(this.componentType, CompoundList.m14776of((List) this.annotations, (List) list));
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public Generic doBuild() {
                    return new OfGenericArray.Latent(this.componentType, new AnnotationSource.Explicit(this.annotations));
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.componentType.equals(((OfGenericArrayType) obj).componentType);
                    }
                    return false;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public int hashCode() {
                    return (super.hashCode() * 31) + this.componentType.hashCode();
                }

                public OfGenericArrayType(Generic generic, List<? extends AnnotationDescription> list) {
                    super(list);
                    this.componentType = generic;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfNonGenericType extends Builder {
                @MaybeNull
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                private final Generic ownerType;
                private final TypeDescription typeDescription;

                public OfNonGenericType(TypeDescription typeDescription) {
                    this(typeDescription, typeDescription.getDeclaringType());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public Builder doAnnotate(List<? extends AnnotationDescription> list) {
                    return new OfNonGenericType(this.typeDescription, this.ownerType, CompoundList.m14776of((List) this.annotations, (List) list));
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x0039 A[RETURN] */
                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
                    /*
                        r4 = this;
                        boolean r0 = super.equals(r5)
                        r1 = 0
                        if (r0 != 0) goto L8
                        return r1
                    L8:
                        r0 = 1
                        if (r4 != r5) goto Lc
                        return r0
                    Lc:
                        if (r5 != 0) goto Lf
                        return r1
                    Lf:
                        java.lang.Class r2 = r4.getClass()
                        java.lang.Class r3 = r5.getClass()
                        if (r2 == r3) goto L1a
                        return r1
                    L1a:
                        net.bytebuddy.description.type.TypeDescription r2 = r4.typeDescription
                        net.bytebuddy.description.type.TypeDescription$Generic$Builder$OfNonGenericType r5 = (net.bytebuddy.description.type.TypeDescription.Generic.Builder.OfNonGenericType) r5
                        net.bytebuddy.description.type.TypeDescription r3 = r5.typeDescription
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L27
                        return r1
                    L27:
                        net.bytebuddy.description.type.TypeDescription$Generic r2 = r4.ownerType
                        net.bytebuddy.description.type.TypeDescription$Generic r5 = r5.ownerType
                        if (r5 == 0) goto L36
                        if (r2 == 0) goto L38
                        boolean r5 = r2.equals(r5)
                        if (r5 != 0) goto L39
                        return r1
                    L36:
                        if (r2 == 0) goto L39
                    L38:
                        return r1
                    L39:
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.description.type.TypeDescription.Generic.Builder.OfNonGenericType.equals(java.lang.Object):boolean");
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public int hashCode() {
                    int hashCode = ((super.hashCode() * 31) + this.typeDescription.hashCode()) * 31;
                    Generic generic = this.ownerType;
                    return generic != null ? hashCode + generic.hashCode() : hashCode;
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public OfNonGenericType(net.bytebuddy.description.type.TypeDescription r1, @net.bytebuddy.utility.nullability.MaybeNull net.bytebuddy.description.type.TypeDescription r2) {
                    /*
                        r0 = this;
                        if (r2 != 0) goto L5
                        net.bytebuddy.description.type.TypeDescription$Generic r2 = net.bytebuddy.description.type.TypeDescription.Generic.UNDEFINED
                        goto L9
                    L5:
                        net.bytebuddy.description.type.TypeDescription$Generic r2 = r2.asGenericType()
                    L9:
                        r0.<init>(r1, r2)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.description.type.TypeDescription.Generic.Builder.OfNonGenericType.<init>(net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDescription):void");
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public Generic doBuild() {
                    if (this.typeDescription.represents(Void.TYPE) && !this.annotations.isEmpty()) {
                        throw new IllegalArgumentException("The void non-type cannot be annotated");
                    }
                    return new OfNonGenericType.Latent(this.typeDescription, this.ownerType, new AnnotationSource.Explicit(this.annotations));
                }

                public OfNonGenericType(TypeDescription typeDescription, @MaybeNull Generic generic) {
                    this(typeDescription, generic, Collections.emptyList());
                }

                public OfNonGenericType(TypeDescription typeDescription, @MaybeNull Generic generic, List<? extends AnnotationDescription> list) {
                    super(list);
                    this.ownerType = generic;
                    this.typeDescription = typeDescription;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfParameterizedType extends Builder {
                @MaybeNull
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                private final Generic ownerType;
                private final List<? extends Generic> parameterTypes;
                private final TypeDescription rawType;

                public OfParameterizedType(TypeDescription typeDescription, @MaybeNull Generic generic, List<? extends Generic> list) {
                    this(typeDescription, generic, list, Collections.emptyList());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public Builder doAnnotate(List<? extends AnnotationDescription> list) {
                    return new OfParameterizedType(this.rawType, this.ownerType, this.parameterTypes, CompoundList.m14776of((List) this.annotations, (List) list));
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public Generic doBuild() {
                    return new OfParameterizedType.Latent(this.rawType, this.ownerType, this.parameterTypes, new AnnotationSource.Explicit(this.annotations));
                }

                /* JADX WARN: Code restructure failed: missing block: B:22:0x0036, code lost:
                    if (r2 != null) goto L26;
                 */
                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
                    /*
                        r4 = this;
                        boolean r0 = super.equals(r5)
                        r1 = 0
                        if (r0 != 0) goto L8
                        return r1
                    L8:
                        r0 = 1
                        if (r4 != r5) goto Lc
                        return r0
                    Lc:
                        if (r5 != 0) goto Lf
                        return r1
                    Lf:
                        java.lang.Class r2 = r4.getClass()
                        java.lang.Class r3 = r5.getClass()
                        if (r2 == r3) goto L1a
                        return r1
                    L1a:
                        net.bytebuddy.description.type.TypeDescription r2 = r4.rawType
                        net.bytebuddy.description.type.TypeDescription$Generic$Builder$OfParameterizedType r5 = (net.bytebuddy.description.type.TypeDescription.Generic.Builder.OfParameterizedType) r5
                        net.bytebuddy.description.type.TypeDescription r3 = r5.rawType
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L27
                        return r1
                    L27:
                        net.bytebuddy.description.type.TypeDescription$Generic r2 = r4.ownerType
                        net.bytebuddy.description.type.TypeDescription$Generic r3 = r5.ownerType
                        if (r3 == 0) goto L36
                        if (r2 == 0) goto L38
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L39
                        return r1
                    L36:
                        if (r2 == 0) goto L39
                    L38:
                        return r1
                    L39:
                        java.util.List<? extends net.bytebuddy.description.type.TypeDescription$Generic> r2 = r4.parameterTypes
                        java.util.List<? extends net.bytebuddy.description.type.TypeDescription$Generic> r5 = r5.parameterTypes
                        boolean r5 = r2.equals(r5)
                        if (r5 != 0) goto L44
                        return r1
                    L44:
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.description.type.TypeDescription.Generic.Builder.OfParameterizedType.equals(java.lang.Object):boolean");
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public int hashCode() {
                    int hashCode = ((super.hashCode() * 31) + this.rawType.hashCode()) * 31;
                    Generic generic = this.ownerType;
                    if (generic != null) {
                        hashCode += generic.hashCode();
                    }
                    return (hashCode * 31) + this.parameterTypes.hashCode();
                }

                public OfParameterizedType(TypeDescription typeDescription, @MaybeNull Generic generic, List<? extends Generic> list, List<? extends AnnotationDescription> list2) {
                    super(list2);
                    this.rawType = typeDescription;
                    this.ownerType = generic;
                    this.parameterTypes = list;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfTypeVariable extends Builder {
                private final String symbol;

                public OfTypeVariable(String str) {
                    this(str, Collections.emptyList());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public Builder doAnnotate(List<? extends AnnotationDescription> list) {
                    return new OfTypeVariable(this.symbol, CompoundList.m14776of((List) this.annotations, (List) list));
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public Generic doBuild() {
                    return new OfTypeVariable.Symbolic(this.symbol, new AnnotationSource.Explicit(this.annotations));
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.symbol.equals(((OfTypeVariable) obj).symbol);
                    }
                    return false;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Builder
                public int hashCode() {
                    return (super.hashCode() * 31) + this.symbol.hashCode();
                }

                public OfTypeVariable(String str, List<? extends AnnotationDescription> list) {
                    super(list);
                    this.symbol = str;
                }
            }

            /* loaded from: classes2.dex */
            public enum Visitor implements Visitor<Builder> {
                INSTANCE;

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public Builder onGenericArray(Generic generic) {
                    return new OfGenericArrayType(generic.getComponentType(), generic.getDeclaredAnnotations());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public Builder onNonGenericType(Generic generic) {
                    if (generic.isArray()) {
                        return ((Builder) generic.getComponentType().accept(this)).asArray().annotate((Collection<? extends AnnotationDescription>) generic.getDeclaredAnnotations());
                    }
                    return new OfNonGenericType(generic.asErasure(), generic.getOwnerType(), generic.getDeclaredAnnotations());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Builder onParameterizedType(Generic generic) {
                    return new OfParameterizedType(generic.asErasure(), generic.getOwnerType(), generic.getTypeArguments(), generic.getDeclaredAnnotations());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Builder onTypeVariable(Generic generic) {
                    return new OfTypeVariable(generic.getSymbol(), generic.getDeclaredAnnotations());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Builder onWildcard(Generic generic) {
                    throw new IllegalArgumentException("Cannot resolve wildcard type " + generic + " to builder");
                }
            }

            /* renamed from: of */
            public static Builder m15194of(Type type) {
                return m15193of(TypeDefinition.Sort.describe(type));
            }

            public static Builder parameterizedType(Class<?> cls, Type... typeArr) {
                return parameterizedType(cls, Arrays.asList(typeArr));
            }

            public static Builder rawType(Class<?> cls) {
                return rawType(ForLoadedType.m15196of(cls));
            }

            public static Builder typeVariable(String str) {
                return new OfTypeVariable(str);
            }

            public static Generic unboundWildcard() {
                return unboundWildcard(Collections.emptySet());
            }

            public Builder annotate(Annotation... annotationArr) {
                return annotate(Arrays.asList(annotationArr));
            }

            public Builder asArray() {
                return asArray(1);
            }

            public Generic asWildcardLowerBound() {
                return asWildcardLowerBound(Collections.emptySet());
            }

            public Generic asWildcardUpperBound() {
                return asWildcardUpperBound(Collections.emptySet());
            }

            public Generic build() {
                return doBuild();
            }

            public abstract Builder doAnnotate(List<? extends AnnotationDescription> list);

            public abstract Generic doBuild();

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.annotations.equals(((Builder) obj).annotations);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.annotations.hashCode();
            }

            /* renamed from: of */
            public static Builder m15193of(Generic generic) {
                return (Builder) generic.accept(Visitor.INSTANCE);
            }

            public static Builder parameterizedType(Class<?> cls, List<? extends Type> list) {
                return parameterizedType(cls, UNDEFINED, list);
            }

            public static Builder rawType(TypeDescription typeDescription) {
                return new OfNonGenericType(typeDescription);
            }

            public static Generic unboundWildcard(Annotation... annotationArr) {
                return unboundWildcard((List<? extends Annotation>) Arrays.asList(annotationArr));
            }

            public Builder annotate(List<? extends Annotation> list) {
                return annotate((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
            }

            public Builder asArray(int i) {
                if (i >= 1) {
                    Generic build = build();
                    while (true) {
                        i--;
                        if (i > 0) {
                            build = new OfGenericArray.Latent(build, AnnotationSource.Empty.INSTANCE);
                        } else {
                            return new OfGenericArrayType(build);
                        }
                    }
                } else {
                    throw new IllegalArgumentException("Cannot define an array of a non-positive arity: " + i);
                }
            }

            public Generic asWildcardLowerBound(Annotation... annotationArr) {
                return asWildcardLowerBound(Arrays.asList(annotationArr));
            }

            public Generic asWildcardUpperBound(Annotation... annotationArr) {
                return asWildcardUpperBound(Arrays.asList(annotationArr));
            }

            public Generic build(Annotation... annotationArr) {
                return build(Arrays.asList(annotationArr));
            }

            public Builder(List<? extends AnnotationDescription> list) {
                this.annotations = list;
            }

            public static Builder parameterizedType(Class<?> cls, @MaybeNull Type type, List<? extends Type> list) {
                return parameterizedType(ForLoadedType.m15196of(cls), type == null ? null : TypeDefinition.Sort.describe(type), new TypeList.Generic.ForLoadedTypes(list));
            }

            public static Builder rawType(Class<?> cls, @MaybeNull Generic generic) {
                return rawType(ForLoadedType.m15196of(cls), generic);
            }

            public static Generic unboundWildcard(List<? extends Annotation> list) {
                return unboundWildcard((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
            }

            public Builder annotate(AnnotationDescription... annotationDescriptionArr) {
                return annotate((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
            }

            public Generic asWildcardLowerBound(List<? extends Annotation> list) {
                return asWildcardLowerBound((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
            }

            public Generic asWildcardUpperBound(List<? extends Annotation> list) {
                return asWildcardUpperBound((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
            }

            public Generic build(List<? extends Annotation> list) {
                return build((Collection<? extends AnnotationDescription>) new AnnotationList.ForLoadedAnnotations(list));
            }

            public static Builder rawType(TypeDescription typeDescription, @MaybeNull Generic generic) {
                TypeDescription declaringType = typeDescription.getDeclaringType();
                if (declaringType == null && generic != null) {
                    throw new IllegalArgumentException(typeDescription + " does not have a declaring type: " + generic);
                } else if (declaringType != null && (generic == null || !declaringType.equals(generic.asErasure()))) {
                    throw new IllegalArgumentException(generic + " is not the declaring type of " + typeDescription);
                } else {
                    return new OfNonGenericType(typeDescription, generic);
                }
            }

            public static Generic unboundWildcard(AnnotationDescription... annotationDescriptionArr) {
                return unboundWildcard((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
            }

            public Builder annotate(Collection<? extends AnnotationDescription> collection) {
                return doAnnotate(new ArrayList(collection));
            }

            public Generic asWildcardLowerBound(AnnotationDescription... annotationDescriptionArr) {
                return asWildcardLowerBound((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
            }

            public Generic asWildcardUpperBound(AnnotationDescription... annotationDescriptionArr) {
                return asWildcardUpperBound((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
            }

            public Generic build(AnnotationDescription... annotationDescriptionArr) {
                return build((Collection<? extends AnnotationDescription>) Arrays.asList(annotationDescriptionArr));
            }

            public static Generic unboundWildcard(Collection<? extends AnnotationDescription> collection) {
                return OfWildcardType.Latent.unbounded(new AnnotationSource.Explicit(new ArrayList(collection)));
            }

            public Generic asWildcardLowerBound(Collection<? extends AnnotationDescription> collection) {
                return OfWildcardType.Latent.boundedBelow(build(), new AnnotationSource.Explicit(new ArrayList(collection)));
            }

            public Generic asWildcardUpperBound(Collection<? extends AnnotationDescription> collection) {
                return OfWildcardType.Latent.boundedAbove(build(), new AnnotationSource.Explicit(new ArrayList(collection)));
            }

            public Generic build(Collection<? extends AnnotationDescription> collection) {
                return doAnnotate(new ArrayList(collection)).doBuild();
            }

            public static Builder parameterizedType(TypeDescription typeDescription, TypeDefinition... typeDefinitionArr) {
                return parameterizedType(typeDescription, Arrays.asList(typeDefinitionArr));
            }

            public static Builder parameterizedType(TypeDescription typeDescription, Collection<? extends TypeDefinition> collection) {
                return parameterizedType(typeDescription, Generic.UNDEFINED, collection);
            }

            public static Builder parameterizedType(TypeDescription typeDescription, @MaybeNull Generic generic, Collection<? extends TypeDefinition> collection) {
                TypeDescription declaringType = typeDescription.getDeclaringType();
                if (generic == null && declaringType != null && typeDescription.isStatic()) {
                    generic = declaringType.asGenericType();
                }
                if (!typeDescription.represents(TargetType.class)) {
                    if (typeDescription.isGenerified()) {
                        if (generic == null && declaringType != null && !typeDescription.isStatic()) {
                            throw new IllegalArgumentException(typeDescription + " requires an owner type");
                        } else if (generic != null && !generic.asErasure().equals(declaringType)) {
                            throw new IllegalArgumentException(generic + " does not represent required owner for " + typeDescription);
                        } else if (generic != null && (typeDescription.isStatic() ^ generic.getSort().isNonGeneric())) {
                            throw new IllegalArgumentException(generic + " does not define the correct parameters for owning " + typeDescription);
                        } else if (typeDescription.getTypeVariables().size() != collection.size()) {
                            throw new IllegalArgumentException(collection + " does not contain number of required parameters for " + typeDescription);
                        }
                    } else {
                        throw new IllegalArgumentException(typeDescription + " is not a parameterized type");
                    }
                }
                return new OfParameterizedType(typeDescription, generic, new TypeList.Generic.Explicit(new ArrayList(collection)));
            }
        }

        /* loaded from: classes2.dex */
        public static abstract class LazyProjection extends AbstractBase {
            private transient /* synthetic */ int hashCode;

            /* loaded from: classes2.dex */
            public static class OfConstructorParameter extends WithEagerNavigation.OfAnnotatedElement {
                private final Constructor<?> constructor;
                private transient /* synthetic */ Generic delegate;
                private final Class<?>[] erasure;
                private final int index;

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return ForLoadedType.m15196of(this.erasure[this.index]);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement
                public AnnotationReader getAnnotationReader() {
                    return new AnnotationReader.Delegator.ForLoadedExecutableParameterType(this.constructor, this.index);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement, net.bytebuddy.description.annotation.AnnotationSource
                public /* bridge */ /* synthetic */ AnnotationList getDeclaredAnnotations() {
                    return super.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                @CachedReturnPlugin.Enhance(MethodDelegation.ImplementationDelegate.FIELD_NAME_PREFIX)
                public Generic resolve() {
                    Generic m15189of;
                    if (this.delegate != null) {
                        m15189of = null;
                    } else {
                        Type[] genericParameterTypes = this.constructor.getGenericParameterTypes();
                        Class<?>[] clsArr = this.erasure;
                        if (clsArr.length == genericParameterTypes.length) {
                            m15189of = TypeDefinition.Sort.describe(genericParameterTypes[this.index], getAnnotationReader());
                        } else {
                            m15189of = OfNonGenericType.ForLoadedType.m15189of(clsArr[this.index]);
                        }
                    }
                    if (m15189of == null) {
                        return this.delegate;
                    }
                    this.delegate = m15189of;
                    return m15189of;
                }

                @SuppressFBWarnings(justification = "The array is not modified by class contract.", value = {"EI_EXPOSE_REP2"})
                public OfConstructorParameter(Constructor<?> constructor, int i, Class<?>[] clsArr) {
                    this.constructor = constructor;
                    this.index = i;
                    this.erasure = clsArr;
                }
            }

            /* loaded from: classes2.dex */
            public static class OfMethodParameter extends WithEagerNavigation.OfAnnotatedElement {
                private final Class<?>[] erasure;
                private final int index;
                private final Method method;
                private transient /* synthetic */ Generic resolved;

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return ForLoadedType.m15196of(this.erasure[this.index]);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement
                public AnnotationReader getAnnotationReader() {
                    return new AnnotationReader.Delegator.ForLoadedExecutableParameterType(this.method, this.index);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement, net.bytebuddy.description.annotation.AnnotationSource
                public /* bridge */ /* synthetic */ AnnotationList getDeclaredAnnotations() {
                    return super.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                @CachedReturnPlugin.Enhance("resolved")
                public Generic resolve() {
                    Generic m15189of;
                    if (this.resolved != null) {
                        m15189of = null;
                    } else {
                        Type[] genericParameterTypes = this.method.getGenericParameterTypes();
                        Class<?>[] clsArr = this.erasure;
                        if (clsArr.length == genericParameterTypes.length) {
                            m15189of = TypeDefinition.Sort.describe(genericParameterTypes[this.index], getAnnotationReader());
                        } else {
                            m15189of = OfNonGenericType.ForLoadedType.m15189of(clsArr[this.index]);
                        }
                    }
                    if (m15189of == null) {
                        return this.resolved;
                    }
                    this.resolved = m15189of;
                    return m15189of;
                }

                @SuppressFBWarnings(justification = "The array is not modified by class contract.", value = {"EI_EXPOSE_REP2"})
                public OfMethodParameter(Method method, int i, Class<?>[] clsArr) {
                    this.method = method;
                    this.index = i;
                    this.erasure = clsArr;
                }
            }

            /* loaded from: classes2.dex */
            public static abstract class WithEagerNavigation extends LazyProjection {

                /* loaded from: classes2.dex */
                public static abstract class OfAnnotatedElement extends WithEagerNavigation {
                    public abstract AnnotationReader getAnnotationReader();

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation, net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                    @MaybeNull
                    public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                        return super.getComponentType();
                    }

                    public AnnotationList getDeclaredAnnotations() {
                        return getAnnotationReader().asList();
                    }
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                    return super.getComponentType();
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeList.Generic getInterfaces() {
                    return resolve().getInterfaces();
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public Generic getSuperClass() {
                    return resolve().getSuperClass();
                }

                @Override // java.lang.Iterable
                public Iterator<TypeDefinition> iterator() {
                    return resolve().iterator();
                }
            }

            /* loaded from: classes2.dex */
            public static abstract class WithLazyNavigation extends LazyProjection {

                /* loaded from: classes2.dex */
                public static class LazyInterfaceList extends TypeList.Generic.AbstractBase {
                    private final LazyProjection delegate;
                    private final TypeList.Generic rawInterfaces;

                    /* renamed from: of */
                    public static TypeList.Generic m15191of(LazyProjection lazyProjection) {
                        return new LazyInterfaceList(lazyProjection, lazyProjection.asErasure().getInterfaces());
                    }

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                    public int size() {
                        return this.rawInterfaces.size();
                    }

                    @Override // java.util.AbstractList, java.util.List
                    public Generic get(int i) {
                        return new LazyInterfaceType(this.delegate, i, this.rawInterfaces.get(i));
                    }

                    public LazyInterfaceList(LazyProjection lazyProjection, TypeList.Generic generic) {
                        this.delegate = lazyProjection;
                        this.rawInterfaces = generic;
                    }
                }

                /* loaded from: classes2.dex */
                public static abstract class OfAnnotatedElement extends WithLazyNavigation {
                    public abstract AnnotationReader getAnnotationReader();

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithLazyNavigation, net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                    @MaybeNull
                    public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                        return super.getComponentType();
                    }

                    public AnnotationList getDeclaredAnnotations() {
                        return getAnnotationReader().asList();
                    }
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                    return super.getComponentType();
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeList.Generic getInterfaces() {
                    return LazyInterfaceList.m15191of((LazyProjection) this);
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public Generic getSuperClass() {
                    return LazySuperClass.m15190of(this);
                }

                @Override // java.lang.Iterable
                public Iterator<TypeDefinition> iterator() {
                    return new TypeDefinition.SuperClassIterator(this);
                }

                /* loaded from: classes2.dex */
                public static class LazyInterfaceType extends WithLazyNavigation {
                    private final LazyProjection delegate;
                    private final int index;
                    private final Generic rawInterface;
                    private transient /* synthetic */ Generic resolved;

                    @Override // net.bytebuddy.description.type.TypeDefinition
                    public TypeDescription asErasure() {
                        return this.rawInterface.asErasure();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithLazyNavigation, net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                    @MaybeNull
                    public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                        return super.getComponentType();
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationSource
                    public AnnotationList getDeclaredAnnotations() {
                        return resolve().getDeclaredAnnotations();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                    @CachedReturnPlugin.Enhance("resolved")
                    public Generic resolve() {
                        Generic generic = this.resolved != null ? null : this.delegate.resolve().getInterfaces().get(this.index);
                        if (generic == null) {
                            return this.resolved;
                        }
                        this.resolved = generic;
                        return generic;
                    }

                    public LazyInterfaceType(LazyProjection lazyProjection, int i, Generic generic) {
                        this.delegate = lazyProjection;
                        this.index = i;
                        this.rawInterface = generic;
                    }
                }

                /* loaded from: classes2.dex */
                public static class LazySuperClass extends WithLazyNavigation {
                    private final LazyProjection delegate;
                    private transient /* synthetic */ Generic resolved;

                    @MaybeNull
                    /* renamed from: of */
                    public static Generic m15190of(LazyProjection lazyProjection) {
                        return lazyProjection.asErasure().getSuperClass() == null ? Generic.UNDEFINED : new LazySuperClass(lazyProjection);
                    }

                    @Override // net.bytebuddy.description.type.TypeDefinition
                    @SuppressFBWarnings(justification = "Assuming super class for given instance.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public TypeDescription asErasure() {
                        return this.delegate.asErasure().getSuperClass().asErasure();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithLazyNavigation, net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                    @MaybeNull
                    public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                        return super.getComponentType();
                    }

                    @Override // net.bytebuddy.description.annotation.AnnotationSource
                    public AnnotationList getDeclaredAnnotations() {
                        return resolve().getDeclaredAnnotations();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                    @CachedReturnPlugin.Enhance("resolved")
                    @SuppressFBWarnings(justification = "Assuming super class for given instance.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public Generic resolve() {
                        Generic superClass = this.resolved != null ? null : this.delegate.resolve().getSuperClass();
                        if (superClass == null) {
                            return this.resolved;
                        }
                        this.resolved = superClass;
                        return superClass;
                    }

                    public LazySuperClass(LazyProjection lazyProjection) {
                        this.delegate = lazyProjection;
                    }
                }
            }

            /* loaded from: classes2.dex */
            public static class WithResolvedErasure extends WithEagerNavigation {
                private final AnnotationSource annotationSource;
                private final Generic delegate;
                private transient /* synthetic */ Generic resolved;
                private final Visitor<? extends Generic> visitor;

                public WithResolvedErasure(Generic generic, Visitor<? extends Generic> visitor) {
                    this(generic, visitor, generic);
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return this.delegate.asErasure();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.annotationSource.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                @CachedReturnPlugin.Enhance("resolved")
                public Generic resolve() {
                    Generic generic = this.resolved != null ? null : (Generic) this.delegate.accept(this.visitor);
                    if (generic == null) {
                        return this.resolved;
                    }
                    this.resolved = generic;
                    return generic;
                }

                public WithResolvedErasure(Generic generic, Visitor<? extends Generic> visitor, AnnotationSource annotationSource) {
                    this.delegate = generic;
                    this.visitor = visitor;
                    this.annotationSource = annotationSource;
                }
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public <T> T accept(Visitor<T> visitor) {
                return (T) resolve().accept(visitor);
            }

            public boolean equals(@MaybeNull Object obj) {
                return this == obj || ((obj instanceof TypeDefinition) && resolve().equals(obj));
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            @MaybeNull
            public Generic findBindingOf(Generic generic) {
                return resolve().findBindingOf(generic);
            }

            @Override // net.bytebuddy.description.NamedElement
            public String getActualName() {
                return resolve().getActualName();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public FieldList<FieldDescription.InGenericShape> getDeclaredFields() {
                return resolve().getDeclaredFields();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public MethodList<MethodDescription.InGenericShape> getDeclaredMethods() {
                return resolve().getDeclaredMethods();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getLowerBounds() {
                return resolve().getLowerBounds();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            @MaybeNull
            public Generic getOwnerType() {
                return resolve().getOwnerType();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public RecordComponentList<RecordComponentDescription.InGenericShape> getRecordComponents() {
                return resolve().getRecordComponents();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeDefinition.Sort getSort() {
                return resolve().getSort();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public StackSize getStackSize() {
                return asErasure().getStackSize();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public String getSymbol() {
                return resolve().getSymbol();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getTypeArguments() {
                return resolve().getTypeArguments();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public String getTypeName() {
                return resolve().getTypeName();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeVariableSource getTypeVariableSource() {
                return resolve().getTypeVariableSource();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getUpperBounds() {
                return resolve().getUpperBounds();
            }

            @CachedReturnPlugin.Enhance("hashCode")
            public int hashCode() {
                int hashCode = this.hashCode != 0 ? 0 : resolve().hashCode();
                if (hashCode == 0) {
                    return this.hashCode;
                }
                this.hashCode = hashCode;
                return hashCode;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isArray() {
                return asErasure().isArray();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isPrimitive() {
                return asErasure().isPrimitive();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isRecord() {
                return asErasure().isRecord();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic.AbstractBase, net.bytebuddy.description.type.TypeDefinition
            public boolean represents(Type type) {
                return resolve().represents(type);
            }

            public abstract Generic resolve();

            public String toString() {
                return resolve().toString();
            }

            /* loaded from: classes2.dex */
            public static class ForLoadedFieldType extends WithEagerNavigation.OfAnnotatedElement {
                private final Field field;
                private transient /* synthetic */ Generic resolved;

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return ForLoadedType.m15196of(this.field.getType());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement
                public AnnotationReader getAnnotationReader() {
                    return new AnnotationReader.Delegator.ForLoadedField(this.field);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement, net.bytebuddy.description.annotation.AnnotationSource
                public /* bridge */ /* synthetic */ AnnotationList getDeclaredAnnotations() {
                    return super.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                @CachedReturnPlugin.Enhance("resolved")
                public Generic resolve() {
                    Generic describe = this.resolved != null ? null : TypeDefinition.Sort.describe(this.field.getGenericType(), getAnnotationReader());
                    if (describe == null) {
                        return this.resolved;
                    }
                    this.resolved = describe;
                    return describe;
                }

                public ForLoadedFieldType(Field field) {
                    this.field = field;
                }
            }

            /* loaded from: classes2.dex */
            public static class ForLoadedReturnType extends WithEagerNavigation.OfAnnotatedElement {
                private final Method method;
                private transient /* synthetic */ Generic resolved;

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return ForLoadedType.m15196of(this.method.getReturnType());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement
                public AnnotationReader getAnnotationReader() {
                    return new AnnotationReader.Delegator.ForLoadedMethodReturnType(this.method);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement, net.bytebuddy.description.annotation.AnnotationSource
                public /* bridge */ /* synthetic */ AnnotationList getDeclaredAnnotations() {
                    return super.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                @CachedReturnPlugin.Enhance("resolved")
                public Generic resolve() {
                    Generic describe = this.resolved != null ? null : TypeDefinition.Sort.describe(this.method.getGenericReturnType(), getAnnotationReader());
                    if (describe == null) {
                        return this.resolved;
                    }
                    this.resolved = describe;
                    return describe;
                }

                public ForLoadedReturnType(Method method) {
                    this.method = method;
                }
            }

            /* loaded from: classes2.dex */
            public static class ForLoadedSuperClass extends WithLazyNavigation.OfAnnotatedElement {
                private transient /* synthetic */ Generic resolved;
                private final Class<?> type;

                @MaybeNull
                /* renamed from: of */
                public static Generic m15192of(Class<?> cls) {
                    return cls.getSuperclass() == null ? Generic.UNDEFINED : new ForLoadedSuperClass(cls);
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return ForLoadedType.m15196of(this.type.getSuperclass());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithLazyNavigation.OfAnnotatedElement
                public AnnotationReader getAnnotationReader() {
                    return new AnnotationReader.Delegator.ForLoadedSuperClass(this.type);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithLazyNavigation.OfAnnotatedElement, net.bytebuddy.description.annotation.AnnotationSource
                public /* bridge */ /* synthetic */ AnnotationList getDeclaredAnnotations() {
                    return super.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                @CachedReturnPlugin.Enhance("resolved")
                public Generic resolve() {
                    Generic describe = this.resolved != null ? null : TypeDefinition.Sort.describe(this.type.getGenericSuperclass(), getAnnotationReader());
                    if (describe == null) {
                        return this.resolved;
                    }
                    this.resolved = describe;
                    return describe;
                }

                public ForLoadedSuperClass(Class<?> cls) {
                    this.type = cls;
                }
            }

            /* loaded from: classes2.dex */
            public static class OfRecordComponent extends WithEagerNavigation.OfAnnotatedElement {
                private final Object recordComponent;
                private transient /* synthetic */ Generic resolved;

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return ForLoadedType.m15196of(RecordComponentDescription.ForLoadedRecordComponent.RECORD_COMPONENT.getType(this.recordComponent));
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement
                public AnnotationReader getAnnotationReader() {
                    return new AnnotationReader.Delegator.ForLoadedRecordComponent(this.recordComponent);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection.WithEagerNavigation.OfAnnotatedElement, net.bytebuddy.description.annotation.AnnotationSource
                public /* bridge */ /* synthetic */ AnnotationList getDeclaredAnnotations() {
                    return super.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
                @CachedReturnPlugin.Enhance("resolved")
                public Generic resolve() {
                    Generic describe = this.resolved != null ? null : TypeDefinition.Sort.describe(RecordComponentDescription.ForLoadedRecordComponent.RECORD_COMPONENT.getGenericType(this.recordComponent), getAnnotationReader());
                    if (describe == null) {
                        return this.resolved;
                    }
                    this.resolved = describe;
                    return describe;
                }

                public OfRecordComponent(Object obj) {
                    this.recordComponent = obj;
                }
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            @MaybeNull
            public Generic getComponentType() {
                return resolve().getComponentType();
            }
        }

        /* loaded from: classes2.dex */
        public static abstract class OfGenericArray extends AbstractBase {
            private transient /* synthetic */ int hashCode;

            /* loaded from: classes2.dex */
            public static class ForLoadedType extends OfGenericArray {
                private final AnnotationReader annotationReader;
                private final GenericArrayType genericArrayType;

                public ForLoadedType(GenericArrayType genericArrayType) {
                    this(genericArrayType, AnnotationReader.NoOp.INSTANCE);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.annotationReader.asList();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AbstractBase, net.bytebuddy.description.type.TypeDefinition
                public boolean represents(Type type) {
                    return this.genericArrayType == type || super.represents(type);
                }

                public ForLoadedType(GenericArrayType genericArrayType, AnnotationReader annotationReader) {
                    this.genericArrayType = genericArrayType;
                    this.annotationReader = annotationReader;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public Generic getComponentType() {
                    return TypeDefinition.Sort.describe(this.genericArrayType.getGenericComponentType(), this.annotationReader.ofComponentType());
                }
            }

            /* loaded from: classes2.dex */
            public static class Latent extends OfGenericArray {
                private final AnnotationSource annotationSource;
                private final Generic componentType;

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.annotationSource.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public Generic getComponentType() {
                    return this.componentType;
                }

                public Latent(Generic generic, AnnotationSource annotationSource) {
                    this.componentType = generic;
                    this.annotationSource = annotationSource;
                }
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public TypeDescription asErasure() {
                return ArrayProjection.m15198of(getComponentType().asErasure(), 1);
            }

            @SuppressFBWarnings(justification = "Type check is performed by erasure implementation. Assuming component type for array type.", value = {"EQ_CHECK_FOR_OPERAND_NOT_COMPATIBLE_WITH_THIS", "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (getSort().isNonGeneric()) {
                    return asErasure().equals(obj);
                }
                if (!(obj instanceof Generic)) {
                    return false;
                }
                Generic generic = (Generic) obj;
                return generic.getSort().isGenericArray() && getComponentType().equals(generic.getComponentType());
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public Generic findBindingOf(Generic generic) {
                throw new IllegalStateException("A generic array type does not imply type arguments: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public FieldList<FieldDescription.InGenericShape> getDeclaredFields() {
                return new FieldList.Empty();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public MethodList<MethodDescription.InGenericShape> getDeclaredMethods() {
                return new MethodList.Empty();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeList.Generic getInterfaces() {
                return TypeDescription.ARRAY_INTERFACES;
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getLowerBounds() {
                throw new IllegalStateException("A generic array type does not imply lower type bounds: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            @MaybeNull
            public Generic getOwnerType() {
                return Generic.UNDEFINED;
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public RecordComponentList<RecordComponentDescription.InGenericShape> getRecordComponents() {
                return new RecordComponentList.Empty();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public TypeDefinition.Sort getSort() {
                return getComponentType().getSort().isNonGeneric() ? TypeDefinition.Sort.NON_GENERIC : TypeDefinition.Sort.GENERIC_ARRAY;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public StackSize getStackSize() {
                return StackSize.SINGLE;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            @MaybeNull
            public Generic getSuperClass() {
                return Generic.OBJECT;
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public String getSymbol() {
                throw new IllegalStateException("A generic array type does not imply a symbol: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getTypeArguments() {
                throw new IllegalStateException("A generic array type does not imply type arguments: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeVariableSource getTypeVariableSource() {
                throw new IllegalStateException("A generic array type does not imply a type variable source: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getUpperBounds() {
                throw new IllegalStateException("A generic array type does not imply upper type bounds: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isArray() {
                return true;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isPrimitive() {
                return false;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isRecord() {
                return false;
            }

            @Override // java.lang.Iterable
            public Iterator<TypeDefinition> iterator() {
                return new TypeDefinition.SuperClassIterator(this);
            }

            @CachedReturnPlugin.Enhance("hashCode")
            @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public int hashCode() {
                int hashCode;
                if (this.hashCode != 0) {
                    hashCode = 0;
                } else if (getSort().isNonGeneric()) {
                    hashCode = asErasure().hashCode();
                } else {
                    hashCode = getComponentType().hashCode();
                }
                if (hashCode == 0) {
                    return this.hashCode;
                }
                this.hashCode = hashCode;
                return hashCode;
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public <T> T accept(Visitor<T> visitor) {
                if (getSort().isNonGeneric()) {
                    return visitor.onNonGenericType(this);
                }
                return visitor.onGenericArray(this);
            }

            @Override // net.bytebuddy.description.NamedElement
            public String getActualName() {
                if (getSort().isNonGeneric()) {
                    return asErasure().getActualName();
                }
                return toString();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public String getTypeName() {
                if (getSort().isNonGeneric()) {
                    return asErasure().getTypeName();
                }
                return toString();
            }

            @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public String toString() {
                if (getSort().isNonGeneric()) {
                    return asErasure().toString();
                }
                return getComponentType().getTypeName() + "[]";
            }
        }

        /* loaded from: classes2.dex */
        public static abstract class OfParameterizedType extends AbstractBase {
            private transient /* synthetic */ int hashCode;

            /* loaded from: classes2.dex */
            public static class ForGenerifiedErasure extends OfParameterizedType {
                private final TypeDescription typeDescription;

                /* renamed from: of */
                public static Generic m15187of(TypeDescription typeDescription) {
                    return typeDescription.isGenerified() ? new ForGenerifiedErasure(typeDescription) : new OfNonGenericType.ForErasure(typeDescription);
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return this.typeDescription;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                    return super.getComponentType();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return new AnnotationList.Empty();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getTypeArguments() {
                    return new TypeList.Generic.ForDetachedTypes(this.typeDescription.getTypeVariables(), Visitor.AnnotationStripper.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                @MaybeNull
                public Generic getOwnerType() {
                    TypeDescription declaringType = this.typeDescription.getDeclaringType();
                    if (declaringType == null) {
                        return Generic.UNDEFINED;
                    }
                    return m15187of(declaringType);
                }

                public ForGenerifiedErasure(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }
            }

            /* loaded from: classes2.dex */
            public static class ForLoadedType extends OfParameterizedType {
                private final AnnotationReader annotationReader;
                private final ParameterizedType parameterizedType;

                /* loaded from: classes2.dex */
                public static class ParameterArgumentTypeList extends TypeList.Generic.AbstractBase {
                    private final AnnotationReader annotationReader;
                    private final Type[] argumentType;

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                    public int size() {
                        return this.argumentType.length;
                    }

                    @Override // java.util.AbstractList, java.util.List
                    public Generic get(int i) {
                        return TypeDefinition.Sort.describe(this.argumentType[i], this.annotationReader.ofTypeArgument(i));
                    }

                    public ParameterArgumentTypeList(Type[] typeArr, AnnotationReader annotationReader) {
                        this.argumentType = typeArr;
                        this.annotationReader = annotationReader;
                    }
                }

                public ForLoadedType(ParameterizedType parameterizedType) {
                    this(parameterizedType, AnnotationReader.NoOp.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return ForLoadedType.m15196of((Class) this.parameterizedType.getRawType());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                    return super.getComponentType();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.annotationReader.asList();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getTypeArguments() {
                    return new ParameterArgumentTypeList(this.parameterizedType.getActualTypeArguments(), this.annotationReader);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType, net.bytebuddy.description.type.TypeDescription.Generic.AbstractBase, net.bytebuddy.description.type.TypeDefinition
                public boolean represents(Type type) {
                    return this.parameterizedType == type || super.represents(type);
                }

                public ForLoadedType(ParameterizedType parameterizedType, AnnotationReader annotationReader) {
                    this.parameterizedType = parameterizedType;
                    this.annotationReader = annotationReader;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                @MaybeNull
                public Generic getOwnerType() {
                    Type ownerType = this.parameterizedType.getOwnerType();
                    if (ownerType == null) {
                        return Generic.UNDEFINED;
                    }
                    return TypeDefinition.Sort.describe(ownerType, this.annotationReader.ofOwnerType());
                }
            }

            /* loaded from: classes2.dex */
            public static class ForReifiedType extends OfParameterizedType {
                private final Generic parameterizedType;

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return this.parameterizedType.asErasure();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                    return super.getComponentType();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return new AnnotationList.Empty();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public FieldList<FieldDescription.InGenericShape> getDeclaredFields() {
                    return new FieldList.TypeSubstituting(this, super.getDeclaredFields(), Visitor.TypeErasing.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public MethodList<MethodDescription.InGenericShape> getDeclaredMethods() {
                    return new MethodList.TypeSubstituting(this, super.getDeclaredMethods(), Visitor.TypeErasing.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType, net.bytebuddy.description.type.TypeDefinition
                public TypeList.Generic getInterfaces() {
                    return new TypeList.Generic.ForDetachedTypes.WithResolvedErasure(super.getInterfaces(), Visitor.Reifying.INHERITING);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getTypeArguments() {
                    return new TypeList.Generic.ForDetachedTypes(this.parameterizedType.getTypeArguments(), Visitor.TypeErasing.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                @MaybeNull
                public Generic getOwnerType() {
                    Generic ownerType = this.parameterizedType.getOwnerType();
                    if (ownerType == null) {
                        return Generic.UNDEFINED;
                    }
                    return (Generic) ownerType.accept(Visitor.Reifying.INHERITING);
                }

                public ForReifiedType(Generic generic) {
                    this.parameterizedType = generic;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType, net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public Generic getSuperClass() {
                    Generic superClass = super.getSuperClass();
                    if (superClass == null) {
                        return Generic.UNDEFINED;
                    }
                    return new LazyProjection.WithResolvedErasure(superClass, Visitor.Reifying.INHERITING);
                }
            }

            /* loaded from: classes2.dex */
            public enum RenderingDelegate {
                FOR_LEGACY_VM { // from class: net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType.RenderingDelegate.1
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType.RenderingDelegate
                    public void apply(StringBuilder sb, TypeDescription typeDescription, @MaybeNull Generic generic) {
                        String name;
                        if (generic != null) {
                            sb.append(generic.getTypeName());
                            sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                            if (generic.getSort().isParameterized()) {
                                name = typeDescription.getSimpleName();
                            } else {
                                name = typeDescription.getName();
                            }
                            sb.append(name);
                            return;
                        }
                        sb.append(typeDescription.getName());
                    }
                },
                FOR_JAVA_8_CAPABLE_VM { // from class: net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType.RenderingDelegate.2
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType.RenderingDelegate
                    public void apply(StringBuilder sb, TypeDescription typeDescription, @MaybeNull Generic generic) {
                        if (generic != null) {
                            sb.append(generic.getTypeName());
                            sb.append('$');
                            if (generic.getSort().isParameterized()) {
                                String name = typeDescription.getName();
                                sb.append(name.replace(generic.asErasure().getName() + "$", ""));
                                return;
                            }
                            sb.append(typeDescription.getSimpleName());
                            return;
                        }
                        sb.append(typeDescription.getName());
                    }
                };
                
                public static final RenderingDelegate CURRENT;

                public abstract void apply(StringBuilder sb, TypeDescription typeDescription, @MaybeNull Generic generic);

                static {
                    RenderingDelegate renderingDelegate = FOR_LEGACY_VM;
                    CURRENT = ClassFileVersion.ofThisVm(ClassFileVersion.JAVA_V5).isAtLeast(ClassFileVersion.JAVA_V8) ? FOR_JAVA_8_CAPABLE_VM : renderingDelegate;
                }
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public <T> T accept(Visitor<T> visitor) {
                return visitor.onParameterizedType(this);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Generic)) {
                    return false;
                }
                Generic generic = (Generic) obj;
                if (!generic.getSort().isParameterized()) {
                    return false;
                }
                Generic ownerType = getOwnerType();
                Generic ownerType2 = generic.getOwnerType();
                return asErasure().equals(generic.asErasure()) && (ownerType != null || ownerType2 == null) && ((ownerType == null || ownerType.equals(ownerType2)) && getTypeArguments().equals(generic.getTypeArguments()));
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            @MaybeNull
            public Generic findBindingOf(Generic generic) {
                Generic generic2 = this;
                do {
                    TypeList.Generic typeArguments = generic2.getTypeArguments();
                    TypeList.Generic typeVariables = generic2.asErasure().getTypeVariables();
                    for (int i = 0; i < Math.min(typeArguments.size(), typeVariables.size()); i++) {
                        if (generic.equals(typeVariables.get(i))) {
                            return typeArguments.get(i);
                        }
                    }
                    generic2 = generic2.getOwnerType();
                    if (generic2 == null) {
                        break;
                    }
                } while (generic2.getSort().isParameterized());
                return Generic.UNDEFINED;
            }

            @Override // net.bytebuddy.description.NamedElement
            public String getActualName() {
                return toString();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public FieldList<FieldDescription.InGenericShape> getDeclaredFields() {
                return new FieldList.TypeSubstituting(this, asErasure().getDeclaredFields(), new Visitor.Substitutor.ForTypeVariableBinding(this));
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public MethodList<MethodDescription.InGenericShape> getDeclaredMethods() {
                return new MethodList.TypeSubstituting(this, asErasure().getDeclaredMethods(), new Visitor.Substitutor.ForTypeVariableBinding(this));
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeList.Generic getInterfaces() {
                return new TypeList.Generic.ForDetachedTypes.WithResolvedErasure(asErasure().getInterfaces(), new Visitor.Substitutor.ForTypeVariableBinding(this));
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getLowerBounds() {
                throw new IllegalStateException("A parameterized type does not imply lower bounds: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public RecordComponentList<RecordComponentDescription.InGenericShape> getRecordComponents() {
                return new RecordComponentList.TypeSubstituting(this, asErasure().getRecordComponents(), new Visitor.Substitutor.ForTypeVariableBinding(this));
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeDefinition.Sort getSort() {
                return TypeDefinition.Sort.PARAMETERIZED;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public StackSize getStackSize() {
                return StackSize.SINGLE;
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public String getSymbol() {
                throw new IllegalStateException("A parameterized type does not imply a symbol: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public String getTypeName() {
                return toString();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeVariableSource getTypeVariableSource() {
                throw new IllegalStateException("A parameterized type does not imply a type variable source: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getUpperBounds() {
                throw new IllegalStateException("A parameterized type does not imply upper bounds: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isArray() {
                return false;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isPrimitive() {
                return false;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isRecord() {
                return asErasure().isRecord();
            }

            @Override // java.lang.Iterable
            public Iterator<TypeDefinition> iterator() {
                return new TypeDefinition.SuperClassIterator(this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic.AbstractBase, net.bytebuddy.description.type.TypeDefinition
            public boolean represents(Type type) {
                return equals(TypeDefinition.Sort.describe(type));
            }

            /* loaded from: classes2.dex */
            public static class Latent extends OfParameterizedType {
                private final AnnotationSource annotationSource;
                @MaybeNull
                private final Generic ownerType;
                private final List<? extends Generic> parameters;
                private final TypeDescription rawType;

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return this.rawType;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfParameterizedType, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                    return super.getComponentType();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.annotationSource.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                @MaybeNull
                public Generic getOwnerType() {
                    return this.ownerType;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getTypeArguments() {
                    return new TypeList.Generic.Explicit(this.parameters);
                }

                public Latent(TypeDescription typeDescription, @MaybeNull Generic generic, List<? extends Generic> list, AnnotationSource annotationSource) {
                    this.rawType = typeDescription;
                    this.ownerType = generic;
                    this.parameters = list;
                    this.annotationSource = annotationSource;
                }
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public Generic getComponentType() {
                throw new IllegalStateException("A parameterized type does not imply a component type: " + this);
            }

            @CachedReturnPlugin.Enhance("hashCode")
            public int hashCode() {
                int hashCode;
                int i;
                if (this.hashCode != 0) {
                    i = 0;
                } else {
                    int i2 = 1;
                    for (Generic generic : getTypeArguments()) {
                        i2 = (i2 * 31) + generic.hashCode();
                    }
                    Generic ownerType = getOwnerType();
                    if (ownerType == null) {
                        hashCode = asErasure().hashCode();
                    } else {
                        hashCode = ownerType.hashCode();
                    }
                    i = i2 ^ hashCode;
                }
                if (i == 0) {
                    return this.hashCode;
                }
                this.hashCode = i;
                return i;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder();
                RenderingDelegate.CURRENT.apply(sb, asErasure(), getOwnerType());
                TypeList.Generic typeArguments = getTypeArguments();
                if (!typeArguments.isEmpty()) {
                    sb.append('<');
                    boolean z = false;
                    for (Generic generic : typeArguments) {
                        if (z) {
                            sb.append(", ");
                        }
                        sb.append(generic.getTypeName());
                        z = true;
                    }
                    sb.append('>');
                }
                return sb.toString();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            @MaybeNull
            public Generic getSuperClass() {
                Generic superClass = asErasure().getSuperClass();
                if (superClass == null) {
                    return Generic.UNDEFINED;
                }
                return new LazyProjection.WithResolvedErasure(superClass, new Visitor.Substitutor.ForTypeVariableBinding(this));
            }
        }

        /* loaded from: classes2.dex */
        public static abstract class OfTypeVariable extends AbstractBase {
            private transient /* synthetic */ int hashCode;

            /* loaded from: classes2.dex */
            public static class ForLoadedType extends OfTypeVariable {
                private final AnnotationReader annotationReader;
                private final TypeVariable<?> typeVariable;

                /* loaded from: classes2.dex */
                public static class TypeVariableBoundList extends TypeList.Generic.AbstractBase {
                    private final AnnotationReader annotationReader;
                    private final Type[] bound;

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                    public int size() {
                        return this.bound.length;
                    }

                    @Override // java.util.AbstractList, java.util.List
                    public Generic get(int i) {
                        return TypeDefinition.Sort.describe(this.bound[i], this.annotationReader.ofTypeVariableBoundType(i));
                    }

                    public TypeVariableBoundList(Type[] typeArr, AnnotationReader annotationReader) {
                        this.bound = typeArr;
                        this.annotationReader = annotationReader;
                    }
                }

                public ForLoadedType(TypeVariable<?> typeVariable) {
                    this(typeVariable, AnnotationReader.NoOp.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfTypeVariable, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                    return super.getComponentType();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.annotationReader.asList();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public String getSymbol() {
                    return this.typeVariable.getName();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getUpperBounds() {
                    return new TypeVariableBoundList(this.typeVariable.getBounds(), this.annotationReader);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfTypeVariable, net.bytebuddy.description.type.TypeDescription.Generic.AbstractBase, net.bytebuddy.description.type.TypeDefinition
                public boolean represents(Type type) {
                    return this.typeVariable == type || super.represents(type);
                }

                public ForLoadedType(TypeVariable<?> typeVariable, AnnotationReader annotationReader) {
                    this.typeVariable = typeVariable;
                    this.annotationReader = annotationReader;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeVariableSource getTypeVariableSource() {
                    Object genericDeclaration = this.typeVariable.getGenericDeclaration();
                    if (genericDeclaration instanceof Class) {
                        return ForLoadedType.m15196of((Class) genericDeclaration);
                    }
                    if (genericDeclaration instanceof Method) {
                        return new MethodDescription.ForLoadedMethod((Method) genericDeclaration);
                    }
                    if (genericDeclaration instanceof Constructor) {
                        return new MethodDescription.ForLoadedConstructor((Constructor) genericDeclaration);
                    }
                    throw new IllegalStateException("Unknown declaration: " + genericDeclaration);
                }
            }

            /* loaded from: classes2.dex */
            public static class Symbolic extends AbstractBase {
                private final AnnotationSource annotationSource;
                private final String symbol;

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public <T> T accept(Visitor<T> visitor) {
                    return visitor.onTypeVariable(this);
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    throw new IllegalStateException("A symbolic type variable does not imply an erasure: " + this);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof Generic)) {
                        return false;
                    }
                    Generic generic = (Generic) obj;
                    return generic.getSort().isTypeVariable() && getSymbol().equals(generic.getSymbol());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public Generic findBindingOf(Generic generic) {
                    throw new IllegalStateException("A symbolic type variable does not imply type arguments: " + this);
                }

                @Override // net.bytebuddy.description.NamedElement
                public String getActualName() {
                    return getSymbol();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.annotationSource.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public FieldList<FieldDescription.InGenericShape> getDeclaredFields() {
                    throw new IllegalStateException("A symbolic type variable does not imply field definitions: " + this);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public MethodList<MethodDescription.InGenericShape> getDeclaredMethods() {
                    throw new IllegalStateException("A symbolic type variable does not imply method definitions: " + this);
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeList.Generic getInterfaces() {
                    throw new IllegalStateException("A symbolic type variable does not imply an interface type definition: " + this);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getLowerBounds() {
                    throw new IllegalStateException("A symbolic type variable does not imply lower bounds: " + this);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public Generic getOwnerType() {
                    throw new IllegalStateException("A symbolic type variable does not imply an owner type: " + this);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public RecordComponentList<RecordComponentDescription.InGenericShape> getRecordComponents() {
                    throw new IllegalStateException("A symbolic type variable does not imply record component definitions: " + this);
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDefinition.Sort getSort() {
                    return TypeDefinition.Sort.VARIABLE_SYMBOLIC;
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public StackSize getStackSize() {
                    return StackSize.SINGLE;
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public Generic getSuperClass() {
                    throw new IllegalStateException("A symbolic type variable does not imply a super type definition: " + this);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public String getSymbol() {
                    return this.symbol;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getTypeArguments() {
                    throw new IllegalStateException("A symbolic type variable does not imply type arguments: " + this);
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public String getTypeName() {
                    return toString();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeVariableSource getTypeVariableSource() {
                    throw new IllegalStateException("A symbolic type variable does not imply a variable source: " + this);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getUpperBounds() {
                    throw new IllegalStateException("A symbolic type variable does not imply an upper type bound: " + this);
                }

                public int hashCode() {
                    return this.symbol.hashCode();
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public boolean isArray() {
                    return false;
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public boolean isPrimitive() {
                    return false;
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public boolean isRecord() {
                    return false;
                }

                @Override // java.lang.Iterable
                public Iterator<TypeDefinition> iterator() {
                    throw new IllegalStateException("A symbolic type variable does not imply a super type definition: " + this);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.AbstractBase, net.bytebuddy.description.type.TypeDefinition
                public boolean represents(Type type) {
                    type.getClass();
                    return false;
                }

                public String toString() {
                    return getSymbol();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public Generic getComponentType() {
                    throw new IllegalStateException("A symbolic type variable does not imply a component type: " + this);
                }

                public Symbolic(String str, AnnotationSource annotationSource) {
                    this.symbol = str;
                    this.annotationSource = annotationSource;
                }
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public <T> T accept(Visitor<T> visitor) {
                return visitor.onTypeVariable(this);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Generic)) {
                    return false;
                }
                Generic generic = (Generic) obj;
                return generic.getSort().isTypeVariable() && getSymbol().equals(generic.getSymbol()) && getTypeVariableSource().equals(generic.getTypeVariableSource());
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public Generic findBindingOf(Generic generic) {
                throw new IllegalStateException("A type variable does not imply type arguments: " + this);
            }

            @Override // net.bytebuddy.description.NamedElement
            public String getActualName() {
                return getSymbol();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public FieldList<FieldDescription.InGenericShape> getDeclaredFields() {
                throw new IllegalStateException("A type variable does not imply field definitions: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public MethodList<MethodDescription.InGenericShape> getDeclaredMethods() {
                throw new IllegalStateException("A type variable does not imply method definitions: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeList.Generic getInterfaces() {
                throw new IllegalStateException("A type variable does not imply an interface type definition: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getLowerBounds() {
                throw new IllegalStateException("A type variable does not imply lower bounds: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public Generic getOwnerType() {
                throw new IllegalStateException("A type variable does not imply an owner type: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public RecordComponentList<RecordComponentDescription.InGenericShape> getRecordComponents() {
                throw new IllegalStateException("A type variable does not imply record component definitions: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeDefinition.Sort getSort() {
                return TypeDefinition.Sort.VARIABLE;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public StackSize getStackSize() {
                return StackSize.SINGLE;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            @MaybeNull
            public Generic getSuperClass() {
                throw new IllegalStateException("A type variable does not imply a super type definition: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getTypeArguments() {
                throw new IllegalStateException("A type variable does not imply type arguments: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public String getTypeName() {
                return toString();
            }

            @CachedReturnPlugin.Enhance("hashCode")
            public int hashCode() {
                int hashCode = this.hashCode != 0 ? 0 : getTypeVariableSource().hashCode() ^ getSymbol().hashCode();
                if (hashCode == 0) {
                    return this.hashCode;
                }
                this.hashCode = hashCode;
                return hashCode;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isArray() {
                return false;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isPrimitive() {
                return false;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isRecord() {
                return false;
            }

            @Override // java.lang.Iterable
            public Iterator<TypeDefinition> iterator() {
                throw new IllegalStateException("A type variable does not imply a super type definition: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic.AbstractBase, net.bytebuddy.description.type.TypeDefinition
            public boolean represents(Type type) {
                return equals(TypeDefinition.Sort.describe(type));
            }

            public String toString() {
                return getSymbol();
            }

            /* loaded from: classes2.dex */
            public static class WithAnnotationOverlay extends OfTypeVariable {
                private final AnnotationSource annotationSource;
                private final Generic typeVariable;

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfTypeVariable, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                    return super.getComponentType();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.annotationSource.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public String getSymbol() {
                    return this.typeVariable.getSymbol();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeVariableSource getTypeVariableSource() {
                    return this.typeVariable.getTypeVariableSource();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getUpperBounds() {
                    return this.typeVariable.getUpperBounds();
                }

                public WithAnnotationOverlay(Generic generic, AnnotationSource annotationSource) {
                    this.typeVariable = generic;
                    this.annotationSource = annotationSource;
                }
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public Generic getComponentType() {
                throw new IllegalStateException("A type variable does not imply a component type: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeDescription asErasure() {
                TypeList.Generic upperBounds = getUpperBounds();
                if (upperBounds.isEmpty()) {
                    return TypeDescription.OBJECT;
                }
                return upperBounds.get(0).asErasure();
            }
        }

        /* loaded from: classes2.dex */
        public static abstract class OfWildcardType extends AbstractBase {
            public static final String SYMBOL = "?";
            private transient /* synthetic */ int hashCode;

            /* loaded from: classes2.dex */
            public static class ForLoadedType extends OfWildcardType {
                private final AnnotationReader annotationReader;
                private final WildcardType wildcardType;

                /* loaded from: classes2.dex */
                public static class WildcardLowerBoundTypeList extends TypeList.Generic.AbstractBase {
                    private final AnnotationReader annotationReader;
                    private final Type[] lowerBound;

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                    public int size() {
                        return this.lowerBound.length;
                    }

                    @Override // java.util.AbstractList, java.util.List
                    public Generic get(int i) {
                        return TypeDefinition.Sort.describe(this.lowerBound[i], this.annotationReader.ofWildcardLowerBoundType(i));
                    }

                    public WildcardLowerBoundTypeList(Type[] typeArr, AnnotationReader annotationReader) {
                        this.lowerBound = typeArr;
                        this.annotationReader = annotationReader;
                    }
                }

                /* loaded from: classes2.dex */
                public static class WildcardUpperBoundTypeList extends TypeList.Generic.AbstractBase {
                    private final AnnotationReader annotationReader;
                    private final Type[] upperBound;

                    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                    public int size() {
                        return this.upperBound.length;
                    }

                    @Override // java.util.AbstractList, java.util.List
                    public Generic get(int i) {
                        return TypeDefinition.Sort.describe(this.upperBound[i], this.annotationReader.ofWildcardUpperBoundType(i));
                    }

                    public WildcardUpperBoundTypeList(Type[] typeArr, AnnotationReader annotationReader) {
                        this.upperBound = typeArr;
                        this.annotationReader = annotationReader;
                    }
                }

                public ForLoadedType(WildcardType wildcardType) {
                    this(wildcardType, AnnotationReader.NoOp.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfWildcardType, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                    return super.getComponentType();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.annotationReader.asList();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getLowerBounds() {
                    return new WildcardLowerBoundTypeList(this.wildcardType.getLowerBounds(), this.annotationReader);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getUpperBounds() {
                    return new WildcardUpperBoundTypeList(this.wildcardType.getUpperBounds(), this.annotationReader);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfWildcardType, net.bytebuddy.description.type.TypeDescription.Generic.AbstractBase, net.bytebuddy.description.type.TypeDefinition
                public boolean represents(Type type) {
                    return this.wildcardType == type || super.represents(type);
                }

                public ForLoadedType(WildcardType wildcardType, AnnotationReader annotationReader) {
                    this.wildcardType = wildcardType;
                    this.annotationReader = annotationReader;
                }
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public <T> T accept(Visitor<T> visitor) {
                return visitor.onWildcard(this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeDescription asErasure() {
                throw new IllegalStateException("A wildcard does not represent an erasable type: " + this);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Generic)) {
                    return false;
                }
                Generic generic = (Generic) obj;
                return generic.getSort().isWildcard() && getUpperBounds().equals(generic.getUpperBounds()) && getLowerBounds().equals(generic.getLowerBounds());
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public Generic findBindingOf(Generic generic) {
                throw new IllegalStateException("A wildcard does not imply type arguments: " + this);
            }

            @Override // net.bytebuddy.description.NamedElement
            public String getActualName() {
                return toString();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public FieldList<FieldDescription.InGenericShape> getDeclaredFields() {
                throw new IllegalStateException("A wildcard does not imply field definitions: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public MethodList<MethodDescription.InGenericShape> getDeclaredMethods() {
                throw new IllegalStateException("A wildcard does not imply method definitions: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeList.Generic getInterfaces() {
                throw new IllegalStateException("A wildcard does not imply an interface type definition: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public Generic getOwnerType() {
                throw new IllegalStateException("A wildcard does not imply an owner type: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public RecordComponentList<RecordComponentDescription.InGenericShape> getRecordComponents() {
                throw new IllegalStateException("A wildcard does not imply record component definitions: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeDefinition.Sort getSort() {
                return TypeDefinition.Sort.WILDCARD;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public StackSize getStackSize() {
                throw new IllegalStateException("A wildcard does not imply an operand stack size: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            @MaybeNull
            public Generic getSuperClass() {
                throw new IllegalStateException("A wildcard does not imply a super type definition: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public String getSymbol() {
                throw new IllegalStateException("A wildcard does not imply a symbol: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getTypeArguments() {
                throw new IllegalStateException("A wildcard does not imply type arguments: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public String getTypeName() {
                return toString();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeVariableSource getTypeVariableSource() {
                throw new IllegalStateException("A wildcard does not imply a type variable source: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isArray() {
                return false;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isPrimitive() {
                return false;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isRecord() {
                return false;
            }

            @Override // java.lang.Iterable
            public Iterator<TypeDefinition> iterator() {
                throw new IllegalStateException("A wildcard does not imply a super type definition: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic.AbstractBase, net.bytebuddy.description.type.TypeDefinition
            public boolean represents(Type type) {
                return equals(TypeDefinition.Sort.describe(type));
            }

            /* loaded from: classes2.dex */
            public static class Latent extends OfWildcardType {
                private final AnnotationSource annotationSource;
                private final List<? extends Generic> lowerBounds;
                private final List<? extends Generic> upperBounds;

                public static Generic boundedAbove(Generic generic, AnnotationSource annotationSource) {
                    return new Latent(Collections.singletonList(generic), Collections.emptyList(), annotationSource);
                }

                public static Generic boundedBelow(Generic generic, AnnotationSource annotationSource) {
                    return new Latent(Collections.singletonList(Generic.OBJECT), Collections.singletonList(generic), annotationSource);
                }

                public static Generic unbounded(AnnotationSource annotationSource) {
                    return new Latent(Collections.singletonList(Generic.OBJECT), Collections.emptyList(), annotationSource);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfWildcardType, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public /* bridge */ /* synthetic */ TypeDefinition getComponentType() {
                    return super.getComponentType();
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.annotationSource.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getLowerBounds() {
                    return new TypeList.Generic.Explicit(this.lowerBounds);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                public TypeList.Generic getUpperBounds() {
                    return new TypeList.Generic.Explicit(this.upperBounds);
                }

                public Latent(List<? extends Generic> list, List<? extends Generic> list2, AnnotationSource annotationSource) {
                    this.upperBounds = list;
                    this.lowerBounds = list2;
                    this.annotationSource = annotationSource;
                }
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public Generic getComponentType() {
                throw new IllegalStateException("A wildcard does not imply a component type: " + this);
            }

            @CachedReturnPlugin.Enhance("hashCode")
            public int hashCode() {
                int i;
                if (this.hashCode != 0) {
                    i = 0;
                } else {
                    int i2 = 1;
                    int i3 = 1;
                    for (Generic generic : getLowerBounds()) {
                        i3 = (i3 * 31) + generic.hashCode();
                    }
                    for (Generic generic2 : getUpperBounds()) {
                        i2 = (i2 * 31) + generic2.hashCode();
                    }
                    i = i3 ^ i2;
                }
                if (i == 0) {
                    return this.hashCode;
                }
                this.hashCode = i;
                return i;
            }

            public String toString() {
                StringBuilder sb = new StringBuilder(SYMBOL);
                TypeList.Generic lowerBounds = getLowerBounds();
                if (!lowerBounds.isEmpty()) {
                    sb.append(" super ");
                } else {
                    lowerBounds = getUpperBounds();
                    if (lowerBounds.getOnly().equals(Generic.OBJECT)) {
                        return SYMBOL;
                    }
                    sb.append(" extends ");
                }
                sb.append(lowerBounds.getOnly().getTypeName());
                return sb.toString();
            }
        }

        /* loaded from: classes2.dex */
        public interface Visitor<T> {

            /* loaded from: classes2.dex */
            public enum AnnotationStripper implements Visitor<Generic> {
                INSTANCE;

                /* loaded from: classes2.dex */
                public static class NonAnnotatedTypeVariable extends OfTypeVariable {
                    private final Generic typeVariable;

                    @Override // net.bytebuddy.description.annotation.AnnotationSource
                    public AnnotationList getDeclaredAnnotations() {
                        return new AnnotationList.Empty();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic
                    public String getSymbol() {
                        return this.typeVariable.getSymbol();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic
                    public TypeVariableSource getTypeVariableSource() {
                        return this.typeVariable.getTypeVariableSource();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic
                    public TypeList.Generic getUpperBounds() {
                        return this.typeVariable.getUpperBounds();
                    }

                    public NonAnnotatedTypeVariable(Generic generic) {
                        this.typeVariable = generic;
                    }
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public Generic onGenericArray(Generic generic) {
                    return new OfGenericArray.Latent((Generic) generic.getComponentType().accept(this), AnnotationSource.Empty.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public Generic onNonGenericType(Generic generic) {
                    if (generic.isArray()) {
                        return new OfGenericArray.Latent(onNonGenericType(generic.getComponentType()), AnnotationSource.Empty.INSTANCE);
                    }
                    return new OfNonGenericType.Latent(generic.asErasure(), AnnotationSource.Empty.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onParameterizedType(Generic generic) {
                    Generic ownerType = generic.getOwnerType();
                    return new OfParameterizedType.Latent(generic.asErasure(), ownerType == null ? Generic.UNDEFINED : (Generic) ownerType.accept(this), generic.getTypeArguments().accept(this), AnnotationSource.Empty.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onTypeVariable(Generic generic) {
                    return new NonAnnotatedTypeVariable(generic);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onWildcard(Generic generic) {
                    return new OfWildcardType.Latent(generic.getUpperBounds().accept(this), generic.getLowerBounds().accept(this), AnnotationSource.Empty.INSTANCE);
                }
            }

            /* loaded from: classes2.dex */
            public enum Assigner implements Visitor<Dispatcher> {
                INSTANCE;

                /* loaded from: classes2.dex */
                public interface Dispatcher {

                    /* loaded from: classes2.dex */
                    public static abstract class AbstractBase implements Dispatcher, Visitor<Boolean> {
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Assigner.Dispatcher
                        public boolean isAssignableFrom(Generic generic) {
                            return ((Boolean) generic.accept(this)).booleanValue();
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class ForGenericArray extends AbstractBase {
                        private final Generic genericArray;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.genericArray.equals(((ForGenericArray) obj).genericArray);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + this.genericArray.hashCode();
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                        public Boolean onGenericArray(Generic generic) {
                            return Boolean.valueOf(((Dispatcher) this.genericArray.getComponentType().accept(Assigner.INSTANCE)).isAssignableFrom(generic.getComponentType()));
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                        public Boolean onNonGenericType(Generic generic) {
                            return Boolean.valueOf(generic.isArray() && ((Dispatcher) this.genericArray.getComponentType().accept(Assigner.INSTANCE)).isAssignableFrom(generic.getComponentType()));
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onParameterizedType(Generic generic) {
                            return Boolean.FALSE;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onTypeVariable(Generic generic) {
                            return Boolean.FALSE;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onWildcard(Generic generic) {
                            throw new IllegalArgumentException("A wildcard is not a first-level type: " + generic);
                        }

                        public ForGenericArray(Generic generic) {
                            this.genericArray = generic;
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class ForNonGenericType extends AbstractBase {
                        private final TypeDescription typeDescription;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForNonGenericType) obj).typeDescription);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                        public Boolean onGenericArray(Generic generic) {
                            boolean z;
                            if (this.typeDescription.isArray()) {
                                z = ((Boolean) generic.getComponentType().accept(new ForNonGenericType(this.typeDescription.getComponentType()))).booleanValue();
                            } else {
                                z = this.typeDescription.represents(Object.class) || TypeDescription.ARRAY_INTERFACES.contains(this.typeDescription.asGenericType());
                            }
                            return Boolean.valueOf(z);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onNonGenericType(Generic generic) {
                            return Boolean.valueOf(this.typeDescription.isAssignableFrom(generic.asErasure()));
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onParameterizedType(Generic generic) {
                            if (this.typeDescription.equals(generic.asErasure())) {
                                return Boolean.TRUE;
                            }
                            Generic superClass = generic.getSuperClass();
                            if (superClass != null && isAssignableFrom(superClass)) {
                                return Boolean.TRUE;
                            }
                            for (Generic generic2 : generic.getInterfaces()) {
                                if (isAssignableFrom(generic2)) {
                                    return Boolean.TRUE;
                                }
                            }
                            return Boolean.valueOf(this.typeDescription.represents(Object.class));
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onTypeVariable(Generic generic) {
                            for (Generic generic2 : generic.getUpperBounds()) {
                                if (isAssignableFrom(generic2)) {
                                    return Boolean.TRUE;
                                }
                            }
                            return Boolean.FALSE;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onWildcard(Generic generic) {
                            throw new IllegalArgumentException("A wildcard is not a first-level type: " + generic);
                        }

                        public ForNonGenericType(TypeDescription typeDescription) {
                            this.typeDescription = typeDescription;
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class ForParameterizedType extends AbstractBase {
                        private final Generic parameterizedType;

                        /* loaded from: classes2.dex */
                        public enum ParameterAssigner implements Visitor<Dispatcher> {
                            INSTANCE;

                            @HashCodeAndEqualsPlugin.Enhance
                            /* loaded from: classes.dex */
                            public static class ContravariantBinding implements Dispatcher {
                                private final Generic lowerBound;

                                public boolean equals(@MaybeNull Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return obj != null && getClass() == obj.getClass() && this.lowerBound.equals(((ContravariantBinding) obj).lowerBound);
                                }

                                public int hashCode() {
                                    return (getClass().hashCode() * 31) + this.lowerBound.hashCode();
                                }

                                public ContravariantBinding(Generic generic) {
                                    this.lowerBound = generic;
                                }

                                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Assigner.Dispatcher
                                public boolean isAssignableFrom(Generic generic) {
                                    if (generic.getSort().isWildcard()) {
                                        TypeList.Generic lowerBounds = generic.getLowerBounds();
                                        if (lowerBounds.isEmpty() || !((Dispatcher) lowerBounds.getOnly().accept(Assigner.INSTANCE)).isAssignableFrom(this.lowerBound)) {
                                            return false;
                                        }
                                        return true;
                                    } else if (!generic.getSort().isWildcard() && !((Dispatcher) generic.accept(Assigner.INSTANCE)).isAssignableFrom(this.lowerBound)) {
                                        return false;
                                    } else {
                                        return true;
                                    }
                                }
                            }

                            @HashCodeAndEqualsPlugin.Enhance
                            /* loaded from: classes.dex */
                            public static class CovariantBinding implements Dispatcher {
                                private final Generic upperBound;

                                public boolean equals(@MaybeNull Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return obj != null && getClass() == obj.getClass() && this.upperBound.equals(((CovariantBinding) obj).upperBound);
                                }

                                public int hashCode() {
                                    return (getClass().hashCode() * 31) + this.upperBound.hashCode();
                                }

                                public CovariantBinding(Generic generic) {
                                    this.upperBound = generic;
                                }

                                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Assigner.Dispatcher
                                public boolean isAssignableFrom(Generic generic) {
                                    if (generic.getSort().isWildcard()) {
                                        if (generic.getLowerBounds().isEmpty() && ((Dispatcher) this.upperBound.accept(Assigner.INSTANCE)).isAssignableFrom(generic.getUpperBounds().getOnly())) {
                                            return true;
                                        }
                                        return false;
                                    }
                                    return ((Dispatcher) this.upperBound.accept(Assigner.INSTANCE)).isAssignableFrom(generic);
                                }
                            }

                            @HashCodeAndEqualsPlugin.Enhance
                            /* loaded from: classes.dex */
                            public static class InvariantBinding implements Dispatcher {
                                private final Generic typeDescription;

                                public boolean equals(@MaybeNull Object obj) {
                                    if (this == obj) {
                                        return true;
                                    }
                                    return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((InvariantBinding) obj).typeDescription);
                                }

                                public int hashCode() {
                                    return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                                }

                                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Assigner.Dispatcher
                                public boolean isAssignableFrom(Generic generic) {
                                    return generic.equals(this.typeDescription);
                                }

                                public InvariantBinding(Generic generic) {
                                    this.typeDescription = generic;
                                }
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                            public Dispatcher onGenericArray(Generic generic) {
                                return new InvariantBinding(generic);
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                            public Dispatcher onNonGenericType(Generic generic) {
                                return new InvariantBinding(generic);
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                            public Dispatcher onParameterizedType(Generic generic) {
                                return new InvariantBinding(generic);
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                            public Dispatcher onTypeVariable(Generic generic) {
                                return new InvariantBinding(generic);
                            }

                            @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                            public Dispatcher onWildcard(Generic generic) {
                                TypeList.Generic lowerBounds = generic.getLowerBounds();
                                if (lowerBounds.isEmpty()) {
                                    return new CovariantBinding(generic.getUpperBounds().getOnly());
                                }
                                return new ContravariantBinding(lowerBounds.getOnly());
                            }
                        }

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.parameterizedType.equals(((ForParameterizedType) obj).parameterizedType);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + this.parameterizedType.hashCode();
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onGenericArray(Generic generic) {
                            return Boolean.FALSE;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onNonGenericType(Generic generic) {
                            if (this.parameterizedType.asErasure().equals(generic.asErasure())) {
                                return Boolean.TRUE;
                            }
                            Generic superClass = generic.getSuperClass();
                            if (superClass != null && isAssignableFrom(superClass)) {
                                return Boolean.TRUE;
                            }
                            for (Generic generic2 : generic.getInterfaces()) {
                                if (isAssignableFrom(generic2)) {
                                    return Boolean.TRUE;
                                }
                            }
                            return Boolean.FALSE;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onParameterizedType(Generic generic) {
                            if (this.parameterizedType.asErasure().equals(generic.asErasure())) {
                                Generic ownerType = this.parameterizedType.getOwnerType();
                                Generic ownerType2 = generic.getOwnerType();
                                if (ownerType != null && ownerType2 != null && !((Dispatcher) ownerType.accept(Assigner.INSTANCE)).isAssignableFrom(ownerType2)) {
                                    return Boolean.FALSE;
                                }
                                TypeList.Generic typeArguments = this.parameterizedType.getTypeArguments();
                                TypeList.Generic typeArguments2 = generic.getTypeArguments();
                                if (typeArguments.size() == typeArguments2.size()) {
                                    for (int i = 0; i < typeArguments.size(); i++) {
                                        if (!((Dispatcher) typeArguments.get(i).accept(ParameterAssigner.INSTANCE)).isAssignableFrom(typeArguments2.get(i))) {
                                            return Boolean.FALSE;
                                        }
                                    }
                                    return Boolean.TRUE;
                                }
                                throw new IllegalArgumentException("Incompatible generic types: " + generic + " and " + this.parameterizedType);
                            }
                            Generic superClass = generic.getSuperClass();
                            if (superClass != null && isAssignableFrom(superClass)) {
                                return Boolean.TRUE;
                            }
                            for (Generic generic2 : generic.getInterfaces()) {
                                if (isAssignableFrom(generic2)) {
                                    return Boolean.TRUE;
                                }
                            }
                            return Boolean.FALSE;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onTypeVariable(Generic generic) {
                            for (Generic generic2 : generic.getUpperBounds()) {
                                if (isAssignableFrom(generic2)) {
                                    return Boolean.TRUE;
                                }
                            }
                            return Boolean.FALSE;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onWildcard(Generic generic) {
                            throw new IllegalArgumentException("A wildcard is not a first-level type: " + generic);
                        }

                        public ForParameterizedType(Generic generic) {
                            this.parameterizedType = generic;
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance
                    /* loaded from: classes.dex */
                    public static class ForTypeVariable extends AbstractBase {
                        private final Generic typeVariable;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            return obj != null && getClass() == obj.getClass() && this.typeVariable.equals(((ForTypeVariable) obj).typeVariable);
                        }

                        public int hashCode() {
                            return (getClass().hashCode() * 31) + this.typeVariable.hashCode();
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onGenericArray(Generic generic) {
                            return Boolean.FALSE;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onNonGenericType(Generic generic) {
                            return Boolean.FALSE;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onParameterizedType(Generic generic) {
                            return Boolean.FALSE;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onTypeVariable(Generic generic) {
                            if (generic.equals(this.typeVariable)) {
                                return Boolean.TRUE;
                            }
                            for (Generic generic2 : generic.getUpperBounds()) {
                                if (isAssignableFrom(generic2)) {
                                    return Boolean.TRUE;
                                }
                            }
                            return Boolean.FALSE;
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                        public Boolean onWildcard(Generic generic) {
                            throw new IllegalArgumentException("A wildcard is not a first-level type: " + generic);
                        }

                        public ForTypeVariable(Generic generic) {
                            this.typeVariable = generic;
                        }
                    }

                    boolean isAssignableFrom(Generic generic);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Dispatcher onGenericArray(Generic generic) {
                    return new Dispatcher.ForGenericArray(generic);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Dispatcher onNonGenericType(Generic generic) {
                    return new Dispatcher.ForNonGenericType(generic.asErasure());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Dispatcher onParameterizedType(Generic generic) {
                    return new Dispatcher.ForParameterizedType(generic);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Dispatcher onTypeVariable(Generic generic) {
                    return new Dispatcher.ForTypeVariable(generic);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Dispatcher onWildcard(Generic generic) {
                    throw new IllegalArgumentException("A wildcard is not a first level type: " + this);
                }
            }

            /* loaded from: classes2.dex */
            public static class ForRawType implements Visitor<Generic> {
                private final TypeDescription declaringType;

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onNonGenericType(Generic generic) {
                    return generic;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onGenericArray(Generic generic) {
                    return this.declaringType.isGenerified() ? new OfNonGenericType.Latent(generic.asErasure(), generic) : generic;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onParameterizedType(Generic generic) {
                    return this.declaringType.isGenerified() ? new OfNonGenericType.Latent(generic.asErasure(), generic) : generic;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onTypeVariable(Generic generic) {
                    return this.declaringType.isGenerified() ? new OfNonGenericType.Latent(generic.asErasure(), generic) : generic;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onWildcard(Generic generic) {
                    throw new IllegalStateException("Did not expect wildcard on top-level: " + generic);
                }

                public ForRawType(TypeDescription typeDescription) {
                    this.declaringType = typeDescription;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForSignatureVisitor implements Visitor<SignatureVisitor> {
                private static final int ONLY_CHARACTER = 0;
                public final SignatureVisitor signatureVisitor;

                /* loaded from: classes2.dex */
                public static class OfTypeArgument extends ForSignatureVisitor {
                    public OfTypeArgument(SignatureVisitor signatureVisitor) {
                        super(signatureVisitor);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.ForSignatureVisitor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public SignatureVisitor onGenericArray(Generic generic) {
                        generic.accept(new ForSignatureVisitor(this.signatureVisitor.visitTypeArgument(SignatureVisitor.INSTANCEOF)));
                        return this.signatureVisitor;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.ForSignatureVisitor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public SignatureVisitor onNonGenericType(Generic generic) {
                        generic.accept(new ForSignatureVisitor(this.signatureVisitor.visitTypeArgument(SignatureVisitor.INSTANCEOF)));
                        return this.signatureVisitor;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.ForSignatureVisitor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public SignatureVisitor onParameterizedType(Generic generic) {
                        generic.accept(new ForSignatureVisitor(this.signatureVisitor.visitTypeArgument(SignatureVisitor.INSTANCEOF)));
                        return this.signatureVisitor;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.ForSignatureVisitor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public SignatureVisitor onTypeVariable(Generic generic) {
                        generic.accept(new ForSignatureVisitor(this.signatureVisitor.visitTypeArgument(SignatureVisitor.INSTANCEOF)));
                        return this.signatureVisitor;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.ForSignatureVisitor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public SignatureVisitor onWildcard(Generic generic) {
                        TypeList.Generic upperBounds = generic.getUpperBounds();
                        TypeList.Generic lowerBounds = generic.getLowerBounds();
                        if (lowerBounds.isEmpty() && upperBounds.getOnly().represents(Object.class)) {
                            this.signatureVisitor.visitTypeArgument();
                        } else if (!lowerBounds.isEmpty()) {
                            lowerBounds.getOnly().accept(new ForSignatureVisitor(this.signatureVisitor.visitTypeArgument(SignatureVisitor.SUPER)));
                        } else {
                            upperBounds.getOnly().accept(new ForSignatureVisitor(this.signatureVisitor.visitTypeArgument(SignatureVisitor.EXTENDS)));
                        }
                        return this.signatureVisitor;
                    }
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.signatureVisitor.equals(((ForSignatureVisitor) obj).signatureVisitor);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.signatureVisitor.hashCode();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public SignatureVisitor onGenericArray(Generic generic) {
                    generic.getComponentType().accept(new ForSignatureVisitor(this.signatureVisitor.visitArrayType()));
                    return this.signatureVisitor;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public SignatureVisitor onNonGenericType(Generic generic) {
                    if (generic.isArray()) {
                        generic.getComponentType().accept(new ForSignatureVisitor(this.signatureVisitor.visitArrayType()));
                    } else if (generic.isPrimitive()) {
                        this.signatureVisitor.visitBaseType(generic.asErasure().getDescriptor().charAt(0));
                    } else {
                        this.signatureVisitor.visitClassType(generic.asErasure().getInternalName());
                        this.signatureVisitor.visitEnd();
                    }
                    return this.signatureVisitor;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public SignatureVisitor onParameterizedType(Generic generic) {
                    onOwnableType(generic);
                    this.signatureVisitor.visitEnd();
                    return this.signatureVisitor;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public SignatureVisitor onTypeVariable(Generic generic) {
                    this.signatureVisitor.visitTypeVariable(generic.getSymbol());
                    return this.signatureVisitor;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public SignatureVisitor onWildcard(Generic generic) {
                    throw new IllegalStateException("Unexpected wildcard: " + generic);
                }

                public ForSignatureVisitor(SignatureVisitor signatureVisitor) {
                    this.signatureVisitor = signatureVisitor;
                }

                private void onOwnableType(Generic generic) {
                    Generic ownerType = generic.getOwnerType();
                    if (ownerType != null && ownerType.getSort().isParameterized()) {
                        onOwnableType(ownerType);
                        this.signatureVisitor.visitInnerClassType(generic.asErasure().getSimpleName());
                    } else {
                        this.signatureVisitor.visitClassType(generic.asErasure().getInternalName());
                    }
                    for (Generic generic2 : generic.getTypeArguments()) {
                        generic2.accept(new OfTypeArgument(this.signatureVisitor));
                    }
                }
            }

            /* loaded from: classes2.dex */
            public enum NoOp implements Visitor<Generic> {
                INSTANCE;

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onGenericArray(Generic generic) {
                    return generic;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onNonGenericType(Generic generic) {
                    return generic;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onParameterizedType(Generic generic) {
                    return generic;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onTypeVariable(Generic generic) {
                    return generic;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onWildcard(Generic generic) {
                    return generic;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Reducing implements Visitor<TypeDescription> {
                private final TypeDescription declaringType;
                private final List<? extends TypeVariableToken> typeVariableTokens;

                public Reducing(TypeDescription typeDescription, TypeVariableToken... typeVariableTokenArr) {
                    this(typeDescription, Arrays.asList(typeVariableTokenArr));
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Reducing reducing = (Reducing) obj;
                        return this.declaringType.equals(reducing.declaringType) && this.typeVariableTokens.equals(reducing.typeVariableTokens);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.declaringType.hashCode()) * 31) + this.typeVariableTokens.hashCode();
                }

                public Reducing(TypeDescription typeDescription, List<? extends TypeVariableToken> list) {
                    this.declaringType = typeDescription;
                    this.typeVariableTokens = list;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public TypeDescription onGenericArray(Generic generic) {
                    Generic generic2 = generic;
                    int i = 0;
                    do {
                        generic2 = generic2.getComponentType();
                        i++;
                    } while (generic2.isArray());
                    if (generic2.getSort().isTypeVariable()) {
                        for (TypeVariableToken typeVariableToken : this.typeVariableTokens) {
                            if (generic2.getSymbol().equals(typeVariableToken.getSymbol())) {
                                return ArrayProjection.m15198of((TypeDescription) typeVariableToken.getBounds().get(0).accept(this), i);
                            }
                        }
                        return TargetType.resolve(ArrayProjection.m15198of(this.declaringType.findExpectedVariable(generic2.getSymbol()).asErasure(), i), this.declaringType);
                    }
                    return TargetType.resolve(generic.asErasure(), this.declaringType);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public TypeDescription onNonGenericType(Generic generic) {
                    return TargetType.resolve(generic.asErasure(), this.declaringType);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public TypeDescription onParameterizedType(Generic generic) {
                    return TargetType.resolve(generic.asErasure(), this.declaringType);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public TypeDescription onTypeVariable(Generic generic) {
                    for (TypeVariableToken typeVariableToken : this.typeVariableTokens) {
                        if (generic.getSymbol().equals(typeVariableToken.getSymbol())) {
                            return (TypeDescription) typeVariableToken.getBounds().get(0).accept(this);
                        }
                    }
                    return TargetType.resolve(this.declaringType.findExpectedVariable(generic.getSymbol()).asErasure(), this.declaringType);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public TypeDescription onWildcard(Generic generic) {
                    throw new IllegalStateException("A wildcard cannot be a top-level type: " + generic);
                }
            }

            /* loaded from: classes2.dex */
            public enum Reifying implements Visitor<Generic> {
                INITIATING { // from class: net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Reifying.1
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Reifying, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onGenericArray(Generic generic) {
                        return super.onGenericArray(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Reifying, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onNonGenericType(Generic generic) {
                        return super.onNonGenericType(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Generic onParameterizedType(Generic generic) {
                        return generic;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Reifying, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onTypeVariable(Generic generic) {
                        return super.onTypeVariable(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Reifying, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onWildcard(Generic generic) {
                        return super.onWildcard(generic);
                    }
                },
                INHERITING { // from class: net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Reifying.2
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Reifying, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onGenericArray(Generic generic) {
                        return super.onGenericArray(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Reifying, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onNonGenericType(Generic generic) {
                        return super.onNonGenericType(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Reifying, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onTypeVariable(Generic generic) {
                        return super.onTypeVariable(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Reifying, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onWildcard(Generic generic) {
                        return super.onWildcard(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Generic onParameterizedType(Generic generic) {
                        return new OfParameterizedType.ForReifiedType(generic);
                    }
                };

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onGenericArray(Generic generic) {
                    throw new IllegalArgumentException("Cannot reify a generic array: " + generic);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onNonGenericType(Generic generic) {
                    TypeDescription asErasure = generic.asErasure();
                    return asErasure.isGenerified() ? new OfNonGenericType.ForReifiedErasure(asErasure) : generic;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onTypeVariable(Generic generic) {
                    throw new IllegalArgumentException("Cannot reify a type variable: " + generic);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onWildcard(Generic generic) {
                    throw new IllegalArgumentException("Cannot reify a wildcard: " + generic);
                }
            }

            /* loaded from: classes2.dex */
            public static abstract class Substitutor implements Visitor<Generic> {

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForAttachment extends Substitutor {
                    private final TypeDescription declaringType;
                    private final TypeVariableSource typeVariableSource;

                    public ForAttachment(TypeDefinition typeDefinition, TypeVariableSource typeVariableSource) {
                        this(typeDefinition.asErasure(), typeVariableSource);
                    }

                    /* renamed from: of */
                    public static ForAttachment m15182of(TypeDescription typeDescription) {
                        return new ForAttachment(typeDescription, (TypeVariableSource) typeDescription);
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForAttachment forAttachment = (ForAttachment) obj;
                            return this.declaringType.equals(forAttachment.declaringType) && this.typeVariableSource.equals(forAttachment.typeVariableSource);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.declaringType.hashCode()) * 31) + this.typeVariableSource.hashCode();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public /* bridge */ /* synthetic */ Generic onGenericArray(Generic generic) {
                        return super.onGenericArray(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public /* bridge */ /* synthetic */ Generic onNonGenericType(Generic generic) {
                        return super.onNonGenericType(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onParameterizedType(Generic generic) {
                        return super.onParameterizedType(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor
                    public Generic onSimpleType(Generic generic) {
                        return generic.represents(TargetType.class) ? new OfNonGenericType.Latent(this.declaringType, generic) : generic;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onWildcard(Generic generic) {
                        return super.onWildcard(generic);
                    }

                    public ForAttachment(TypeDescription typeDescription, TypeVariableSource typeVariableSource) {
                        this.declaringType = typeDescription;
                        this.typeVariableSource = typeVariableSource;
                    }

                    @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    /* renamed from: of */
                    public static ForAttachment m15186of(FieldDescription fieldDescription) {
                        return new ForAttachment(fieldDescription.getDeclaringType(), fieldDescription.getDeclaringType().asErasure());
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Generic onTypeVariable(Generic generic) {
                        return new OfTypeVariable.WithAnnotationOverlay(this.typeVariableSource.findExpectedVariable(generic.getSymbol()), generic);
                    }

                    /* renamed from: of */
                    public static ForAttachment m15185of(MethodDescription methodDescription) {
                        return new ForAttachment(methodDescription.getDeclaringType(), methodDescription);
                    }

                    /* renamed from: of */
                    public static ForAttachment m15184of(ParameterDescription parameterDescription) {
                        return new ForAttachment(parameterDescription.getDeclaringMethod().getDeclaringType(), parameterDescription.getDeclaringMethod());
                    }

                    /* renamed from: of */
                    public static ForAttachment m15183of(RecordComponentDescription recordComponentDescription) {
                        return new ForAttachment(recordComponentDescription.getDeclaringType(), recordComponentDescription.getDeclaringType().asErasure());
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForDetachment extends Substitutor {
                    private final ElementMatcher<? super TypeDescription> typeMatcher;

                    /* renamed from: of */
                    public static Visitor<Generic> m15181of(TypeDefinition typeDefinition) {
                        return new ForDetachment(ElementMatchers.m14829is(typeDefinition));
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.typeMatcher.equals(((ForDetachment) obj).typeMatcher);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.typeMatcher.hashCode();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public /* bridge */ /* synthetic */ Generic onGenericArray(Generic generic) {
                        return super.onGenericArray(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public /* bridge */ /* synthetic */ Generic onNonGenericType(Generic generic) {
                        return super.onNonGenericType(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onParameterizedType(Generic generic) {
                        return super.onParameterizedType(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onWildcard(Generic generic) {
                        return super.onWildcard(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor
                    public Generic onSimpleType(Generic generic) {
                        if (this.typeMatcher.matches(generic.asErasure())) {
                            return new OfNonGenericType.Latent(TargetType.DESCRIPTION, generic.getOwnerType(), generic);
                        }
                        return generic;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Generic onTypeVariable(Generic generic) {
                        return new OfTypeVariable.Symbolic(generic.getSymbol(), generic);
                    }

                    public ForDetachment(ElementMatcher<? super TypeDescription> elementMatcher) {
                        this.typeMatcher = elementMatcher;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForTokenNormalization extends Substitutor {
                    private final TypeDescription typeDescription;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForTokenNormalization) obj).typeDescription);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public /* bridge */ /* synthetic */ Generic onGenericArray(Generic generic) {
                        return super.onGenericArray(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public /* bridge */ /* synthetic */ Generic onNonGenericType(Generic generic) {
                        return super.onNonGenericType(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onParameterizedType(Generic generic) {
                        return super.onParameterizedType(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor
                    public Generic onSimpleType(Generic generic) {
                        return generic.represents(TargetType.class) ? new OfNonGenericType.Latent(this.typeDescription, generic) : generic;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onWildcard(Generic generic) {
                        return super.onWildcard(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Generic onTypeVariable(Generic generic) {
                        return new OfTypeVariable.Symbolic(generic.getSymbol(), generic);
                    }

                    public ForTokenNormalization(TypeDescription typeDescription) {
                        this.typeDescription = typeDescription;
                    }
                }

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForTypeVariableBinding extends WithoutTypeSubstitution {
                    private final Generic parameterizedType;

                    /* loaded from: classes2.dex */
                    public class RetainedMethodTypeVariable extends OfTypeVariable {
                        private final Generic typeVariable;

                        @Override // net.bytebuddy.description.annotation.AnnotationSource
                        public AnnotationList getDeclaredAnnotations() {
                            return this.typeVariable.getDeclaredAnnotations();
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public String getSymbol() {
                            return this.typeVariable.getSymbol();
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeVariableSource getTypeVariableSource() {
                            return this.typeVariable.getTypeVariableSource();
                        }

                        @Override // net.bytebuddy.description.type.TypeDescription.Generic
                        public TypeList.Generic getUpperBounds() {
                            return this.typeVariable.getUpperBounds().accept(ForTypeVariableBinding.this);
                        }

                        public RetainedMethodTypeVariable(Generic generic) {
                            this.typeVariable = generic;
                        }
                    }

                    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
                    /* loaded from: classes.dex */
                    public class TypeVariableSubstitutor implements TypeVariableSource.Visitor<Generic> {
                        private final Generic typeVariable;

                        public boolean equals(@MaybeNull Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            if (obj != null && getClass() == obj.getClass()) {
                                TypeVariableSubstitutor typeVariableSubstitutor = (TypeVariableSubstitutor) obj;
                                return this.typeVariable.equals(typeVariableSubstitutor.typeVariable) && ForTypeVariableBinding.this.equals(ForTypeVariableBinding.this);
                            }
                            return false;
                        }

                        public int hashCode() {
                            return (((getClass().hashCode() * 31) + this.typeVariable.hashCode()) * 31) + ForTypeVariableBinding.this.hashCode();
                        }

                        public TypeVariableSubstitutor(Generic generic) {
                            this.typeVariable = generic;
                        }

                        @Override // net.bytebuddy.description.TypeVariableSource.Visitor
                        public Generic onMethod(MethodDescription.InDefinedShape inDefinedShape) {
                            return new RetainedMethodTypeVariable(this.typeVariable);
                        }

                        @Override // net.bytebuddy.description.TypeVariableSource.Visitor
                        public Generic onType(TypeDescription typeDescription) {
                            Generic findBindingOf = ForTypeVariableBinding.this.parameterizedType.findBindingOf(this.typeVariable);
                            return findBindingOf == null ? this.typeVariable.asRawType() : findBindingOf;
                        }
                    }

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.parameterizedType.equals(((ForTypeVariableBinding) obj).parameterizedType);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.parameterizedType.hashCode();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Generic onTypeVariable(Generic generic) {
                        return (Generic) generic.getTypeVariableSource().accept(new TypeVariableSubstitutor(generic));
                    }

                    public ForTypeVariableBinding(Generic generic) {
                        this.parameterizedType = generic;
                    }
                }

                /* loaded from: classes2.dex */
                public static abstract class WithoutTypeSubstitution extends Substitutor {
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public /* bridge */ /* synthetic */ Generic onGenericArray(Generic generic) {
                        return super.onGenericArray(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Generic onNonGenericType(Generic generic) {
                        return generic;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onParameterizedType(Generic generic) {
                        return super.onParameterizedType(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor
                    public Generic onSimpleType(Generic generic) {
                        return generic;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onWildcard(Generic generic) {
                        return super.onWildcard(generic);
                    }
                }

                public abstract Generic onSimpleType(Generic generic);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForReplacement extends Substitutor {
                    private final TypeDescription typeDescription;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForReplacement) obj).typeDescription);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public /* bridge */ /* synthetic */ Generic onGenericArray(Generic generic) {
                        return super.onGenericArray(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public /* bridge */ /* synthetic */ Generic onNonGenericType(Generic generic) {
                        return super.onNonGenericType(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onParameterizedType(Generic generic) {
                        return super.onParameterizedType(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor
                    public Generic onSimpleType(Generic generic) {
                        return generic.asErasure().equals(this.typeDescription) ? new OfNonGenericType.Latent(this.typeDescription, generic) : generic;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Generic onTypeVariable(Generic generic) {
                        return generic;
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Substitutor, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Generic onWildcard(Generic generic) {
                        return super.onWildcard(generic);
                    }

                    public ForReplacement(TypeDescription typeDescription) {
                        this.typeDescription = typeDescription;
                    }
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public Generic onGenericArray(Generic generic) {
                    return new OfGenericArray.Latent((Generic) generic.getComponentType().accept(this), generic);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public Generic onNonGenericType(Generic generic) {
                    if (generic.isArray()) {
                        return new OfGenericArray.Latent((Generic) generic.getComponentType().accept(this), generic);
                    }
                    return onSimpleType(generic);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onParameterizedType(Generic generic) {
                    Generic ownerType = generic.getOwnerType();
                    ArrayList arrayList = new ArrayList(generic.getTypeArguments().size());
                    for (Generic generic2 : generic.getTypeArguments()) {
                        arrayList.add(generic2.accept(this));
                    }
                    return new OfParameterizedType.Latent(((Generic) generic.asRawType().accept(this)).asErasure(), ownerType == null ? Generic.UNDEFINED : (Generic) ownerType.accept(this), arrayList, generic);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onWildcard(Generic generic) {
                    return new OfWildcardType.Latent(generic.getUpperBounds().accept(this), generic.getLowerBounds().accept(this), generic);
                }
            }

            /* loaded from: classes2.dex */
            public enum TypeErasing implements Visitor<Generic> {
                INSTANCE;

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onGenericArray(Generic generic) {
                    return generic.asRawType();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onNonGenericType(Generic generic) {
                    return generic.asRawType();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onParameterizedType(Generic generic) {
                    return generic.asRawType();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onTypeVariable(Generic generic) {
                    return generic.asRawType();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Generic onWildcard(Generic generic) {
                    throw new IllegalArgumentException("Cannot erase a wildcard type: " + generic);
                }
            }

            /* loaded from: classes2.dex */
            public enum Validator implements Visitor<Boolean> {
                SUPER_CLASS(false, false, false, false) { // from class: net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator.1
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Boolean onGenericArray(Generic generic) {
                        return super.onGenericArray(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Boolean onTypeVariable(Generic generic) {
                        return super.onTypeVariable(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Boolean onWildcard(Generic generic) {
                        return super.onWildcard(generic);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Boolean onNonGenericType(Generic generic) {
                        return Boolean.valueOf(super.onNonGenericType(generic).booleanValue() && !generic.isInterface());
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Boolean onParameterizedType(Generic generic) {
                        return Boolean.valueOf(!generic.isInterface());
                    }
                },
                INTERFACE(false, false, false, false) { // from class: net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator.2
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Boolean onGenericArray(Generic generic) {
                        return super.onGenericArray(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Boolean onTypeVariable(Generic generic) {
                        return super.onTypeVariable(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Boolean onWildcard(Generic generic) {
                        return super.onWildcard(generic);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Boolean onNonGenericType(Generic generic) {
                        return Boolean.valueOf(super.onNonGenericType(generic).booleanValue() && generic.isInterface());
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Boolean onParameterizedType(Generic generic) {
                        return Boolean.valueOf(generic.isInterface());
                    }
                },
                TYPE_VARIABLE(false, false, true, false),
                FIELD(true, true, true, false),
                METHOD_RETURN(true, true, true, true),
                METHOD_PARAMETER(true, true, true, false),
                EXCEPTION(false, false, true, false) { // from class: net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator.3
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Boolean onGenericArray(Generic generic) {
                        return super.onGenericArray(generic);
                    }

                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public /* bridge */ /* synthetic */ Boolean onWildcard(Generic generic) {
                        return super.onWildcard(generic);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Boolean onNonGenericType(Generic generic) {
                        return Boolean.valueOf(generic.asErasure().isAssignableTo(Throwable.class));
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Boolean onParameterizedType(Generic generic) {
                        return Boolean.FALSE;
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator, net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Boolean onTypeVariable(Generic generic) {
                        for (Generic generic2 : generic.getUpperBounds()) {
                            if (((Boolean) generic2.accept(this)).booleanValue()) {
                                return Boolean.TRUE;
                            }
                        }
                        return Boolean.FALSE;
                    }
                },
                RECEIVER(false, false, false, false);
                
                private final boolean acceptsArray;
                private final boolean acceptsPrimitive;
                private final boolean acceptsVariable;
                private final boolean acceptsVoid;

                /* loaded from: classes2.dex */
                public enum ForTypeAnnotations implements Visitor<Boolean> {
                    INSTANCE;
                    
                    private static final String TYPE_PARAMETER = "TYPE_PARAMETER";
                    private static final String TYPE_USE = "TYPE_USE";

                    /* JADX WARN: Removed duplicated region for block: B:5:0x0013  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    private boolean isValid(net.bytebuddy.description.type.TypeDescription.Generic r4) {
                        /*
                            r3 = this;
                            java.util.HashSet r0 = new java.util.HashSet
                            r0.<init>()
                            net.bytebuddy.description.annotation.AnnotationList r4 = r4.getDeclaredAnnotations()
                            java.util.Iterator r4 = r4.iterator()
                        Ld:
                            boolean r1 = r4.hasNext()
                            if (r1 == 0) goto L2d
                            java.lang.Object r1 = r4.next()
                            net.bytebuddy.description.annotation.AnnotationDescription r1 = (net.bytebuddy.description.annotation.AnnotationDescription) r1
                            java.lang.String r2 = "TYPE_USE"
                            boolean r2 = r1.isSupportedOn(r2)
                            if (r2 == 0) goto L2b
                            net.bytebuddy.description.type.TypeDescription r1 = r1.getAnnotationType()
                            boolean r1 = r0.add(r1)
                            if (r1 != 0) goto Ld
                        L2b:
                            r4 = 0
                            return r4
                        L2d:
                            r4 = 1
                            return r4
                        */
                        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator.ForTypeAnnotations.isValid(net.bytebuddy.description.type.TypeDescription$Generic):boolean");
                    }

                    /* JADX WARN: Removed duplicated region for block: B:5:0x0013  */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public static boolean ofFormalTypeVariable(net.bytebuddy.description.type.TypeDescription.Generic r3) {
                        /*
                            java.util.HashSet r0 = new java.util.HashSet
                            r0.<init>()
                            net.bytebuddy.description.annotation.AnnotationList r3 = r3.getDeclaredAnnotations()
                            java.util.Iterator r3 = r3.iterator()
                        Ld:
                            boolean r1 = r3.hasNext()
                            if (r1 == 0) goto L2d
                            java.lang.Object r1 = r3.next()
                            net.bytebuddy.description.annotation.AnnotationDescription r1 = (net.bytebuddy.description.annotation.AnnotationDescription) r1
                            java.lang.String r2 = "TYPE_PARAMETER"
                            boolean r2 = r1.isSupportedOn(r2)
                            if (r2 == 0) goto L2b
                            net.bytebuddy.description.type.TypeDescription r1 = r1.getAnnotationType()
                            boolean r1 = r0.add(r1)
                            if (r1 != 0) goto Ld
                        L2b:
                            r3 = 0
                            return r3
                        L2d:
                            r3 = 1
                            return r3
                        */
                        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.description.type.TypeDescription.Generic.Visitor.Validator.ForTypeAnnotations.ofFormalTypeVariable(net.bytebuddy.description.type.TypeDescription$Generic):boolean");
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public Boolean onGenericArray(Generic generic) {
                        return Boolean.valueOf(isValid(generic) && ((Boolean) generic.getComponentType().accept(this)).booleanValue());
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                    public Boolean onNonGenericType(Generic generic) {
                        return Boolean.valueOf(isValid(generic) && (!generic.isArray() || ((Boolean) generic.getComponentType().accept(this)).booleanValue()));
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Boolean onParameterizedType(Generic generic) {
                        if (!isValid(generic)) {
                            return Boolean.FALSE;
                        }
                        Generic ownerType = generic.getOwnerType();
                        if (ownerType != null && !((Boolean) ownerType.accept(this)).booleanValue()) {
                            return Boolean.FALSE;
                        }
                        for (Generic generic2 : generic.getTypeArguments()) {
                            if (!((Boolean) generic2.accept(this)).booleanValue()) {
                                return Boolean.FALSE;
                            }
                        }
                        return Boolean.TRUE;
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Boolean onTypeVariable(Generic generic) {
                        return Boolean.valueOf(isValid(generic));
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                    public Boolean onWildcard(Generic generic) {
                        if (!isValid(generic)) {
                            return Boolean.FALSE;
                        }
                        TypeList.Generic lowerBounds = generic.getLowerBounds();
                        if (lowerBounds.isEmpty()) {
                            lowerBounds = generic.getUpperBounds();
                        }
                        return (Boolean) lowerBounds.getOnly().accept(this);
                    }
                }

                Validator(boolean z, boolean z2, boolean z3, boolean z4) {
                    this.acceptsArray = z;
                    this.acceptsPrimitive = z2;
                    this.acceptsVariable = z3;
                    this.acceptsVoid = z4;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Boolean onGenericArray(Generic generic) {
                    return Boolean.valueOf(this.acceptsArray);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Boolean onNonGenericType(Generic generic) {
                    return Boolean.valueOf((this.acceptsArray || !generic.isArray()) && (this.acceptsPrimitive || !generic.isPrimitive()) && (this.acceptsVoid || !generic.represents(Void.TYPE)));
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Boolean onParameterizedType(Generic generic) {
                    return Boolean.TRUE;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Boolean onTypeVariable(Generic generic) {
                    return Boolean.valueOf(this.acceptsVariable);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // net.bytebuddy.description.type.TypeDescription.Generic.Visitor
                public Boolean onWildcard(Generic generic) {
                    return Boolean.FALSE;
                }
            }

            T onGenericArray(Generic generic);

            T onNonGenericType(Generic generic);

            T onParameterizedType(Generic generic);

            T onTypeVariable(Generic generic);

            T onWildcard(Generic generic);
        }

        <T> T accept(Visitor<T> visitor);

        Generic asRawType();

        @MaybeNull
        Generic findBindingOf(Generic generic);

        @Override // net.bytebuddy.description.type.TypeDefinition
        @MaybeNull
        Generic getComponentType();

        @Override // net.bytebuddy.description.type.TypeDefinition
        FieldList<FieldDescription.InGenericShape> getDeclaredFields();

        @Override // net.bytebuddy.description.type.TypeDefinition
        MethodList<MethodDescription.InGenericShape> getDeclaredMethods();

        TypeList.Generic getLowerBounds();

        @MaybeNull
        Generic getOwnerType();

        @Override // net.bytebuddy.description.type.TypeDefinition
        RecordComponentList<RecordComponentDescription.InGenericShape> getRecordComponents();

        String getSymbol();

        TypeList.Generic getTypeArguments();

        TypeVariableSource getTypeVariableSource();

        TypeList.Generic getUpperBounds();

        /* loaded from: classes2.dex */
        public static abstract class OfNonGenericType extends AbstractBase {
            private transient /* synthetic */ int hashCode;

            /* loaded from: classes2.dex */
            public static class ForErasure extends OfNonGenericType {
                private final TypeDescription typeDescription;

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return this.typeDescription;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return new AnnotationList.Empty();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public Generic getComponentType() {
                    TypeDescription componentType = this.typeDescription.getComponentType();
                    if (componentType == null) {
                        return Generic.UNDEFINED;
                    }
                    return componentType.asGenericType();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                @MaybeNull
                public Generic getOwnerType() {
                    TypeDescription declaringType = this.typeDescription.getDeclaringType();
                    if (declaringType == null) {
                        return Generic.UNDEFINED;
                    }
                    return declaringType.asGenericType();
                }

                public ForErasure(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }
            }

            /* loaded from: classes2.dex */
            public static class ForLoadedType extends OfNonGenericType {
                private static final Map<Class<?>, Generic> TYPE_CACHE;
                private final AnnotationReader annotationReader;
                private final Class<?> type;

                public ForLoadedType(Class<?> cls) {
                    this(cls, AnnotationReader.NoOp.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return ForLoadedType.m15196of(this.type);
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.annotationReader.asList();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfNonGenericType, net.bytebuddy.description.type.TypeDescription.Generic.AbstractBase, net.bytebuddy.description.type.TypeDefinition
                public boolean represents(Type type) {
                    return this.type == type || super.represents(type);
                }

                static {
                    HashMap hashMap = new HashMap();
                    TYPE_CACHE = hashMap;
                    hashMap.put(TargetType.class, new ForLoadedType(TargetType.class));
                    hashMap.put(Object.class, new ForLoadedType(Object.class));
                    hashMap.put(String.class, new ForLoadedType(String.class));
                    hashMap.put(Boolean.class, new ForLoadedType(Boolean.class));
                    hashMap.put(Byte.class, new ForLoadedType(Byte.class));
                    hashMap.put(Short.class, new ForLoadedType(Short.class));
                    hashMap.put(Character.class, new ForLoadedType(Character.class));
                    hashMap.put(Integer.class, new ForLoadedType(Integer.class));
                    hashMap.put(Long.class, new ForLoadedType(Long.class));
                    hashMap.put(Float.class, new ForLoadedType(Float.class));
                    hashMap.put(Double.class, new ForLoadedType(Double.class));
                    Class cls = Void.TYPE;
                    hashMap.put(cls, new ForLoadedType(cls));
                    Class cls2 = Boolean.TYPE;
                    hashMap.put(cls2, new ForLoadedType(cls2));
                    Class cls3 = Byte.TYPE;
                    hashMap.put(cls3, new ForLoadedType(cls3));
                    Class cls4 = Short.TYPE;
                    hashMap.put(cls4, new ForLoadedType(cls4));
                    Class cls5 = Character.TYPE;
                    hashMap.put(cls5, new ForLoadedType(cls5));
                    Class cls6 = Integer.TYPE;
                    hashMap.put(cls6, new ForLoadedType(cls6));
                    Class cls7 = Long.TYPE;
                    hashMap.put(cls7, new ForLoadedType(cls7));
                    Class cls8 = Float.TYPE;
                    hashMap.put(cls8, new ForLoadedType(cls8));
                    Class cls9 = Double.TYPE;
                    hashMap.put(cls9, new ForLoadedType(cls9));
                }

                public ForLoadedType(Class<?> cls, AnnotationReader annotationReader) {
                    this.type = cls;
                    this.annotationReader = annotationReader;
                }

                /* renamed from: of */
                public static Generic m15189of(Class<?> cls) {
                    Generic generic = TYPE_CACHE.get(cls);
                    if (generic == null) {
                        return new ForLoadedType(cls);
                    }
                    return generic;
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public Generic getComponentType() {
                    Class<?> componentType = this.type.getComponentType();
                    if (componentType == null) {
                        return Generic.UNDEFINED;
                    }
                    return new ForLoadedType(componentType, this.annotationReader.ofComponentType());
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                @MaybeNull
                public Generic getOwnerType() {
                    Class<?> declaringClass = this.type.getDeclaringClass();
                    if (declaringClass == null) {
                        return Generic.UNDEFINED;
                    }
                    return new ForLoadedType(declaringClass, this.annotationReader.ofOuterClass());
                }
            }

            /* loaded from: classes2.dex */
            public static class ForReifiedErasure extends OfNonGenericType {
                private final TypeDescription typeDescription;

                /* renamed from: of */
                public static Generic m15188of(TypeDescription typeDescription) {
                    return typeDescription.isGenerified() ? new ForReifiedErasure(typeDescription) : new ForErasure(typeDescription);
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return this.typeDescription;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return new AnnotationList.Empty();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfNonGenericType, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public FieldList<FieldDescription.InGenericShape> getDeclaredFields() {
                    return new FieldList.TypeSubstituting(this, this.typeDescription.getDeclaredFields(), Visitor.TypeErasing.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfNonGenericType, net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                public MethodList<MethodDescription.InGenericShape> getDeclaredMethods() {
                    return new MethodList.TypeSubstituting(this, this.typeDescription.getDeclaredMethods(), Visitor.TypeErasing.INSTANCE);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfNonGenericType, net.bytebuddy.description.type.TypeDefinition
                public TypeList.Generic getInterfaces() {
                    return new TypeList.Generic.ForDetachedTypes.WithResolvedErasure(this.typeDescription.getInterfaces(), Visitor.Reifying.INHERITING);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public Generic getComponentType() {
                    TypeDescription componentType = this.typeDescription.getComponentType();
                    if (componentType == null) {
                        return Generic.UNDEFINED;
                    }
                    return m15188of(componentType);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                @MaybeNull
                public Generic getOwnerType() {
                    TypeDescription declaringType = this.typeDescription.getDeclaringType();
                    if (declaringType == null) {
                        return Generic.UNDEFINED;
                    }
                    return m15188of(declaringType);
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic.OfNonGenericType, net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public Generic getSuperClass() {
                    Generic superClass = this.typeDescription.getSuperClass();
                    if (superClass == null) {
                        return Generic.UNDEFINED;
                    }
                    return new LazyProjection.WithResolvedErasure(superClass, Visitor.Reifying.INHERITING);
                }

                public ForReifiedErasure(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }
            }

            /* loaded from: classes2.dex */
            public static class Latent extends OfNonGenericType {
                private final AnnotationSource annotationSource;
                @MaybeNull
                private final Generic declaringType;
                private final TypeDescription typeDescription;

                public Latent(TypeDescription typeDescription, AnnotationSource annotationSource) {
                    this(typeDescription, typeDescription.getDeclaringType(), annotationSource);
                }

                @Override // net.bytebuddy.description.type.TypeDefinition
                public TypeDescription asErasure() {
                    return this.typeDescription;
                }

                @Override // net.bytebuddy.description.annotation.AnnotationSource
                public AnnotationList getDeclaredAnnotations() {
                    return this.annotationSource.getDeclaredAnnotations();
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic
                @MaybeNull
                public Generic getOwnerType() {
                    return this.declaringType;
                }

                /* JADX WARN: Illegal instructions before constructor call */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                private Latent(net.bytebuddy.description.type.TypeDescription r1, @net.bytebuddy.utility.nullability.MaybeNull net.bytebuddy.description.type.TypeDescription r2, net.bytebuddy.description.annotation.AnnotationSource r3) {
                    /*
                        r0 = this;
                        if (r2 != 0) goto L5
                        net.bytebuddy.description.type.TypeDescription$Generic r2 = net.bytebuddy.description.type.TypeDescription.Generic.UNDEFINED
                        goto L9
                    L5:
                        net.bytebuddy.description.type.TypeDescription$Generic r2 = r2.asGenericType()
                    L9:
                        r0.<init>(r1, r2, r3)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.description.type.TypeDescription.Generic.OfNonGenericType.Latent.<init>(net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.annotation.AnnotationSource):void");
                }

                @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
                @MaybeNull
                public Generic getComponentType() {
                    TypeDescription componentType = this.typeDescription.getComponentType();
                    if (componentType == null) {
                        return Generic.UNDEFINED;
                    }
                    return componentType.asGenericType();
                }

                public Latent(TypeDescription typeDescription, @MaybeNull Generic generic, AnnotationSource annotationSource) {
                    this.typeDescription = typeDescription;
                    this.declaringType = generic;
                    this.annotationSource = annotationSource;
                }
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public <T> T accept(Visitor<T> visitor) {
                return visitor.onNonGenericType(this);
            }

            @SuppressFBWarnings(justification = "Type check is performed by erasure implementation.", value = {"EQ_CHECK_FOR_OPERAND_NOT_COMPATIBLE_WITH_THIS"})
            public boolean equals(@MaybeNull Object obj) {
                return this == obj || asErasure().equals(obj);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public Generic findBindingOf(Generic generic) {
                throw new IllegalStateException("A non-generic type does not imply type arguments: " + this);
            }

            @Override // net.bytebuddy.description.NamedElement
            public String getActualName() {
                return asErasure().getActualName();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getLowerBounds() {
                throw new IllegalStateException("A non-generic type does not imply lower type bounds: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeDefinition.Sort getSort() {
                return TypeDefinition.Sort.NON_GENERIC;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public StackSize getStackSize() {
                return asErasure().getStackSize();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public String getSymbol() {
                throw new IllegalStateException("A non-generic type does not imply a symbol: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getTypeArguments() {
                throw new IllegalStateException("A non-generic type does not imply type arguments: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public String getTypeName() {
                return asErasure().getTypeName();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeVariableSource getTypeVariableSource() {
                throw new IllegalStateException("A non-generic type does not imply a type variable source: " + this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic
            public TypeList.Generic getUpperBounds() {
                throw new IllegalStateException("A non-generic type does not imply upper type bounds: " + this);
            }

            @CachedReturnPlugin.Enhance("hashCode")
            public int hashCode() {
                int hashCode = this.hashCode != 0 ? 0 : asErasure().hashCode();
                if (hashCode == 0) {
                    return this.hashCode;
                }
                this.hashCode = hashCode;
                return hashCode;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isArray() {
                return asErasure().isArray();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isPrimitive() {
                return asErasure().isPrimitive();
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public boolean isRecord() {
                return asErasure().isRecord();
            }

            @Override // java.lang.Iterable
            public Iterator<TypeDefinition> iterator() {
                return new TypeDefinition.SuperClassIterator(this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic.AbstractBase, net.bytebuddy.description.type.TypeDefinition
            public boolean represents(Type type) {
                return asErasure().represents(type);
            }

            public String toString() {
                return asErasure().toString();
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public FieldList<FieldDescription.InGenericShape> getDeclaredFields() {
                Visitor forRawType;
                TypeDescription asErasure = asErasure();
                FieldList<FieldDescription.InDefinedShape> declaredFields = asErasure.getDeclaredFields();
                if (AbstractBase.RAW_TYPES) {
                    forRawType = Visitor.NoOp.INSTANCE;
                } else {
                    forRawType = new Visitor.ForRawType(asErasure);
                }
                return new FieldList.TypeSubstituting(this, declaredFields, forRawType);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public MethodList<MethodDescription.InGenericShape> getDeclaredMethods() {
                Visitor forRawType;
                TypeDescription asErasure = asErasure();
                MethodList<MethodDescription.InDefinedShape> declaredMethods = asErasure.getDeclaredMethods();
                if (AbstractBase.RAW_TYPES) {
                    forRawType = Visitor.NoOp.INSTANCE;
                } else {
                    forRawType = new Visitor.ForRawType(asErasure);
                }
                return new MethodList.TypeSubstituting(this, declaredMethods, forRawType);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            public TypeList.Generic getInterfaces() {
                TypeDescription asErasure = asErasure();
                if (AbstractBase.RAW_TYPES) {
                    return asErasure.getInterfaces();
                }
                return new TypeList.Generic.ForDetachedTypes.WithResolvedErasure(asErasure.getInterfaces(), new Visitor.ForRawType(asErasure));
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic, net.bytebuddy.description.type.TypeDefinition
            public RecordComponentList<RecordComponentDescription.InGenericShape> getRecordComponents() {
                Visitor forRawType;
                TypeDescription asErasure = asErasure();
                RecordComponentList<RecordComponentDescription.InDefinedShape> recordComponents = asErasure.getRecordComponents();
                if (AbstractBase.RAW_TYPES) {
                    forRawType = Visitor.NoOp.INSTANCE;
                } else {
                    forRawType = new Visitor.ForRawType(asErasure);
                }
                return new RecordComponentList.TypeSubstituting(this, recordComponents, forRawType);
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            @MaybeNull
            public Generic getSuperClass() {
                TypeDescription asErasure = asErasure();
                Generic superClass = asErasure.getSuperClass();
                if (AbstractBase.RAW_TYPES) {
                    return superClass;
                }
                if (superClass == null) {
                    return Generic.UNDEFINED;
                }
                return new LazyProjection.WithResolvedErasure(superClass, new Visitor.ForRawType(asErasure), AnnotationSource.Empty.INSTANCE);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Latent extends AbstractBase.OfSimpleType {
        private final List<? extends Generic> interfaces;
        private final int modifiers;
        private final String name;
        @MaybeNull
        private final Generic superClass;

        public Latent(String str, int i, @MaybeNull Generic generic, Generic... genericArr) {
            this(str, i, generic, Arrays.asList(genericArr));
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            throw new IllegalStateException("Cannot resolve declared annotations of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public FieldList<FieldDescription.InDefinedShape> getDeclaredFields() {
            throw new IllegalStateException("Cannot resolve declared fields of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public MethodList<MethodDescription.InDefinedShape> getDeclaredMethods() {
            throw new IllegalStateException("Cannot resolve declared methods of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getDeclaredTypes() {
            throw new IllegalStateException("Cannot resolve inner types of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public MethodDescription.InDefinedShape getEnclosingMethod() {
            throw new IllegalStateException("Cannot resolve enclosing method of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeDescription getEnclosingType() {
            throw new IllegalStateException("Cannot resolve enclosing type of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public TypeList.Generic getInterfaces() {
            return new TypeList.Generic.Explicit(this.interfaces);
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return this.modifiers;
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return this.name;
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeDescription getNestHost() {
            throw new IllegalStateException("Cannot resolve nest host of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getNestMembers() {
            throw new IllegalStateException("Cannot resolve nest mates of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getPermittedSubtypes() {
            throw new IllegalStateException("Cannot resolve permitted subclasses of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public RecordComponentList<RecordComponentDescription.InDefinedShape> getRecordComponents() {
            throw new IllegalStateException("Cannot resolve record components of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        @MaybeNull
        public Generic getSuperClass() {
            return this.superClass;
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public TypeList.Generic getTypeVariables() {
            throw new IllegalStateException("Cannot resolve type variables of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isAnonymousType() {
            throw new IllegalStateException("Cannot resolve anonymous type property of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isLocalType() {
            throw new IllegalStateException("Cannot resolve local class property of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public boolean isRecord() {
            throw new IllegalStateException("Cannot resolve record attribute of a latent type description: " + this);
        }

        public Latent(String str, int i, @MaybeNull Generic generic, List<? extends Generic> list) {
            this.name = str;
            this.modifiers = i;
            this.superClass = generic;
            this.interfaces = list;
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.DeclaredByType
        public TypeDescription getDeclaringType() {
            throw new IllegalStateException("Cannot resolve declared type of a latent type description: " + this);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public PackageDescription getPackage() {
            String name = getName();
            int lastIndexOf = name.lastIndexOf(46);
            if (lastIndexOf == -1) {
                return PackageDescription.UNDEFINED;
            }
            return new PackageDescription.Simple(name.substring(0, lastIndexOf));
        }
    }

    /* loaded from: classes2.dex */
    public static class SuperTypeLoading extends AbstractBase {
        @MaybeNull
        private final ClassLoader classLoader;
        private final ClassLoadingDelegate classLoadingDelegate;
        private final TypeDescription delegate;

        /* loaded from: classes2.dex */
        public interface ClassLoadingDelegate {

            /* loaded from: classes2.dex */
            public enum Simple implements ClassLoadingDelegate {
                INSTANCE;

                @Override // net.bytebuddy.description.type.TypeDescription.SuperTypeLoading.ClassLoadingDelegate
                public Class<?> load(String str, @MaybeNull ClassLoader classLoader) {
                    return Class.forName(str, false, classLoader);
                }
            }

            Class<?> load(String str, @MaybeNull ClassLoader classLoader);
        }

        /* loaded from: classes2.dex */
        public static class ClassLoadingTypeList extends TypeList.Generic.AbstractBase {
            @MaybeNull
            private final ClassLoader classLoader;
            private final ClassLoadingDelegate classLoadingDelegate;
            private final TypeList.Generic delegate;

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return this.delegate.size();
            }

            @Override // java.util.AbstractList, java.util.List
            public Generic get(int i) {
                return new ClassLoadingTypeProjection(this.delegate.get(i), this.classLoader, this.classLoadingDelegate);
            }

            public ClassLoadingTypeList(TypeList.Generic generic, @MaybeNull ClassLoader classLoader, ClassLoadingDelegate classLoadingDelegate) {
                this.delegate = generic;
                this.classLoader = classLoader;
                this.classLoadingDelegate = classLoadingDelegate;
            }
        }

        /* loaded from: classes2.dex */
        public static class ClassLoadingTypeProjection extends Generic.LazyProjection {
            @MaybeNull
            private final ClassLoader classLoader;
            private final ClassLoadingDelegate classLoadingDelegate;
            private final Generic delegate;
            private transient /* synthetic */ TypeDescription erasure;
            private transient /* synthetic */ TypeList.Generic interfaces;
            private transient /* synthetic */ Generic superClass;

            @Override // net.bytebuddy.description.annotation.AnnotationSource
            public AnnotationList getDeclaredAnnotations() {
                return this.delegate.getDeclaredAnnotations();
            }

            @Override // java.lang.Iterable
            public Iterator<TypeDefinition> iterator() {
                return new TypeDefinition.SuperClassIterator(this);
            }

            @Override // net.bytebuddy.description.type.TypeDescription.Generic.LazyProjection
            public Generic resolve() {
                return this.delegate;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            @CachedReturnPlugin.Enhance("erasure")
            public TypeDescription asErasure() {
                TypeDescription asErasure;
                if (this.erasure != null) {
                    asErasure = null;
                } else {
                    try {
                        asErasure = ForLoadedType.m15196of(this.classLoadingDelegate.load(this.delegate.asErasure().getName(), this.classLoader));
                    } catch (ClassNotFoundException unused) {
                        asErasure = this.delegate.asErasure();
                    }
                }
                if (asErasure == null) {
                    return this.erasure;
                }
                this.erasure = asErasure;
                return asErasure;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            @CachedReturnPlugin.Enhance("interfaces")
            public TypeList.Generic getInterfaces() {
                TypeList.Generic interfaces;
                if (this.interfaces != null) {
                    interfaces = null;
                } else {
                    interfaces = this.delegate.getInterfaces();
                    try {
                        interfaces = new ClassLoadingTypeList(interfaces, this.classLoadingDelegate.load(this.delegate.asErasure().getName(), this.classLoader).getClassLoader(), this.classLoadingDelegate);
                    } catch (ClassNotFoundException unused) {
                    }
                }
                if (interfaces == null) {
                    return this.interfaces;
                }
                this.interfaces = interfaces;
                return interfaces;
            }

            @Override // net.bytebuddy.description.type.TypeDefinition
            @CachedReturnPlugin.Enhance("superClass")
            @MaybeNull
            public Generic getSuperClass() {
                Generic superClass;
                if (this.superClass != null) {
                    superClass = null;
                } else {
                    superClass = this.delegate.getSuperClass();
                    if (superClass == null) {
                        superClass = Generic.UNDEFINED;
                    } else {
                        try {
                            superClass = new ClassLoadingTypeProjection(superClass, this.classLoadingDelegate.load(this.delegate.asErasure().getName(), this.classLoader).getClassLoader(), this.classLoadingDelegate);
                        } catch (ClassNotFoundException unused) {
                        }
                    }
                }
                if (superClass == null) {
                    return this.superClass;
                }
                this.superClass = superClass;
                return superClass;
            }

            public ClassLoadingTypeProjection(Generic generic, @MaybeNull ClassLoader classLoader, ClassLoadingDelegate classLoadingDelegate) {
                this.delegate = generic;
                this.classLoader = classLoader;
                this.classLoadingDelegate = classLoadingDelegate;
            }
        }

        public SuperTypeLoading(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader) {
            this(typeDescription, classLoader, ClassLoadingDelegate.Simple.INSTANCE);
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public String getCanonicalName() {
            return this.delegate.getCanonicalName();
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public ClassFileVersion getClassFileVersion() {
            return this.delegate.getClassFileVersion();
        }

        @Override // net.bytebuddy.description.annotation.AnnotationSource
        public AnnotationList getDeclaredAnnotations() {
            return this.delegate.getDeclaredAnnotations();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public FieldList<FieldDescription.InDefinedShape> getDeclaredFields() {
            return this.delegate.getDeclaredFields();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public MethodList<MethodDescription.InDefinedShape> getDeclaredMethods() {
            return this.delegate.getDeclaredMethods();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getDeclaredTypes() {
            return this.delegate.getDeclaredTypes();
        }

        @Override // net.bytebuddy.description.NamedElement.WithDescriptor
        public String getDescriptor() {
            return this.delegate.getDescriptor();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public MethodDescription.InDefinedShape getEnclosingMethod() {
            return this.delegate.getEnclosingMethod();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public TypeDescription getEnclosingType() {
            return this.delegate.getEnclosingType();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public TypeList.Generic getInterfaces() {
            return new ClassLoadingTypeList(this.delegate.getInterfaces(), this.classLoader, this.classLoadingDelegate);
        }

        @Override // net.bytebuddy.description.ModifierReviewable
        public int getModifiers() {
            return this.delegate.getModifiers();
        }

        @Override // net.bytebuddy.description.NamedElement.WithRuntimeName
        public String getName() {
            return this.delegate.getName();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeDescription getNestHost() {
            return this.delegate.getNestHost();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getNestMembers() {
            return this.delegate.getNestMembers();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        @MaybeNull
        public PackageDescription getPackage() {
            return this.delegate.getPackage();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public TypeList getPermittedSubtypes() {
            return this.delegate.getPermittedSubtypes();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        public RecordComponentList<RecordComponentDescription.InDefinedShape> getRecordComponents() {
            return this.delegate.getRecordComponents();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public String getSimpleName() {
            return this.delegate.getSimpleName();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public StackSize getStackSize() {
            return this.delegate.getStackSize();
        }

        @Override // net.bytebuddy.description.TypeVariableSource
        public TypeList.Generic getTypeVariables() {
            return this.delegate.getTypeVariables();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isAnonymousType() {
            return this.delegate.isAnonymousType();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public boolean isArray() {
            return this.delegate.isArray();
        }

        @Override // net.bytebuddy.description.type.TypeDescription
        public boolean isLocalType() {
            return this.delegate.isLocalType();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public boolean isPrimitive() {
            return this.delegate.isPrimitive();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        public boolean isRecord() {
            return this.delegate.isRecord();
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase, net.bytebuddy.description.type.TypeDescription
        public boolean isSealed() {
            return this.delegate.isSealed();
        }

        public SuperTypeLoading(TypeDescription typeDescription, @MaybeNull ClassLoader classLoader, ClassLoadingDelegate classLoadingDelegate) {
            this.delegate = typeDescription;
            this.classLoader = classLoader;
            this.classLoadingDelegate = classLoadingDelegate;
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.type.TypeDefinition
        @MaybeNull
        public TypeDescription getComponentType() {
            return this.delegate.getComponentType();
        }

        @Override // net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.DeclaredByType
        @MaybeNull
        public TypeDescription getDeclaringType() {
            return this.delegate.getDeclaringType();
        }

        @Override // net.bytebuddy.description.type.TypeDefinition
        @MaybeNull
        public Generic getSuperClass() {
            Generic superClass = this.delegate.getSuperClass();
            if (superClass == null) {
                return Generic.UNDEFINED;
            }
            return new ClassLoadingTypeProjection(superClass, this.classLoader, this.classLoadingDelegate);
        }
    }

    TypeDescription asBoxed();

    TypeDescription asUnboxed();

    int getActualModifiers(boolean z);

    @MaybeNull
    String getCanonicalName();

    @MaybeNull
    ClassFileVersion getClassFileVersion();

    @Override // net.bytebuddy.description.type.TypeDefinition
    @MaybeNull
    TypeDescription getComponentType();

    @Override // net.bytebuddy.description.type.TypeDefinition
    FieldList<FieldDescription.InDefinedShape> getDeclaredFields();

    @Override // net.bytebuddy.description.type.TypeDefinition
    MethodList<MethodDescription.InDefinedShape> getDeclaredMethods();

    TypeList getDeclaredTypes();

    @MaybeNull
    TypeDescription getDeclaringType();

    @MaybeNull
    Object getDefaultValue();

    @MaybeNull
    MethodDescription.InDefinedShape getEnclosingMethod();

    @MaybeNull
    TypeDescription getEnclosingType();

    AnnotationList getInheritedAnnotations();

    int getInnerClassCount();

    String getLongSimpleName();

    TypeDescription getNestHost();

    TypeList getNestMembers();

    @MaybeNull
    PackageDescription getPackage();

    TypeList getPermittedSubtypes();

    @Override // net.bytebuddy.description.type.TypeDefinition
    RecordComponentList<RecordComponentDescription.InDefinedShape> getRecordComponents();

    String getSimpleName();

    boolean isAnnotationReturnType();

    boolean isAnnotationValue();

    boolean isAnnotationValue(Object obj);

    boolean isAnonymousType();

    boolean isAssignableFrom(Class<?> cls);

    boolean isAssignableFrom(TypeDescription typeDescription);

    boolean isAssignableTo(Class<?> cls);

    boolean isAssignableTo(TypeDescription typeDescription);

    boolean isCompileTimeConstant();

    boolean isInHierarchyWith(Class<?> cls);

    boolean isInHierarchyWith(TypeDescription typeDescription);

    boolean isInnerClass();

    boolean isInstance(Object obj);

    boolean isLocalType();

    boolean isMemberType();

    boolean isNestHost();

    boolean isNestMateOf(Class<?> cls);

    boolean isNestMateOf(TypeDescription typeDescription);

    boolean isNestedClass();

    boolean isPackageType();

    boolean isPrimitiveWrapper();

    boolean isSamePackage(TypeDescription typeDescription);

    boolean isSealed();
}
