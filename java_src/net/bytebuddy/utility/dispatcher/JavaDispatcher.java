package net.bytebuddy.utility.dispatcher;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Map;
import net.bytebuddy.ClassFileVersion;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.dynamic.scaffold.TypeWriter;
import net.bytebuddy.jar.asm.ClassWriter;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.jar.asm.Type;
import net.bytebuddy.utility.GraalImageCode;
import net.bytebuddy.utility.Invoker;
import net.bytebuddy.utility.MethodComparator;
import net.bytebuddy.utility.nullability.MaybeNull;
import net.bytebuddy.utility.privilege.GetSystemPropertyAction;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class JavaDispatcher<T> implements PrivilegedAction<T> {
    private static final boolean ACCESS_CONTROLLER;
    private static final boolean GENERATE;
    public static final String GENERATE_PROPERTY = "net.bytebuddy.generate";
    private static final Invoker INVOKER;
    private static final DynamicClassLoader.Resolver RESOLVER;
    @MaybeNull
    @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
    private final ClassLoader classLoader;
    private final boolean generate;
    private final Class<T> proxy;

    @Target({ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Container {
    }

    @Target({ElementType.TYPE, ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Defaults {
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class DirectInvoker implements Invoker {
        private DirectInvoker() {
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass();
        }

        public int hashCode() {
            return getClass().hashCode();
        }

        @Override // net.bytebuddy.utility.Invoker
        public Object invoke(Method method, @MaybeNull Object obj, @MaybeNull Object[] objArr) {
            return method.invoke(obj, objArr);
        }

        @Override // net.bytebuddy.utility.Invoker
        public Object newInstance(Constructor<?> constructor, Object[] objArr) {
            return constructor.newInstance(objArr);
        }
    }

    /* loaded from: classes.dex */
    public interface Dispatcher {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForContainerCreation implements Dispatcher {
            private final Class<?> target;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.target.equals(((ForContainerCreation) obj).target);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.target.hashCode();
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            public Object invoke(Object[] objArr) {
                return Array.newInstance(this.target, ((Integer) objArr[0]).intValue());
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            public int apply(MethodVisitor methodVisitor, Method method) {
                methodVisitor.visitVarInsn(21, 1);
                methodVisitor.visitTypeInsn(189, Type.getInternalName(this.target));
                methodVisitor.visitInsn(176);
                return 1;
            }

            public ForContainerCreation(Class<?> cls) {
                this.target = cls;
            }
        }

        /* loaded from: classes.dex */
        public enum ForDefaultValue implements Dispatcher {
            VOID(null, 0, 177, 0),
            BOOLEAN(Boolean.FALSE, 3, 172, 1),
            BOOLEAN_REVERSE(Boolean.TRUE, 4, 172, 1),
            BYTE((byte) 0, 3, 172, 1),
            SHORT((short) 0, 3, 172, 1),
            CHARACTER((char) 0, 3, 172, 1),
            INTEGER(0, 3, 172, 1),
            LONG(0L, 9, 173, 2),
            FLOAT(Float.valueOf(0.0f), 11, 174, 1),
            DOUBLE(Double.valueOf(0.0d), 14, 175, 2),
            REFERENCE(null, 1, 176, 1);
            
            private final int load;
            private final int returned;
            private final int size;
            @MaybeNull
            private final Object value;

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            @MaybeNull
            public Object invoke(Object[] objArr) {
                return this.value;
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfNonPrimitiveArray implements Dispatcher {
                private final Class<?> componentType;
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.IGNORE)
                private final Object value;

                /* renamed from: of */
                public static Dispatcher m14750of(Class<?> cls) {
                    return new OfNonPrimitiveArray(Array.newInstance(cls, 0), cls);
                }

                @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
                public int apply(MethodVisitor methodVisitor, Method method) {
                    methodVisitor.visitInsn(3);
                    methodVisitor.visitTypeInsn(189, Type.getInternalName(this.componentType));
                    methodVisitor.visitInsn(176);
                    return 1;
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.componentType.equals(((OfNonPrimitiveArray) obj).componentType);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.componentType.hashCode();
                }

                @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
                public Object invoke(Object[] objArr) {
                    return this.value;
                }

                public OfNonPrimitiveArray(Object obj, Class<?> cls) {
                    this.value = obj;
                    this.componentType = cls;
                }
            }

            /* loaded from: classes.dex */
            public enum OfPrimitiveArray implements Dispatcher {
                BOOLEAN(new boolean[0], 4),
                BYTE(new byte[0], 8),
                SHORT(new short[0], 9),
                CHARACTER(new char[0], 5),
                INTEGER(new int[0], 10),
                LONG(new long[0], 11),
                FLOAT(new float[0], 6),
                DOUBLE(new double[0], 7);
                
                private final int operand;
                private final Object value;

                @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
                public int apply(MethodVisitor methodVisitor, Method method) {
                    methodVisitor.visitInsn(3);
                    methodVisitor.visitIntInsn(188, this.operand);
                    methodVisitor.visitInsn(176);
                    return 1;
                }

                @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
                public Object invoke(Object[] objArr) {
                    return this.value;
                }

                OfPrimitiveArray(Object obj, int i) {
                    this.value = obj;
                    this.operand = i;
                }
            }

            /* renamed from: of */
            public static Dispatcher m14751of(Class<?> cls) {
                if (cls == Void.TYPE) {
                    return VOID;
                }
                Class<?> cls2 = Boolean.TYPE;
                if (cls == cls2) {
                    return BOOLEAN;
                }
                if (cls == Byte.TYPE) {
                    return BYTE;
                }
                if (cls == Short.TYPE) {
                    return SHORT;
                }
                if (cls == Character.TYPE) {
                    return CHARACTER;
                }
                Class<?> cls3 = Integer.TYPE;
                if (cls == cls3) {
                    return INTEGER;
                }
                Class<?> cls4 = Long.TYPE;
                if (cls == cls4) {
                    return LONG;
                }
                Class<?> cls5 = Float.TYPE;
                if (cls == cls5) {
                    return FLOAT;
                }
                if (cls == Double.TYPE) {
                    return DOUBLE;
                }
                if (cls.isArray()) {
                    if (cls.getComponentType() == cls2) {
                        return OfPrimitiveArray.BOOLEAN;
                    }
                    if (cls.getComponentType() == Byte.TYPE) {
                        return OfPrimitiveArray.BYTE;
                    }
                    if (cls.getComponentType() == Short.TYPE) {
                        return OfPrimitiveArray.SHORT;
                    }
                    if (cls.getComponentType() == Character.TYPE) {
                        return OfPrimitiveArray.CHARACTER;
                    }
                    if (cls.getComponentType() == cls3) {
                        return OfPrimitiveArray.INTEGER;
                    }
                    if (cls.getComponentType() == cls4) {
                        return OfPrimitiveArray.LONG;
                    }
                    if (cls.getComponentType() == cls5) {
                        return OfPrimitiveArray.FLOAT;
                    }
                    if (cls.getComponentType() == Double.TYPE) {
                        return OfPrimitiveArray.DOUBLE;
                    }
                    return OfNonPrimitiveArray.m14750of(cls.getComponentType());
                }
                return REFERENCE;
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            public int apply(MethodVisitor methodVisitor, Method method) {
                int i = this.load;
                if (i != 0) {
                    methodVisitor.visitInsn(i);
                }
                methodVisitor.visitInsn(this.returned);
                return this.size;
            }

            ForDefaultValue(@MaybeNull Object obj, int i, int i2, int i3) {
                this.value = obj;
                this.load = i;
                this.returned = i2;
                this.size = i3;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForInstanceCheck implements Dispatcher {
            private final Class<?> target;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.target.equals(((ForInstanceCheck) obj).target);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.target.hashCode();
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            public Object invoke(Object[] objArr) {
                return Boolean.valueOf(this.target.isInstance(objArr[0]));
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            public int apply(MethodVisitor methodVisitor, Method method) {
                methodVisitor.visitVarInsn(25, 1);
                methodVisitor.visitTypeInsn(193, Type.getInternalName(this.target));
                methodVisitor.visitInsn(172);
                return 1;
            }

            public ForInstanceCheck(Class<?> cls) {
                this.target = cls;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForUnresolvedMethod implements Dispatcher {
            private final String message;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.message.equals(((ForUnresolvedMethod) obj).message);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.message.hashCode();
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            public Object invoke(Object[] objArr) {
                throw new IllegalStateException("Could not invoke proxy: " + this.message);
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            public int apply(MethodVisitor methodVisitor, Method method) {
                methodVisitor.visitTypeInsn(187, Type.getInternalName(IllegalStateException.class));
                methodVisitor.visitInsn(89);
                methodVisitor.visitLdcInsn(this.message);
                methodVisitor.visitMethodInsn(183, Type.getInternalName(IllegalStateException.class), MethodDescription.CONSTRUCTOR_INTERNAL_NAME, Type.getMethodDescriptor(Type.VOID_TYPE, Type.getType(String.class)), false);
                methodVisitor.visitInsn(191);
                return 3;
            }

            public ForUnresolvedMethod(String str) {
                this.message = str;
            }
        }

        int apply(MethodVisitor methodVisitor, Method method);

        @MaybeNull
        Object invoke(Object[] objArr);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForConstructor implements Dispatcher {
            private final Constructor<?> constructor;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.constructor.equals(((ForConstructor) obj).constructor);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.constructor.hashCode();
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            public Object invoke(Object[] objArr) {
                return JavaDispatcher.INVOKER.newInstance(this.constructor, objArr);
            }

            public ForConstructor(Constructor<?> constructor) {
                this.constructor = constructor;
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            public int apply(MethodVisitor methodVisitor, Method method) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                Class<?>[] parameterTypes2 = this.constructor.getParameterTypes();
                methodVisitor.visitTypeInsn(187, Type.getInternalName(this.constructor.getDeclaringClass()));
                methodVisitor.visitInsn(89);
                int i = 1;
                for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                    Type type = Type.getType(parameterTypes[i2]);
                    methodVisitor.visitVarInsn(type.getOpcode(21), i);
                    Class<?> cls = parameterTypes[i2];
                    Class<?> cls2 = parameterTypes2[i2];
                    if (cls != cls2) {
                        methodVisitor.visitTypeInsn(192, Type.getInternalName(cls2));
                    }
                    i += type.getSize();
                }
                methodVisitor.visitMethodInsn(183, Type.getInternalName(this.constructor.getDeclaringClass()), MethodDescription.CONSTRUCTOR_INTERNAL_NAME, Type.getConstructorDescriptor(this.constructor), false);
                methodVisitor.visitInsn(176);
                return i + 1;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForNonStaticMethod implements Dispatcher {
            private static final Object[] NO_ARGUMENTS = new Object[0];
            private final Method method;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.method.equals(((ForNonStaticMethod) obj).method);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.method.hashCode();
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            public Object invoke(Object[] objArr) {
                Object[] objArr2;
                if (objArr.length == 1) {
                    objArr2 = NO_ARGUMENTS;
                } else {
                    int length = objArr.length - 1;
                    Object[] objArr3 = new Object[length];
                    System.arraycopy(objArr, 1, objArr3, 0, length);
                    objArr2 = objArr3;
                }
                return JavaDispatcher.INVOKER.invoke(this.method, objArr[0], objArr2);
            }

            public ForNonStaticMethod(Method method) {
                this.method = method;
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            public int apply(MethodVisitor methodVisitor, Method method) {
                int i;
                Class<?> cls;
                Class<?> cls2;
                Class<?>[] parameterTypes = method.getParameterTypes();
                Class<?>[] parameterTypes2 = this.method.getParameterTypes();
                int i2 = 1;
                for (int i3 = 0; i3 < parameterTypes.length; i3++) {
                    Type type = Type.getType(parameterTypes[i3]);
                    methodVisitor.visitVarInsn(type.getOpcode(21), i2);
                    Class<?> cls3 = parameterTypes[i3];
                    if (i3 == 0) {
                        cls = this.method.getDeclaringClass();
                    } else {
                        cls = parameterTypes2[i3 - 1];
                    }
                    if (cls3 != cls) {
                        if (i3 == 0) {
                            cls2 = this.method.getDeclaringClass();
                        } else {
                            cls2 = parameterTypes2[i3 - 1];
                        }
                        methodVisitor.visitTypeInsn(192, Type.getInternalName(cls2));
                    }
                    i2 += type.getSize();
                }
                if (this.method.getDeclaringClass().isInterface()) {
                    i = 185;
                } else {
                    i = 182;
                }
                methodVisitor.visitMethodInsn(i, Type.getInternalName(this.method.getDeclaringClass()), this.method.getName(), Type.getMethodDescriptor(this.method), this.method.getDeclaringClass().isInterface());
                methodVisitor.visitInsn(Type.getReturnType(this.method).getOpcode(172));
                return Math.max(i2 - 1, Type.getReturnType(this.method).getSize());
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForStaticMethod implements Dispatcher {
            private final Method method;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.method.equals(((ForStaticMethod) obj).method);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.method.hashCode();
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            @MaybeNull
            public Object invoke(Object[] objArr) {
                return JavaDispatcher.INVOKER.invoke(this.method, null, objArr);
            }

            public ForStaticMethod(Method method) {
                this.method = method;
            }

            @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.Dispatcher
            public int apply(MethodVisitor methodVisitor, Method method) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                Class<?>[] parameterTypes2 = this.method.getParameterTypes();
                int i = 1;
                for (int i2 = 0; i2 < parameterTypes.length; i2++) {
                    Type type = Type.getType(parameterTypes[i2]);
                    methodVisitor.visitVarInsn(type.getOpcode(21), i);
                    Class<?> cls = parameterTypes[i2];
                    Class<?> cls2 = parameterTypes2[i2];
                    if (cls != cls2) {
                        methodVisitor.visitTypeInsn(192, Type.getInternalName(cls2));
                    }
                    i += type.getSize();
                }
                methodVisitor.visitMethodInsn(184, Type.getInternalName(this.method.getDeclaringClass()), this.method.getName(), Type.getMethodDescriptor(this.method), this.method.getDeclaringClass().isInterface());
                methodVisitor.visitInsn(Type.getReturnType(this.method).getOpcode(172));
                return Math.max(i - 1, Type.getReturnType(this.method).getSize());
            }
        }
    }

    /* loaded from: classes.dex */
    public static class DynamicClassLoader extends ClassLoader {
        @MaybeNull
        private static final String DUMP_FOLDER;
        private static final Class<?>[] NO_PARAMETER = new Class[0];
        private static final Object[] NO_ARGUMENT = new Object[0];

        /* loaded from: classes.dex */
        public interface Resolver {

            /* loaded from: classes.dex */
            public enum CreationAction implements PrivilegedAction<Resolver> {
                INSTANCE;

                @Override // java.security.PrivilegedAction
                @SuppressFBWarnings(justification = "Exception should not be rethrown but trigger a fallback.", value = {"REC_CATCH_EXCEPTION"})
                public Resolver run() {
                    try {
                        Class<?> cls = Class.forName("java.lang.Module", false, null);
                        return new ForModuleSystem(Class.class.getMethod("getModule", new Class[0]), cls.getMethod("isExported", String.class), cls.getMethod("addExports", String.class, cls), ClassLoader.class.getMethod("getUnnamedModule", new Class[0]));
                    } catch (Exception unused) {
                        return NoOp.INSTANCE;
                    }
                }
            }

            /* loaded from: classes.dex */
            public enum NoOp implements Resolver {
                INSTANCE;

                @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.DynamicClassLoader.Resolver
                public void accept(@MaybeNull ClassLoader classLoader, Class<?> cls) {
                }
            }

            void accept(@MaybeNull ClassLoader classLoader, Class<?> cls);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForModuleSystem implements Resolver {
                private final Method addExports;
                private final Method getModule;
                private final Method getUnnamedModule;
                private final Method isExported;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForModuleSystem forModuleSystem = (ForModuleSystem) obj;
                        return this.getModule.equals(forModuleSystem.getModule) && this.isExported.equals(forModuleSystem.isExported) && this.addExports.equals(forModuleSystem.addExports) && this.getUnnamedModule.equals(forModuleSystem.getUnnamedModule);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((getClass().hashCode() * 31) + this.getModule.hashCode()) * 31) + this.isExported.hashCode()) * 31) + this.addExports.hashCode()) * 31) + this.getUnnamedModule.hashCode();
                }

                public ForModuleSystem(Method method, Method method2, Method method3, Method method4) {
                    this.getModule = method;
                    this.isExported = method2;
                    this.addExports = method3;
                    this.getUnnamedModule = method4;
                }

                @Override // net.bytebuddy.utility.dispatcher.JavaDispatcher.DynamicClassLoader.Resolver
                @SuppressFBWarnings(justification = "Exception should always be wrapped for clarity.", value = {"REC_CATCH_EXCEPTION"})
                public void accept(@MaybeNull ClassLoader classLoader, Class<?> cls) {
                    Package r0 = cls.getPackage();
                    if (r0 != null) {
                        try {
                            Object invoke = this.getModule.invoke(cls, new Object[0]);
                            if (!((Boolean) this.isExported.invoke(invoke, r0.getName())).booleanValue()) {
                                this.addExports.invoke(invoke, r0.getName(), this.getUnnamedModule.invoke(classLoader, new Object[0]));
                            }
                        } catch (Exception e) {
                            throw new IllegalStateException("Failed to adjust module graph for dispatcher", e);
                        }
                    }
                }
            }
        }

        static {
            String str;
            try {
                str = (String) JavaDispatcher.doPrivileged(new GetSystemPropertyAction(TypeWriter.DUMP_PROPERTY));
            } catch (Throwable unused) {
                str = null;
            }
            DUMP_FOLDER = str;
        }

        @SuppressFBWarnings(justification = "Expected internal invocation.", value = {"REC_CATCH_EXCEPTION", "DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"})
        public static Invoker invoker() {
            Method[] methodArr;
            ClassWriter classWriter = new ClassWriter(0);
            classWriter.visit(ClassFileVersion.ofThisVm(ClassFileVersion.JAVA_V5).getMinorMajorVersion(), 1, Type.getInternalName(Invoker.class) + "$Dispatcher", null, Type.getInternalName(Object.class), new String[]{Type.getInternalName(Invoker.class)});
            for (Method method : (Method[]) GraalImageCode.getCurrent().sorted(Invoker.class.getMethods(), MethodComparator.INSTANCE)) {
                Class<?>[] exceptionTypes = method.getExceptionTypes();
                String[] strArr = new String[exceptionTypes.length];
                for (int i = 0; i < exceptionTypes.length; i++) {
                    strArr[i] = Type.getInternalName(exceptionTypes[i]);
                }
                MethodVisitor visitMethod = classWriter.visitMethod(1, method.getName(), Type.getMethodDescriptor(method), null, strArr);
                visitMethod.visitCode();
                Type[] typeArr = new Type[method.getParameterTypes().length - 1];
                int i2 = 1;
                for (int i3 = 0; i3 < method.getParameterTypes().length; i3++) {
                    Type type = Type.getType(method.getParameterTypes()[i3]);
                    if (i3 > 0) {
                        typeArr[i3 - 1] = type;
                    }
                    visitMethod.visitVarInsn(type.getOpcode(21), i2);
                    i2 += type.getSize();
                }
                visitMethod.visitMethodInsn(182, Type.getInternalName(method.getParameterTypes()[0]), method.getName(), Type.getMethodDescriptor(Type.getReturnType(method), typeArr), false);
                visitMethod.visitInsn(Type.getReturnType(method).getOpcode(172));
                visitMethod.visitMaxs(Math.max(i2 - 1, Type.getReturnType(method).getSize()), i2);
                visitMethod.visitEnd();
            }
            Type type2 = Type.VOID_TYPE;
            MethodVisitor visitMethod2 = classWriter.visitMethod(1, MethodDescription.CONSTRUCTOR_INTERNAL_NAME, Type.getMethodDescriptor(type2, new Type[0]), null, null);
            visitMethod2.visitCode();
            visitMethod2.visitVarInsn(25, 0);
            visitMethod2.visitMethodInsn(183, Type.getInternalName(Object.class), MethodDescription.CONSTRUCTOR_INTERNAL_NAME, Type.getMethodDescriptor(type2, new Type[0]), false);
            visitMethod2.visitInsn(177);
            visitMethod2.visitMaxs(1, 1);
            visitMethod2.visitEnd();
            classWriter.visitEnd();
            byte[] byteArray = classWriter.toByteArray();
            try {
                String property = System.getProperty(TypeWriter.DUMP_PROPERTY);
                if (property != null) {
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(property, Invoker.class.getName() + "$Dispatcher.class"));
                    fileOutputStream.write(byteArray);
                    fileOutputStream.close();
                }
            } catch (Throwable unused) {
            }
            try {
                return (Invoker) new DynamicClassLoader(Invoker.class).defineClass(Invoker.class.getName() + "$Dispatcher", byteArray, 0, byteArray.length, JavaDispatcher.class.getProtectionDomain()).getConstructor(NO_PARAMETER).newInstance(NO_ARGUMENT);
            } catch (UnsupportedOperationException unused2) {
                return new DirectInvoker();
            } catch (Exception e) {
                throw new IllegalStateException("Failed to create invoker for " + Invoker.class.getName(), e);
            }
        }

        @SuppressFBWarnings(justification = "Expected internal invocation.", value = {"REC_CATCH_EXCEPTION", "DP_CREATE_CLASSLOADER_INSIDE_DO_PRIVILEGED"})
        public static Object proxy(Class<?> cls, Map<Method, Dispatcher> map) {
            int i;
            ClassWriter classWriter = new ClassWriter(0);
            classWriter.visit(ClassFileVersion.ofThisVm(ClassFileVersion.JAVA_V5).getMinorMajorVersion(), 1, Type.getInternalName(cls) + "$Proxy", null, Type.getInternalName(Object.class), new String[]{Type.getInternalName(cls)});
            for (Map.Entry<Method, Dispatcher> entry : map.entrySet()) {
                Class<?>[] exceptionTypes = entry.getKey().getExceptionTypes();
                String[] strArr = new String[exceptionTypes.length];
                for (int i2 = 0; i2 < exceptionTypes.length; i2++) {
                    strArr[i2] = Type.getInternalName(exceptionTypes[i2]);
                }
                MethodVisitor visitMethod = classWriter.visitMethod(1, entry.getKey().getName(), Type.getMethodDescriptor(entry.getKey()), null, strArr);
                visitMethod.visitCode();
                if ((entry.getKey().getModifiers() & 8) == 0) {
                    i = 1;
                } else {
                    i = 0;
                }
                for (Class<?> cls2 : entry.getKey().getParameterTypes()) {
                    i += Type.getType(cls2).getSize();
                }
                visitMethod.visitMaxs(entry.getValue().apply(visitMethod, entry.getKey()), i);
                visitMethod.visitEnd();
            }
            Type type = Type.VOID_TYPE;
            MethodVisitor visitMethod2 = classWriter.visitMethod(1, MethodDescription.CONSTRUCTOR_INTERNAL_NAME, Type.getMethodDescriptor(type, new Type[0]), null, null);
            visitMethod2.visitCode();
            visitMethod2.visitVarInsn(25, 0);
            visitMethod2.visitMethodInsn(183, Type.getInternalName(Object.class), MethodDescription.CONSTRUCTOR_INTERNAL_NAME, Type.getMethodDescriptor(type, new Type[0]), false);
            visitMethod2.visitInsn(177);
            visitMethod2.visitMaxs(1, 1);
            visitMethod2.visitEnd();
            classWriter.visitEnd();
            byte[] byteArray = classWriter.toByteArray();
            String str = DUMP_FOLDER;
            if (str != null) {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(str, cls.getName() + "$Proxy.class"));
                    fileOutputStream.write(byteArray);
                    fileOutputStream.close();
                } catch (Throwable unused) {
                }
            }
            try {
            } catch (Exception e) {
                e = e;
            }
            try {
                return new DynamicClassLoader(cls).defineClass(cls.getName() + "$Proxy", byteArray, 0, byteArray.length, JavaDispatcher.class.getProtectionDomain()).getConstructor(NO_PARAMETER).newInstance(NO_ARGUMENT);
            } catch (Exception e2) {
                e = e2;
                throw new IllegalStateException("Failed to create proxy for " + cls.getName(), e);
            }
        }

        public DynamicClassLoader(Class<?> cls) {
            super(cls.getClassLoader());
            JavaDispatcher.RESOLVER.accept(this, cls);
        }
    }

    @Target({ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Instance {
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class InvokerCreationAction implements PrivilegedAction<Invoker> {
        private InvokerCreationAction() {
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass();
        }

        public int hashCode() {
            return getClass().hashCode();
        }

        @Override // java.security.PrivilegedAction
        public Invoker run() {
            return DynamicClassLoader.invoker();
        }
    }

    @Target({ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface IsConstructor {
    }

    @Target({ElementType.METHOD})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface IsStatic {
    }

    @Target({ElementType.TYPE, ElementType.METHOD, ElementType.PARAMETER})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes.dex */
    public @interface Proxied {
        String value();
    }

    static {
        boolean z = false;
        try {
            Class.forName("java.security.AccessController", false, null);
            ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
        } catch (ClassNotFoundException unused) {
            ACCESS_CONTROLLER = z;
            GENERATE = Boolean.parseBoolean((String) doPrivileged(new GetSystemPropertyAction(GENERATE_PROPERTY)));
            RESOLVER = (DynamicClassLoader.Resolver) doPrivileged(DynamicClassLoader.Resolver.CreationAction.INSTANCE);
            INVOKER = (Invoker) doPrivileged(new InvokerCreationAction());
        } catch (SecurityException unused2) {
            z = true;
            ACCESS_CONTROLLER = z;
            GENERATE = Boolean.parseBoolean((String) doPrivileged(new GetSystemPropertyAction(GENERATE_PROPERTY)));
            RESOLVER = (DynamicClassLoader.Resolver) doPrivileged(DynamicClassLoader.Resolver.CreationAction.INSTANCE);
            INVOKER = (Invoker) doPrivileged(new InvokerCreationAction());
        }
        GENERATE = Boolean.parseBoolean((String) doPrivileged(new GetSystemPropertyAction(GENERATE_PROPERTY)));
        RESOLVER = (DynamicClassLoader.Resolver) doPrivileged(DynamicClassLoader.Resolver.CreationAction.INSTANCE);
        INVOKER = (Invoker) doPrivileged(new InvokerCreationAction());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @AccessControllerPlugin.Enhance
    public static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
        return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
    }

    /* renamed from: of */
    public static <T> PrivilegedAction<T> m14754of(Class<T> cls) {
        return m14753of(cls, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0039 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@net.bytebuddy.utility.nullability.MaybeNull java.lang.Object r5) {
        /*
            r4 = this;
            r0 = 1
            if (r4 != r5) goto L4
            return r0
        L4:
            r1 = 0
            if (r5 != 0) goto L8
            return r1
        L8:
            java.lang.Class r2 = r4.getClass()
            java.lang.Class r3 = r5.getClass()
            if (r2 == r3) goto L13
            return r1
        L13:
            boolean r2 = r4.generate
            net.bytebuddy.utility.dispatcher.JavaDispatcher r5 = (net.bytebuddy.utility.dispatcher.JavaDispatcher) r5
            boolean r3 = r5.generate
            if (r2 == r3) goto L1c
            return r1
        L1c:
            java.lang.Class<T> r2 = r4.proxy
            java.lang.Class<T> r3 = r5.proxy
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto L27
            return r1
        L27:
            java.lang.ClassLoader r2 = r4.classLoader
            java.lang.ClassLoader r5 = r5.classLoader
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
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.utility.dispatcher.JavaDispatcher.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int hashCode = ((getClass().hashCode() * 31) + this.proxy.hashCode()) * 31;
        ClassLoader classLoader = this.classLoader;
        if (classLoader != null) {
            hashCode += classLoader.hashCode();
        }
        return (hashCode * 31) + (this.generate ? 1 : 0);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:63|64|(3:263|264|(1:266)(2:267|(2:269|(12:271|272|273|274|67|68|(4:71|(1:(2:73|(1:76)(1:75))(3:173|174|175))|89|69)|176|177|178|(2:180|(7:182|(4:187|188|189|190)|194|195|188|189|190)(3:196|197|198))(4:199|(1:201)(1:255)|202|(10:204|205|(6:208|(5:213|(2:215|(1:1)(1:217))|222|223|224)|225|226|221|206)|227|228|(3:233|234|(2:236|(2:238|239)(3:240|241|242))(2:243|(2:245|246)(3:247|248|249)))|250|251|234|(0)(0))(3:252|253|254))|125)(3:281|282|283))(3:284|285|286)))|66|67|68|(1:69)|176|177|178|(0)(0)|125) */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0261, code lost:
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0268, code lost:
        if (r6[r12].isArray() == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x026a, code lost:
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x026c, code lost:
        r6[r12] = r6[r12].getComponentType();
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0275, code lost:
        r22 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x027b, code lost:
        if (r11 <= 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0283, code lost:
        if (r6[r12].isPrimitive() != false) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0285, code lost:
        r20 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x028d, code lost:
        r23 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0293, code lost:
        r24 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0297, code lost:
        r25 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x02a2, code lost:
        if (r6[r12].isAssignableFrom(java.lang.Class.forName(((net.bytebuddy.utility.dispatcher.JavaDispatcher.Proxied) r5).value(), false, r26.classLoader)) == false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x02a4, code lost:
        r2 = new java.lang.StringBuilder();
        r11 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02ab, code lost:
        r3 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x02ad, code lost:
        if (r11 <= 0) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x02af, code lost:
        r2.append(net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
        r11 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x02b6, code lost:
        r2.append('L');
        r2.append(((net.bytebuddy.utility.dispatcher.JavaDispatcher.Proxied) r5).value());
        r2.append(net.bytebuddy.pool.TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER);
        r6[r12] = java.lang.Class.forName(r2.toString(), false, r26.classLoader);
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0300, code lost:
        throw new java.lang.IllegalStateException("Cannot resolve to component type: " + ((net.bytebuddy.utility.dispatcher.JavaDispatcher.Proxied) r5).value() + " at " + r12 + " of " + r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0301, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0304, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0307, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x030a, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x030d, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0310, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0335, code lost:
        throw new java.lang.IllegalStateException("Primitive values are not supposed to be proxied: " + r12 + " of " + r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0336, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0337, code lost:
        r23 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x033b, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x033c, code lost:
        r23 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0340, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0341, code lost:
        r23 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0345, code lost:
        r23 = r2;
        r24 = r4;
        r25 = r10;
        r2 = java.lang.Class.forName(((net.bytebuddy.utility.dispatcher.JavaDispatcher.Proxied) r5).value(), false, r26.classLoader);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x035e, code lost:
        if (r6[r12].isAssignableFrom(r2) == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0360, code lost:
        r6[r12] = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0389, code lost:
        throw new java.lang.IllegalStateException("Cannot resolve to type: " + r2.getName() + " at " + r12 + " of " + r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x054a, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x054b, code lost:
        r2 = r0;
        r10 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x054f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x0550, code lost:
        r2 = r0;
        r10 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0555, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0556, code lost:
        r2 = r0;
        r10 = r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x055b, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x055c, code lost:
        r23 = r2;
        r22 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0560, code lost:
        r24 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0565, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0566, code lost:
        r23 = r2;
        r22 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x056a, code lost:
        r24 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x056f, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0570, code lost:
        r23 = r2;
        r22 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x0574, code lost:
        r24 = r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x024b A[Catch: all -> 0x055b, NoSuchMethodException -> 0x0565, ClassNotFoundException -> 0x056f, TryCatch #15 {ClassNotFoundException -> 0x056f, NoSuchMethodException -> 0x0565, all -> 0x055b, blocks: (B:101:0x0243, B:102:0x0248, B:104:0x024b, B:106:0x0257, B:109:0x0262), top: B:331:0x0243 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03c6 A[Catch: all -> 0x054a, NoSuchMethodException -> 0x054f, ClassNotFoundException -> 0x0555, TRY_ENTER, TryCatch #16 {ClassNotFoundException -> 0x0555, NoSuchMethodException -> 0x054f, all -> 0x054a, blocks: (B:124:0x029a, B:126:0x02a4, B:127:0x02ab, B:129:0x02af, B:130:0x02b6, B:160:0x03a2, B:131:0x02d8, B:132:0x0300, B:145:0x0313, B:146:0x0335, B:153:0x0345, B:155:0x0360, B:156:0x0363, B:157:0x0389, B:158:0x038a, B:161:0x03b2, B:164:0x03c6, B:166:0x03d4, B:168:0x03dc, B:172:0x03e7, B:182:0x03fe, B:183:0x0420, B:184:0x0421, B:186:0x042b, B:188:0x0434, B:190:0x0446, B:194:0x0450, B:196:0x045a, B:199:0x0463, B:201:0x046b, B:208:0x049e, B:204:0x0476, B:205:0x047b, B:206:0x049b, B:209:0x04a3, B:211:0x04ab, B:215:0x04ba, B:229:0x0527, B:230:0x0549, B:187:0x0430), top: B:330:0x029a }] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0421 A[Catch: all -> 0x054a, NoSuchMethodException -> 0x054f, ClassNotFoundException -> 0x0555, TryCatch #16 {ClassNotFoundException -> 0x0555, NoSuchMethodException -> 0x054f, all -> 0x054a, blocks: (B:124:0x029a, B:126:0x02a4, B:127:0x02ab, B:129:0x02af, B:130:0x02b6, B:160:0x03a2, B:131:0x02d8, B:132:0x0300, B:145:0x0313, B:146:0x0335, B:153:0x0345, B:155:0x0360, B:156:0x0363, B:157:0x0389, B:158:0x038a, B:161:0x03b2, B:164:0x03c6, B:166:0x03d4, B:168:0x03dc, B:172:0x03e7, B:182:0x03fe, B:183:0x0420, B:184:0x0421, B:186:0x042b, B:188:0x0434, B:190:0x0446, B:194:0x0450, B:196:0x045a, B:199:0x0463, B:201:0x046b, B:208:0x049e, B:204:0x0476, B:205:0x047b, B:206:0x049b, B:209:0x04a3, B:211:0x04ab, B:215:0x04ba, B:229:0x0527, B:230:0x0549, B:187:0x0430), top: B:330:0x029a }] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x04c9 A[Catch: all -> 0x03f5, NoSuchMethodException -> 0x03f8, ClassNotFoundException -> 0x03fb, TryCatch #22 {ClassNotFoundException -> 0x03fb, NoSuchMethodException -> 0x03f8, all -> 0x03f5, blocks: (B:174:0x03eb, B:217:0x04bf, B:219:0x04c9, B:221:0x04d1, B:222:0x04db, B:223:0x04f7, B:224:0x04f8, B:226:0x0500, B:227:0x050a, B:228:0x0526), top: B:322:0x03eb }] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04f8 A[Catch: all -> 0x03f5, NoSuchMethodException -> 0x03f8, ClassNotFoundException -> 0x03fb, TryCatch #22 {ClassNotFoundException -> 0x03fb, NoSuchMethodException -> 0x03f8, all -> 0x03f5, blocks: (B:174:0x03eb, B:217:0x04bf, B:219:0x04c9, B:221:0x04d1, B:222:0x04db, B:223:0x04f7, B:224:0x04f8, B:226:0x0500, B:227:0x050a, B:228:0x0526), top: B:322:0x03eb }] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x05f7  */
    @Override // java.security.PrivilegedAction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T run() {
        /*
            Method dump skipped, instructions count: 1885
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.utility.dispatcher.JavaDispatcher.run():java.lang.Object");
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ProxiedInvocationHandler implements InvocationHandler {
        private static final Object[] NO_ARGUMENTS = new Object[0];
        private final String name;
        private final Map<Method, Dispatcher> targets;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                ProxiedInvocationHandler proxiedInvocationHandler = (ProxiedInvocationHandler) obj;
                return this.name.equals(proxiedInvocationHandler.name) && this.targets.equals(proxiedInvocationHandler.targets);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + this.targets.hashCode();
        }

        public ProxiedInvocationHandler(String str, Map<Method, Dispatcher> map) {
            this.name = str;
            this.targets = map;
        }

        @Override // java.lang.reflect.InvocationHandler
        @MaybeNull
        public Object invoke(Object obj, Method method, @MaybeNull Object[] objArr) {
            r1 = false;
            r1 = false;
            boolean z = false;
            if (method.getDeclaringClass() == Object.class) {
                if (method.getName().equals("hashCode")) {
                    return Integer.valueOf(hashCode());
                }
                if (method.getName().equals("equals")) {
                    Object obj2 = objArr[0];
                    if (obj2 != null && Proxy.isProxyClass(obj2.getClass()) && Proxy.getInvocationHandler(objArr[0]).equals(this)) {
                        z = true;
                    }
                    return Boolean.valueOf(z);
                } else if (method.getName().equals("toString")) {
                    return "Call proxy for " + this.name;
                } else {
                    throw new IllegalStateException("Unexpected object method: " + method);
                }
            }
            Dispatcher dispatcher = this.targets.get(method);
            try {
                try {
                    if (dispatcher != null) {
                        if (objArr == null) {
                            objArr = NO_ARGUMENTS;
                        }
                        return dispatcher.invoke(objArr);
                    }
                    throw new IllegalStateException("No proxy target found for " + method);
                } catch (InvocationTargetException e) {
                    throw e.getTargetException();
                }
            } catch (Error e2) {
                throw e2;
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Throwable th) {
                for (Class<?> cls : method.getExceptionTypes()) {
                    if (cls.isInstance(th)) {
                        throw th;
                    }
                }
                throw new IllegalStateException("Failed to invoke proxy for " + method, th);
            }
        }
    }

    /* renamed from: of */
    public static <T> PrivilegedAction<T> m14753of(Class<T> cls, @MaybeNull ClassLoader classLoader) {
        return m14752of(cls, classLoader, GENERATE);
    }

    public JavaDispatcher(Class<T> cls, @MaybeNull ClassLoader classLoader, boolean z) {
        this.proxy = cls;
        this.classLoader = classLoader;
        this.generate = z;
    }

    /* renamed from: of */
    public static <T> PrivilegedAction<T> m14752of(Class<T> cls, @MaybeNull ClassLoader classLoader, boolean z) {
        if (cls.isInterface()) {
            if (cls.isAnnotationPresent(Proxied.class)) {
                if (!((Proxied) cls.getAnnotation(Proxied.class)).value().startsWith("java.security.")) {
                    return new JavaDispatcher(cls, classLoader, z);
                }
                throw new IllegalArgumentException("Classes related to Java security cannot be proxied: " + cls.getName());
            }
            throw new IllegalArgumentException("Expected " + cls.getName() + " to be annotated with " + Proxied.class.getName());
        }
        throw new IllegalArgumentException("Expected an interface instead of " + cls);
    }
}
