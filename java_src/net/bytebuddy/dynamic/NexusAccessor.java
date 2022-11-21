package net.bytebuddy.dynamic;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Collections;
import net.bytebuddy.ByteBuddy;
import net.bytebuddy.build.AccessControllerPlugin;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.ClassFileLocator;
import net.bytebuddy.dynamic.loading.ClassInjector;
import net.bytebuddy.dynamic.loading.ClassLoadingStrategy;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.LoadedTypeInitializer;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Removal;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.collection.ArrayFactory;
import net.bytebuddy.implementation.bytecode.constant.ClassConstant;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.implementation.bytecode.constant.NullConstant;
import net.bytebuddy.implementation.bytecode.constant.TextConstant;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.JavaModule;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class NexusAccessor {
    private static final boolean ACCESS_CONTROLLER;
    private static final Dispatcher DISPATCHER;
    @MaybeNull
    @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
    private final ReferenceQueue<? super ClassLoader> referenceQueue;

    /* loaded from: classes2.dex */
    public interface Dispatcher {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Available implements Dispatcher {
            private final Method clean;
            private final Method register;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Available available = (Available) obj;
                    return this.register.equals(available.register) && this.clean.equals(available.clean);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.register.hashCode()) * 31) + this.clean.hashCode();
            }

            @Override // net.bytebuddy.dynamic.NexusAccessor.Dispatcher
            public boolean isAlive() {
                return true;
            }

            @Override // net.bytebuddy.dynamic.NexusAccessor.Dispatcher
            public void clean(Reference<? extends ClassLoader> reference) {
                try {
                    this.clean.invoke(null, reference);
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException(e);
                } catch (InvocationTargetException e2) {
                    throw new IllegalStateException(e2.getTargetException());
                }
            }

            @Override // net.bytebuddy.dynamic.NexusAccessor.Dispatcher
            public void register(String str, @MaybeNull ClassLoader classLoader, @MaybeNull ReferenceQueue<? super ClassLoader> referenceQueue, int i, LoadedTypeInitializer loadedTypeInitializer) {
                try {
                    this.register.invoke(null, str, classLoader, referenceQueue, Integer.valueOf(i), loadedTypeInitializer);
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException(e);
                } catch (InvocationTargetException e2) {
                    throw new IllegalStateException(e2.getTargetException());
                }
            }

            public Available(Method method, Method method2) {
                this.register = method;
                this.clean = method2;
            }
        }

        /* loaded from: classes2.dex */
        public enum CreationAction implements PrivilegedAction<Dispatcher> {
            INSTANCE;

            @Override // java.security.PrivilegedAction
            @SuppressFBWarnings(justification = "Exception should not be rethrown but trigger a fallback.", value = {"REC_CATCH_EXCEPTION"})
            public Dispatcher run() {
                if (Boolean.getBoolean(Nexus.PROPERTY)) {
                    return new Unavailable("Nexus injection was explicitly disabled");
                }
                try {
                    Class<?> cls = new ClassInjector.UsingReflection(ClassLoader.getSystemClassLoader(), ClassLoadingStrategy.NO_PROTECTION_DOMAIN).inject(Collections.singletonMap(TypeDescription.ForLoadedType.m15196of(Nexus.class), ClassFileLocator.ForClassLoader.read(Nexus.class))).get(TypeDescription.ForLoadedType.m15196of(Nexus.class));
                    return new Available(cls.getMethod("register", String.class, ClassLoader.class, ReferenceQueue.class, Integer.TYPE, Object.class), cls.getMethod("clean", Reference.class));
                } catch (Exception e) {
                    try {
                        Class<?> loadClass = ClassLoader.getSystemClassLoader().loadClass(Nexus.class.getName());
                        try {
                            JavaModule ofType = JavaModule.ofType(NexusAccessor.class);
                            JavaModule ofType2 = JavaModule.ofType(loadClass);
                            if (ofType != null && !ofType.canRead(ofType2)) {
                                Class<?> cls2 = Class.forName("java.lang.Module");
                                cls2.getMethod("addReads", cls2).invoke(ofType.unwrap(), ofType2.unwrap());
                            }
                            return new Available(loadClass.getMethod("register", String.class, ClassLoader.class, ReferenceQueue.class, Integer.TYPE, Object.class), loadClass.getMethod("clean", Reference.class));
                        } catch (Exception e2) {
                            return new Unavailable(e2.toString());
                        }
                    } catch (Exception unused) {
                        return new Unavailable(e.toString());
                    }
                }
            }
        }

        void clean(Reference<? extends ClassLoader> reference);

        boolean isAlive();

        void register(String str, @MaybeNull ClassLoader classLoader, @MaybeNull ReferenceQueue<? super ClassLoader> referenceQueue, int i, LoadedTypeInitializer loadedTypeInitializer);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Unavailable implements Dispatcher {
            private final String message;

            @Override // net.bytebuddy.dynamic.NexusAccessor.Dispatcher
            public void clean(Reference<? extends ClassLoader> reference) {
                throw new UnsupportedOperationException("Could not initialize Nexus accessor: " + this.message);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.message.equals(((Unavailable) obj).message);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.message.hashCode();
            }

            @Override // net.bytebuddy.dynamic.NexusAccessor.Dispatcher
            public boolean isAlive() {
                return false;
            }

            @Override // net.bytebuddy.dynamic.NexusAccessor.Dispatcher
            public void register(String str, @MaybeNull ClassLoader classLoader, @MaybeNull ReferenceQueue<? super ClassLoader> referenceQueue, int i, LoadedTypeInitializer loadedTypeInitializer) {
                throw new UnsupportedOperationException("Could not initialize Nexus accessor: " + this.message);
            }

            public Unavailable(String str) {
                this.message = str;
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class InitializationAppender implements ByteCodeAppender {
        private final int identification;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.identification == ((InitializationAppender) obj).identification;
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.identification;
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            try {
                StackManipulation[] stackManipulationArr = new StackManipulation[1];
                StackManipulation[] stackManipulationArr2 = new StackManipulation[10];
                stackManipulationArr2[0] = MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.ForLoadedMethod(ClassLoader.class.getMethod("getSystemClassLoader", new Class[0])));
                stackManipulationArr2[1] = new TextConstant(Nexus.class.getName());
                stackManipulationArr2[2] = MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.ForLoadedMethod(ClassLoader.class.getMethod("loadClass", String.class)));
                stackManipulationArr2[3] = new TextConstant("initialize");
                ArrayFactory forType = ArrayFactory.forType(TypeDescription.Generic.CLASS);
                Class cls = Integer.TYPE;
                stackManipulationArr2[4] = forType.withValues(Arrays.asList(ClassConstant.m14958of(TypeDescription.CLASS), ClassConstant.m14958of(TypeDescription.ForLoadedType.m15196of(cls))));
                stackManipulationArr2[5] = MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.ForLoadedMethod(Class.class.getMethod("getMethod", String.class, Class[].class)));
                stackManipulationArr2[6] = NullConstant.INSTANCE;
                ArrayFactory forType2 = ArrayFactory.forType(TypeDescription.Generic.OBJECT);
                StackManipulation[] stackManipulationArr3 = new StackManipulation[2];
                stackManipulationArr3[0] = ClassConstant.m14958of(methodDescription.getDeclaringType().asErasure());
                StackManipulation[] stackManipulationArr4 = new StackManipulation[2];
                try {
                    stackManipulationArr4[0] = IntegerConstant.forValue(this.identification);
                    stackManipulationArr4[1] = MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.ForLoadedMethod(Integer.class.getMethod(ByteBuddy.EnumerationImplementation.ENUM_VALUE_OF_METHOD_NAME, cls)));
                    stackManipulationArr3[1] = new StackManipulation.Compound(stackManipulationArr4);
                    stackManipulationArr2[7] = forType2.withValues(Arrays.asList(stackManipulationArr3));
                    stackManipulationArr2[8] = MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.ForLoadedMethod(Method.class.getMethod("invoke", Object.class, Object[].class)));
                    stackManipulationArr2[9] = Removal.SINGLE;
                    stackManipulationArr[0] = new StackManipulation.Compound(stackManipulationArr2);
                    return new ByteCodeAppender.Simple(stackManipulationArr).apply(methodVisitor, context, methodDescription);
                } catch (NoSuchMethodException e) {
                    e = e;
                    throw new IllegalStateException("Cannot locate method", e);
                }
            } catch (NoSuchMethodException e2) {
                e = e2;
            }
        }

        public InitializationAppender(int i) {
            this.identification = i;
        }
    }

    static {
        boolean z = false;
        try {
            Class.forName("java.security.AccessController", false, null);
            ACCESS_CONTROLLER = Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"));
        } catch (ClassNotFoundException unused) {
            ACCESS_CONTROLLER = z;
            DISPATCHER = (Dispatcher) doPrivileged(Dispatcher.CreationAction.INSTANCE);
        } catch (SecurityException unused2) {
            z = true;
            ACCESS_CONTROLLER = z;
            DISPATCHER = (Dispatcher) doPrivileged(Dispatcher.CreationAction.INSTANCE);
        }
        DISPATCHER = (Dispatcher) doPrivileged(Dispatcher.CreationAction.INSTANCE);
    }

    public NexusAccessor() {
        this(null);
    }

    public static void clean(Reference<? extends ClassLoader> reference) {
        DISPATCHER.clean(reference);
    }

    @AccessControllerPlugin.Enhance
    private static <T> T doPrivileged(PrivilegedAction<T> privilegedAction) {
        return ACCESS_CONTROLLER ? (T) AccessController.doPrivileged(privilegedAction) : privilegedAction.run();
    }

    public static boolean isAlive() {
        return DISPATCHER.isAlive();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0027 A[RETURN] */
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
            java.lang.ref.ReferenceQueue<? super java.lang.ClassLoader> r2 = r4.referenceQueue
            net.bytebuddy.dynamic.NexusAccessor r5 = (net.bytebuddy.dynamic.NexusAccessor) r5
            java.lang.ref.ReferenceQueue<? super java.lang.ClassLoader> r5 = r5.referenceQueue
            if (r5 == 0) goto L24
            if (r2 == 0) goto L26
            boolean r5 = r2.equals(r5)
            if (r5 != 0) goto L27
            return r1
        L24:
            if (r2 == 0) goto L27
        L26:
            return r1
        L27:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.dynamic.NexusAccessor.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int hashCode = getClass().hashCode() * 31;
        ReferenceQueue<? super ClassLoader> referenceQueue = this.referenceQueue;
        return referenceQueue != null ? hashCode + referenceQueue.hashCode() : hashCode;
    }

    public NexusAccessor(@MaybeNull ReferenceQueue<? super ClassLoader> referenceQueue) {
        this.referenceQueue = referenceQueue;
    }

    public void register(String str, @MaybeNull ClassLoader classLoader, int i, LoadedTypeInitializer loadedTypeInitializer) {
        if (loadedTypeInitializer.isAlive()) {
            DISPATCHER.register(str, classLoader, this.referenceQueue, i, loadedTypeInitializer);
        }
    }
}
