package net.bytebuddy.build;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.security.Permission;
import java.security.PrivilegedAction;
import java.security.PrivilegedExceptionAction;
import java.util.HashMap;
import java.util.Map;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.asm.AsmVisitorWrapper;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.build.Plugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.modifier.FieldManifestation;
import net.bytebuddy.description.modifier.Ownership;
import net.bytebuddy.description.modifier.Visibility;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.DynamicType;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.StackSize;
import net.bytebuddy.jar.asm.Label;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.pool.TypePool;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.OpenedClassReader;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class AccessControllerPlugin extends Plugin.ForElementMatcher implements Plugin.Factory {
    private static final String ACCESS_CONTROLLER = "java.security.AccessController";
    private static final Object[] EMPTY = new Object[0];
    private static final String NAME = "ACCESS_CONTROLLER";
    private static final Map<MethodDescription.SignatureToken, MethodDescription.SignatureToken> SIGNATURES;
    @MaybeNull
    @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
    private final String property;

    @Target({ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Enhance {
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static abstract class Initializer implements ByteCodeAppender {
        private final TypeDescription instrumentedType;
        private final String name;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class WithProperty extends Initializer {
            private final String property;

            @Override // net.bytebuddy.build.AccessControllerPlugin.Initializer
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.property.equals(((WithProperty) obj).property);
                }
                return false;
            }

            @Override // net.bytebuddy.build.AccessControllerPlugin.Initializer
            public int hashCode() {
                return (super.hashCode() * 31) + this.property.hashCode();
            }

            @Override // net.bytebuddy.build.AccessControllerPlugin.Initializer
            public int onAccessController(MethodVisitor methodVisitor) {
                methodVisitor.visitLdcInsn(this.property);
                methodVisitor.visitLdcInsn("true");
                methodVisitor.visitMethodInsn(184, Type.getInternalName(System.class), "getProperty", Type.getMethodDescriptor(Type.getType(String.class), Type.getType(String.class), Type.getType(String.class)), false);
                methodVisitor.visitMethodInsn(184, Type.getInternalName(Boolean.class), "parseBoolean", Type.getMethodDescriptor(Type.getType(Boolean.TYPE), Type.getType(String.class)), false);
                return 2;
            }

            public WithProperty(TypeDescription typeDescription, String str, String str2) {
                super(typeDescription, str);
                this.property = str2;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class WithoutProperty extends Initializer {
            public WithoutProperty(TypeDescription typeDescription, String str) {
                super(typeDescription, str);
            }

            @Override // net.bytebuddy.build.AccessControllerPlugin.Initializer
            public boolean equals(@MaybeNull Object obj) {
                if (super.equals(obj)) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass();
                }
                return false;
            }

            @Override // net.bytebuddy.build.AccessControllerPlugin.Initializer
            public int hashCode() {
                return super.hashCode();
            }

            @Override // net.bytebuddy.build.AccessControllerPlugin.Initializer
            public int onAccessController(MethodVisitor methodVisitor) {
                methodVisitor.visitInsn(4);
                return 1;
            }
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Initializer initializer = (Initializer) obj;
                return this.name.equals(initializer.name) && this.instrumentedType.equals(initializer.instrumentedType);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.name.hashCode();
        }

        public abstract int onAccessController(MethodVisitor methodVisitor);

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            int i;
            int i2;
            int i3;
            Label label = new Label();
            Label label2 = new Label();
            Label label3 = new Label();
            Label label4 = new Label();
            Label label5 = new Label();
            methodVisitor.visitTryCatchBlock(label, label2, label3, Type.getInternalName(ClassNotFoundException.class));
            methodVisitor.visitTryCatchBlock(label, label2, label4, Type.getInternalName(SecurityException.class));
            methodVisitor.visitLabel(label);
            methodVisitor.visitLdcInsn(AccessControllerPlugin.ACCESS_CONTROLLER);
            methodVisitor.visitInsn(3);
            methodVisitor.visitInsn(1);
            String internalName = Type.getInternalName(Class.class);
            Type type = Type.getType(Class.class);
            Class cls = Boolean.TYPE;
            methodVisitor.visitMethodInsn(184, internalName, "forName", Type.getMethodDescriptor(type, Type.getType(String.class), Type.getType(cls), Type.getType(ClassLoader.class)), false);
            methodVisitor.visitInsn(87);
            int onAccessController = onAccessController(methodVisitor);
            methodVisitor.visitFieldInsn(179, this.instrumentedType.getInternalName(), this.name, Type.getDescriptor(cls));
            methodVisitor.visitLabel(label2);
            methodVisitor.visitJumpInsn(167, label5);
            methodVisitor.visitLabel(label3);
            ClassFileVersion classFileVersion = context.getClassFileVersion();
            ClassFileVersion classFileVersion2 = ClassFileVersion.JAVA_V6;
            if (classFileVersion.isAtLeast(classFileVersion2)) {
                i3 = 179;
                i = onAccessController;
                i2 = 87;
                methodVisitor.visitFrame(4, AccessControllerPlugin.EMPTY.length, AccessControllerPlugin.EMPTY, 1, new Object[]{Type.getInternalName(ClassNotFoundException.class)});
            } else {
                i = onAccessController;
                i2 = 87;
                i3 = 179;
            }
            methodVisitor.visitInsn(i2);
            methodVisitor.visitInsn(3);
            methodVisitor.visitFieldInsn(i3, this.instrumentedType.getInternalName(), this.name, Type.getDescriptor(cls));
            methodVisitor.visitJumpInsn(167, label5);
            methodVisitor.visitLabel(label4);
            if (context.getClassFileVersion().isAtLeast(classFileVersion2)) {
                methodVisitor.visitFrame(4, AccessControllerPlugin.EMPTY.length, AccessControllerPlugin.EMPTY, 1, new Object[]{Type.getInternalName(SecurityException.class)});
            }
            methodVisitor.visitInsn(i2);
            methodVisitor.visitInsn(4);
            methodVisitor.visitFieldInsn(i3, this.instrumentedType.getInternalName(), this.name, Type.getDescriptor(cls));
            methodVisitor.visitLabel(label5);
            if (context.getClassFileVersion().isAtLeast(classFileVersion2)) {
                methodVisitor.visitFrame(3, AccessControllerPlugin.EMPTY.length, AccessControllerPlugin.EMPTY, AccessControllerPlugin.EMPTY.length, AccessControllerPlugin.EMPTY);
            }
            return new ByteCodeAppender.Size(Math.max(3, i), 0);
        }

        public Initializer(TypeDescription typeDescription, String str) {
            this.instrumentedType = typeDescription;
            this.name = str;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        SIGNATURES = hashMap;
        TypeDescription typeDescription = TypeDescription.OBJECT;
        hashMap.put(new MethodDescription.SignatureToken("doPrivileged", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedAction.class)), new MethodDescription.SignatureToken("doPrivileged", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedAction.class)));
        hashMap.put(new MethodDescription.SignatureToken("doPrivilegedWithCombiner", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedAction.class)), new MethodDescription.SignatureToken("doPrivilegedWithCombiner", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedAction.class)));
        MethodDescription.SignatureToken signatureToken = new MethodDescription.SignatureToken("doPrivileged", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedAction.class), typeDescription);
        JavaType javaType = JavaType.ACCESS_CONTROL_CONTEXT;
        hashMap.put(signatureToken, new MethodDescription.SignatureToken("doPrivileged", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedAction.class), javaType.getTypeStub()));
        hashMap.put(new MethodDescription.SignatureToken("doPrivileged", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedAction.class), typeDescription, TypeDescription.ForLoadedType.m15196of(Permission[].class)), new MethodDescription.SignatureToken("doPrivileged", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedAction.class), javaType.getTypeStub(), TypeDescription.ForLoadedType.m15196of(Permission[].class)));
        hashMap.put(new MethodDescription.SignatureToken("doPrivilegedWithCombiner", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedAction.class), typeDescription, TypeDescription.ForLoadedType.m15196of(Permission[].class)), new MethodDescription.SignatureToken("doPrivilegedWithCombiner", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedAction.class), javaType.getTypeStub(), TypeDescription.ForLoadedType.m15196of(Permission[].class)));
        hashMap.put(new MethodDescription.SignatureToken("doPrivileged", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedExceptionAction.class)), new MethodDescription.SignatureToken("doPrivileged", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedExceptionAction.class)));
        hashMap.put(new MethodDescription.SignatureToken("doPrivilegedWithCombiner", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedExceptionAction.class)), new MethodDescription.SignatureToken("doPrivilegedWithCombiner", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedExceptionAction.class)));
        hashMap.put(new MethodDescription.SignatureToken("doPrivileged", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedExceptionAction.class), typeDescription), new MethodDescription.SignatureToken("doPrivileged", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedExceptionAction.class), javaType.getTypeStub()));
        hashMap.put(new MethodDescription.SignatureToken("doPrivileged", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedExceptionAction.class), typeDescription, TypeDescription.ForLoadedType.m15196of(Permission[].class)), new MethodDescription.SignatureToken("doPrivileged", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedExceptionAction.class), javaType.getTypeStub(), TypeDescription.ForLoadedType.m15196of(Permission[].class)));
        hashMap.put(new MethodDescription.SignatureToken("doPrivilegedWithCombiner", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedExceptionAction.class), typeDescription, TypeDescription.ForLoadedType.m15196of(Permission[].class)), new MethodDescription.SignatureToken("doPrivilegedWithCombiner", typeDescription, TypeDescription.ForLoadedType.m15196of(PrivilegedExceptionAction.class), javaType.getTypeStub(), TypeDescription.ForLoadedType.m15196of(Permission[].class)));
        hashMap.put(new MethodDescription.SignatureToken("getContext", typeDescription, new TypeDescription[0]), new MethodDescription.SignatureToken("getContext", javaType.getTypeStub(), new TypeDescription[0]));
        TypeDescription typeDescription2 = TypeDescription.VOID;
        hashMap.put(new MethodDescription.SignatureToken("checkPermission", typeDescription2, TypeDescription.ForLoadedType.m15196of(Permission.class)), new MethodDescription.SignatureToken("checkPermission", typeDescription2, TypeDescription.ForLoadedType.m15196of(Permission.class)));
    }

    public AccessControllerPlugin() {
        this(null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002e A[RETURN] */
    @Override // net.bytebuddy.build.Plugin.ForElementMatcher
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
            java.lang.String r2 = r4.property
            net.bytebuddy.build.AccessControllerPlugin r5 = (net.bytebuddy.build.AccessControllerPlugin) r5
            java.lang.String r5 = r5.property
            if (r5 == 0) goto L2b
            if (r2 == 0) goto L2d
            boolean r5 = r2.equals(r5)
            if (r5 != 0) goto L2e
            return r1
        L2b:
            if (r2 == 0) goto L2e
        L2d:
            return r1
        L2e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.build.AccessControllerPlugin.equals(java.lang.Object):boolean");
    }

    @Override // net.bytebuddy.build.Plugin.ForElementMatcher
    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.property;
        return str != null ? hashCode + str.hashCode() : hashCode;
    }

    @Override // net.bytebuddy.build.Plugin.Factory
    public Plugin make() {
        return this;
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class AccessControlWrapper implements AsmVisitorWrapper.ForDeclaredMethods.MethodVisitorWrapper {
        private final String name;

        /* loaded from: classes2.dex */
        public static class PrefixingMethodVisitor extends MethodVisitor {
            private final boolean frames;
            private final TypeDescription instrumentedType;
            private final String name;
            private final int offset;
            private final MethodDescription.SignatureToken token;

            public PrefixingMethodVisitor(MethodVisitor methodVisitor, TypeDescription typeDescription, MethodDescription.SignatureToken signatureToken, String str, int i, boolean z) {
                super(OpenedClassReader.ASM_API, methodVisitor);
                this.instrumentedType = typeDescription;
                this.token = signatureToken;
                this.name = str;
                this.offset = i;
                this.frames = z;
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            public void visitCode() {
                this.f19219mv.visitCode();
                this.f19219mv.visitFieldInsn(178, this.instrumentedType.getInternalName(), this.name, Type.getDescriptor(Boolean.TYPE));
                Label label = new Label();
                this.f19219mv.visitJumpInsn(153, label);
                int i = this.offset;
                for (TypeDescription typeDescription : this.token.getParameterTypes()) {
                    this.f19219mv.visitVarInsn(Type.getType(typeDescription.getDescriptor()).getOpcode(21), i);
                    if (typeDescription.equals(JavaType.ACCESS_CONTROL_CONTEXT.getTypeStub())) {
                        this.f19219mv.visitTypeInsn(192, typeDescription.getInternalName());
                    }
                    i += typeDescription.getStackSize().getSize();
                }
                this.f19219mv.visitMethodInsn(184, AccessControllerPlugin.ACCESS_CONTROLLER.replace((char) TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH, '/'), this.token.getName(), this.token.getDescriptor(), false);
                this.f19219mv.visitInsn(Type.getType(this.token.getReturnType().getDescriptor()).getOpcode(172));
                this.f19219mv.visitLabel(label);
                if (this.frames) {
                    this.f19219mv.visitFrame(3, AccessControllerPlugin.EMPTY.length, AccessControllerPlugin.EMPTY, AccessControllerPlugin.EMPTY.length, AccessControllerPlugin.EMPTY);
                }
            }

            @Override // net.bytebuddy.jar.asm.MethodVisitor
            public void visitMaxs(int i, int i2) {
                this.f19219mv.visitMaxs(Math.max(Math.max(StackSize.m14976of(this.token.getParameterTypes()), this.token.getReturnType().getStackSize().getSize()), i), i2);
            }
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.name.equals(((AccessControlWrapper) obj).name);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.name.hashCode();
        }

        public AccessControlWrapper(String str) {
            this.name = str;
        }

        @Override // net.bytebuddy.asm.AsmVisitorWrapper.ForDeclaredMethods.MethodVisitorWrapper
        public MethodVisitor wrap(TypeDescription typeDescription, MethodDescription methodDescription, MethodVisitor methodVisitor, Implementation.Context context, TypePool typePool, int i, int i2) {
            boolean z;
            MethodDescription.SignatureToken signatureToken = (MethodDescription.SignatureToken) AccessControllerPlugin.SIGNATURES.get(methodDescription.asDefined().asSignatureToken());
            if (signatureToken != null) {
                if (!methodDescription.isPublic() && !methodDescription.isProtected()) {
                    String str = this.name;
                    int i3 = !methodDescription.isStatic();
                    if ((i & 2) == 0 && context.getClassFileVersion().isAtLeast(ClassFileVersion.JAVA_V6)) {
                        z = true;
                    } else {
                        z = false;
                    }
                    return new PrefixingMethodVisitor(methodVisitor, typeDescription, signatureToken, str, i3, z);
                }
                throw new IllegalStateException(methodDescription + " is either public or protected what is not permitted to avoid context leaks");
            }
            throw new IllegalStateException(methodDescription + " does not have a method with a matching signature in " + AccessControllerPlugin.ACCESS_CONTROLLER);
        }
    }

    @Plugin.Factory.UsingReflection.Priority(Integer.MAX_VALUE)
    public AccessControllerPlugin(@MaybeNull String str) {
        super(ElementMatchers.declaresMethod(ElementMatchers.isAnnotatedWith(Enhance.class)));
        this.property = str;
    }

    @Override // net.bytebuddy.build.Plugin
    @SuppressFBWarnings(justification = "Collision is unlikely and buffer overhead not justified.", value = {"SBSC_USE_STRINGBUFFER_CONCATENATION"})
    public DynamicType.Builder<?> apply(DynamicType.Builder<?> builder, TypeDescription typeDescription, ClassFileLocator classFileLocator) {
        ByteCodeAppender withProperty;
        String str = NAME;
        while (!typeDescription.getDeclaredFields().filter(ElementMatchers.named(str)).isEmpty()) {
            str = str + "$";
        }
        DynamicType.Builder<?> visit = builder.defineField(str, Boolean.TYPE, Visibility.PRIVATE, Ownership.STATIC, FieldManifestation.FINAL).visit(new AsmVisitorWrapper.ForDeclaredMethods().method(ElementMatchers.isAnnotatedWith(Enhance.class), new AccessControlWrapper(str)));
        String str2 = this.property;
        if (str2 == null) {
            withProperty = new Initializer.WithoutProperty(typeDescription, str);
        } else {
            withProperty = new Initializer.WithProperty(typeDescription, str, str2);
        }
        return visit.initializer(withProperty);
    }
}
