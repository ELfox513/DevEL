package net.bytebuddy.utility;

import java.io.Serializable;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.List;
import net.bytebuddy.build.CachedReturnPlugin;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import net.bytebuddy.utility.nullability.MaybeNull;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum CONSTABLE uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class JavaType {
    private static final /* synthetic */ JavaType[] $VALUES;
    public static final JavaType ACCESS_CONTROL_CONTEXT;
    public static final JavaType CALL_SITE;
    public static final JavaType CLASS_DESCRIPTION;
    public static final JavaType CONSTABLE;
    public static final JavaType CONSTANT_BOOTSTRAPS;
    public static final JavaType CONSTANT_DESCRIPTION;
    public static final JavaType DIRECT_METHOD_HANDLE_DESCRIPTION;
    public static final JavaType DYNAMIC_CONSTANT_DESCRIPTION;
    public static final JavaType EXECUTABLE;
    public static final JavaType METHOD_HANDLE;
    public static final JavaType METHOD_HANDLES;
    public static final JavaType METHOD_HANDLES_LOOKUP;
    public static final JavaType METHOD_HANDLE_DESCRIPTION;
    public static final JavaType METHOD_TYPE;
    public static final JavaType METHOD_TYPE_DESCRIPTION;
    public static final JavaType MODULE;
    public static final JavaType OBJECT_METHODS;
    public static final JavaType PARAMETER;
    public static final JavaType RECORD;
    public static final JavaType TYPE_DESCRIPTOR;
    public static final JavaType TYPE_DESCRIPTOR_OF_FIELD;
    public static final JavaType TYPE_DESCRIPTOR_OF_METHOD;
    public static final JavaType VAR_HANDLE;
    private transient /* synthetic */ Boolean available;
    private transient /* synthetic */ Class loaded;
    private final TypeDescription typeDescription;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private JavaType(java.lang.String r8, int r9, @net.bytebuddy.utility.nullability.MaybeNull java.lang.String r10, int r11, java.lang.reflect.Type r12, java.lang.reflect.Type... r13) {
        /*
            r7 = this;
            if (r12 != 0) goto L5
            net.bytebuddy.description.type.TypeDescription$Generic r12 = net.bytebuddy.description.type.TypeDescription.Generic.UNDEFINED
            goto L9
        L5:
            net.bytebuddy.description.type.TypeDescription$Generic r12 = net.bytebuddy.description.type.TypeDefinition.Sort.describe(r12)
        L9:
            r5 = r12
            net.bytebuddy.description.type.TypeList$Generic$ForLoadedTypes r6 = new net.bytebuddy.description.type.TypeList$Generic$ForLoadedTypes
            r6.<init>(r13)
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.utility.JavaType.<init>(java.lang.String, int, java.lang.String, int, java.lang.reflect.Type, java.lang.reflect.Type[]):void");
    }

    public static JavaType valueOf(String str) {
        return (JavaType) Enum.valueOf(JavaType.class, str);
    }

    public static JavaType[] values() {
        return (JavaType[]) $VALUES.clone();
    }

    public TypeDescription getTypeStub() {
        return this.typeDescription;
    }

    public boolean isAvailable() {
        return doIsAvailable().booleanValue();
    }

    @CachedReturnPlugin.Enhance("loaded")
    public Class<?> load() {
        Class<?> cls = this.loaded != null ? null : Class.forName(this.typeDescription.getName(), false, ClassLoadingStrategy.BOOTSTRAP_LOADER);
        if (cls == null) {
            return this.loaded;
        }
        this.loaded = cls;
        return cls;
    }

    public TypeDescription loadAsDescription() {
        return TypeDescription.ForLoadedType.m15196of(load());
    }

    /* loaded from: classes.dex */
    public static class LatentTypeWithSimpleName extends TypeDescription.Latent {
        public LatentTypeWithSimpleName(String str, int i, @MaybeNull TypeDescription.Generic generic, List<? extends TypeDescription.Generic> list) {
            super(str, i, generic, list);
        }

        @Override // net.bytebuddy.description.type.TypeDescription.AbstractBase.OfSimpleType, net.bytebuddy.description.type.TypeDescription
        public String getSimpleName() {
            String name = getName();
            int max = Math.max(name.lastIndexOf(36), name.lastIndexOf(46));
            if (max != -1) {
                return name.substring(max + 1);
            }
            return name;
        }
    }

    static {
        TypeDescription typeDescription = TypeDescription.UNDEFINED;
        JavaType javaType = new JavaType("CONSTABLE", 0, "java.lang.constant.Constable", 1537, typeDescription, new TypeDefinition[0]);
        CONSTABLE = javaType;
        JavaType javaType2 = new JavaType("TYPE_DESCRIPTOR", 1, "java.lang.invoke.TypeDescriptor", 1537, typeDescription, new TypeDefinition[0]);
        TYPE_DESCRIPTOR = javaType2;
        JavaType javaType3 = new JavaType("TYPE_DESCRIPTOR_OF_FIELD", 2, "java.lang.invoke.TypeDescriptor$OfField", 1537, typeDescription, javaType2.getTypeStub());
        TYPE_DESCRIPTOR_OF_FIELD = javaType3;
        JavaType javaType4 = new JavaType("TYPE_DESCRIPTOR_OF_METHOD", 3, "java.lang.invoke.TypeDescriptor$OfMethod", 1537, typeDescription, javaType2.getTypeStub());
        TYPE_DESCRIPTOR_OF_METHOD = javaType4;
        JavaType javaType5 = new JavaType("CONSTANT_DESCRIPTION", 4, "java.lang.constant.ConstantDesc", 1537, typeDescription, new TypeDefinition[0]);
        CONSTANT_DESCRIPTION = javaType5;
        TypeDescription typeDescription2 = TypeDescription.OBJECT;
        JavaType javaType6 = new JavaType("DYNAMIC_CONSTANT_DESCRIPTION", 5, "java.lang.constant.DynamicConstantDesc", 1025, typeDescription2, javaType5.getTypeStub());
        DYNAMIC_CONSTANT_DESCRIPTION = javaType6;
        JavaType javaType7 = new JavaType("CLASS_DESCRIPTION", 6, "java.lang.constant.ClassDesc", 1537, typeDescription, javaType5.getTypeStub(), javaType3.getTypeStub());
        CLASS_DESCRIPTION = javaType7;
        JavaType javaType8 = new JavaType("METHOD_TYPE_DESCRIPTION", 7, "java.lang.constant.MethodTypeDesc", 1537, typeDescription, javaType5.getTypeStub(), javaType4.getTypeStub());
        METHOD_TYPE_DESCRIPTION = javaType8;
        JavaType javaType9 = new JavaType("METHOD_HANDLE_DESCRIPTION", 8, "java.lang.constant.MethodHandleDesc", 1537, typeDescription, javaType5.getTypeStub());
        METHOD_HANDLE_DESCRIPTION = javaType9;
        JavaType javaType10 = new JavaType("DIRECT_METHOD_HANDLE_DESCRIPTION", 9, "java.lang.constant.DirectMethodHandleDesc", 1537, typeDescription, javaType9.getTypeStub());
        DIRECT_METHOD_HANDLE_DESCRIPTION = javaType10;
        JavaType javaType11 = new JavaType("METHOD_HANDLE", 10, "java.lang.invoke.MethodHandle", 1025, typeDescription2, javaType.getTypeStub());
        METHOD_HANDLE = javaType11;
        JavaType javaType12 = new JavaType("METHOD_HANDLES", 11, "java.lang.invoke.MethodHandles", 1, Object.class, new Type[0]);
        METHOD_HANDLES = javaType12;
        JavaType javaType13 = new JavaType("METHOD_TYPE", 12, "java.lang.invoke.MethodType", 17, typeDescription2, javaType.getTypeStub(), javaType4.getTypeStub(), TypeDescription.ForLoadedType.m15196of(Serializable.class));
        METHOD_TYPE = javaType13;
        JavaType javaType14 = new JavaType("METHOD_HANDLES_LOOKUP", 13, "java.lang.invoke.MethodHandles$Lookup", 25, Object.class, new Type[0]);
        METHOD_HANDLES_LOOKUP = javaType14;
        JavaType javaType15 = new JavaType("CALL_SITE", 14, "java.lang.invoke.CallSite", 1025, Object.class, new Type[0]);
        CALL_SITE = javaType15;
        JavaType javaType16 = new JavaType("VAR_HANDLE", 15, "java.lang.invoke.VarHandle", 1025, TypeDescription.Generic.OBJECT, javaType.getTypeStub());
        VAR_HANDLE = javaType16;
        JavaType javaType17 = new JavaType("PARAMETER", 16, "java.lang.reflect.Parameter", 17, Object.class, AnnotatedElement.class);
        PARAMETER = javaType17;
        JavaType javaType18 = new JavaType("EXECUTABLE", 17, "java.lang.reflect.Executable", 1025, AccessibleObject.class, Member.class, GenericDeclaration.class);
        EXECUTABLE = javaType18;
        JavaType javaType19 = new JavaType("MODULE", 18, "java.lang.Module", 17, Object.class, AnnotatedElement.class);
        MODULE = javaType19;
        JavaType javaType20 = new JavaType("CONSTANT_BOOTSTRAPS", 19, "java.lang.invoke.ConstantBootstraps", 17, Object.class, new Type[0]);
        CONSTANT_BOOTSTRAPS = javaType20;
        JavaType javaType21 = new JavaType("RECORD", 20, "java.lang.Record", 1025, Object.class, new Type[0]);
        RECORD = javaType21;
        JavaType javaType22 = new JavaType("OBJECT_METHODS", 21, "java.lang.runtime.ObjectMethods", 1, Object.class, new Type[0]);
        OBJECT_METHODS = javaType22;
        JavaType javaType23 = new JavaType("ACCESS_CONTROL_CONTEXT", 22, "java.security.AccessControlContext", 17, typeDescription, new TypeDefinition[0]);
        ACCESS_CONTROL_CONTEXT = javaType23;
        $VALUES = new JavaType[]{javaType, javaType2, javaType3, javaType4, javaType5, javaType6, javaType7, javaType8, javaType9, javaType10, javaType11, javaType12, javaType13, javaType14, javaType15, javaType16, javaType17, javaType18, javaType19, javaType20, javaType21, javaType22, javaType23};
    }

    @CachedReturnPlugin.Enhance("available")
    private Boolean doIsAvailable() {
        Boolean bool;
        if (this.available != null) {
            bool = null;
        } else {
            try {
                load();
                bool = Boolean.TRUE;
            } catch (ClassNotFoundException unused) {
                bool = Boolean.FALSE;
            }
        }
        if (bool == null) {
            return this.available;
        }
        this.available = bool;
        return bool;
    }

    public boolean isInstance(Object obj) {
        if (!isAvailable()) {
            return false;
        }
        try {
            return load().isInstance(obj);
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private JavaType(java.lang.String r8, int r9, @net.bytebuddy.utility.nullability.MaybeNull java.lang.String r10, int r11, net.bytebuddy.description.type.TypeDefinition r12, net.bytebuddy.description.type.TypeDefinition... r13) {
        /*
            r7 = this;
            if (r12 != 0) goto L5
            net.bytebuddy.description.type.TypeDescription$Generic r12 = net.bytebuddy.description.type.TypeDescription.Generic.UNDEFINED
            goto L9
        L5:
            net.bytebuddy.description.type.TypeDescription$Generic r12 = r12.asGenericType()
        L9:
            r5 = r12
            net.bytebuddy.description.type.TypeList$Generic$Explicit r6 = new net.bytebuddy.description.type.TypeList$Generic$Explicit
            r6.<init>(r13)
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.utility.JavaType.<init>(java.lang.String, int, java.lang.String, int, net.bytebuddy.description.type.TypeDefinition, net.bytebuddy.description.type.TypeDefinition[]):void");
    }

    private JavaType(String str, int i, @MaybeNull String str2, int i2, TypeDescription.Generic generic, TypeList.Generic generic2) {
        this.typeDescription = new LatentTypeWithSimpleName(str2, i2, generic, generic2);
    }
}
