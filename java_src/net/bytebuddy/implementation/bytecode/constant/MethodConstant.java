package net.bytebuddy.implementation.bytecode.constant;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.security.PrivilegedExceptionAction;
import java.util.ArrayList;
import java.util.List;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.auxiliary.PrivilegedMemberLookupAction;
import net.bytebuddy.implementation.auxiliary.TypeProxy;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.TypeCreation;
import net.bytebuddy.implementation.bytecode.assign.TypeCasting;
import net.bytebuddy.implementation.bytecode.collection.ArrayFactory;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public abstract class MethodConstant extends StackManipulation.AbstractBase {
    @MaybeNull
    public static final MethodDescription.InDefinedShape DO_PRIVILEGED = doPrivileged();
    public final MethodDescription.InDefinedShape methodDescription;

    /* loaded from: classes.dex */
    public static class CachedConstructor implements StackManipulation {
        private static final TypeDescription CONSTRUCTOR_TYPE = TypeDescription.ForLoadedType.m15196of(Constructor.class);
        private final StackManipulation constructorConstant;

        public int hashCode() {
            return this.constructorConstant.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return this.constructorConstant.isValid();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            return FieldAccess.forField(context.cache(this.constructorConstant, CONSTRUCTOR_TYPE)).read().apply(methodVisitor, context);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return this.constructorConstant.equals(((CachedConstructor) obj).constructorConstant);
            }
            return false;
        }

        public CachedConstructor(StackManipulation stackManipulation) {
            this.constructorConstant = stackManipulation;
        }
    }

    /* loaded from: classes.dex */
    public static class CachedMethod implements StackManipulation {
        private static final TypeDescription METHOD_TYPE = TypeDescription.ForLoadedType.m15196of(Method.class);
        private final StackManipulation methodConstant;

        public int hashCode() {
            return this.methodConstant.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return this.methodConstant.isValid();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            return FieldAccess.forField(context.cache(this.methodConstant, METHOD_TYPE)).read().apply(methodVisitor, context);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return this.methodConstant.equals(((CachedMethod) obj).methodConstant);
            }
            return false;
        }

        public CachedMethod(StackManipulation stackManipulation) {
            this.methodConstant = stackManipulation;
        }
    }

    /* loaded from: classes.dex */
    public interface CanCache extends StackManipulation {
        StackManipulation cached();
    }

    /* loaded from: classes.dex */
    public enum CanCacheIllegal implements CanCache {
        INSTANCE;

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            return StackManipulation.Illegal.INSTANCE.apply(methodVisitor, context);
        }

        @Override // net.bytebuddy.implementation.bytecode.constant.MethodConstant.CanCache
        public StackManipulation cached() {
            return StackManipulation.Illegal.INSTANCE;
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class ForConstructor extends MethodConstant implements CanCache {
        private static final MethodDescription.InDefinedShape GET_CONSTRUCTOR;
        private static final MethodDescription.InDefinedShape GET_DECLARED_CONSTRUCTOR;

        public ForConstructor(MethodDescription.InDefinedShape inDefinedShape) {
            super(inDefinedShape);
        }

        @Override // net.bytebuddy.implementation.bytecode.constant.MethodConstant
        public MethodDescription.InDefinedShape accessorMethod() {
            return this.methodDescription.isPublic() ? GET_CONSTRUCTOR : GET_DECLARED_CONSTRUCTOR;
        }

        @Override // net.bytebuddy.implementation.bytecode.constant.MethodConstant.CanCache
        public StackManipulation cached() {
            return new CachedConstructor(this);
        }

        @Override // net.bytebuddy.implementation.bytecode.constant.MethodConstant
        public StackManipulation methodName() {
            return StackManipulation.Trivial.INSTANCE;
        }

        static {
            try {
                GET_CONSTRUCTOR = new MethodDescription.ForLoadedMethod(Class.class.getMethod("getConstructor", Class[].class));
                GET_DECLARED_CONSTRUCTOR = new MethodDescription.ForLoadedMethod(Class.class.getMethod(TypeProxy.SilentConstruction.Appender.GET_DECLARED_CONSTRUCTOR_METHOD_NAME, Class[].class));
            } catch (NoSuchMethodException e) {
                throw new IllegalStateException("Could not locate Class::getDeclaredConstructor", e);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ForMethod extends MethodConstant implements CanCache {
        private static final MethodDescription.InDefinedShape GET_DECLARED_METHOD;
        private static final MethodDescription.InDefinedShape GET_METHOD;

        public ForMethod(MethodDescription.InDefinedShape inDefinedShape) {
            super(inDefinedShape);
        }

        @Override // net.bytebuddy.implementation.bytecode.constant.MethodConstant
        public MethodDescription.InDefinedShape accessorMethod() {
            return this.methodDescription.isPublic() ? GET_METHOD : GET_DECLARED_METHOD;
        }

        @Override // net.bytebuddy.implementation.bytecode.constant.MethodConstant.CanCache
        public StackManipulation cached() {
            return new CachedMethod(this);
        }

        @Override // net.bytebuddy.implementation.bytecode.constant.MethodConstant
        public StackManipulation methodName() {
            return new TextConstant(this.methodDescription.getInternalName());
        }

        static {
            try {
                GET_METHOD = new MethodDescription.ForLoadedMethod(Class.class.getMethod("getMethod", String.class, Class[].class));
                GET_DECLARED_METHOD = new MethodDescription.ForLoadedMethod(Class.class.getMethod("getDeclaredMethod", String.class, Class[].class));
            } catch (NoSuchMethodException e) {
                throw new IllegalStateException("Could not locate method lookup", e);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class PrivilegedLookup implements StackManipulation, CanCache {
        private final MethodDescription.InDefinedShape methodDescription;
        private final StackManipulation methodName;

        @Override // net.bytebuddy.implementation.bytecode.constant.MethodConstant.CanCache
        public StackManipulation cached() {
            return this.methodDescription.isConstructor() ? new CachedConstructor(this) : new CachedMethod(this);
        }

        public int hashCode() {
            return this.methodDescription.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public boolean isValid() {
            return this.methodName.isValid();
        }

        @Override // net.bytebuddy.implementation.bytecode.StackManipulation
        public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
            Class cls;
            MethodDescription.InDefinedShape inDefinedShape = MethodConstant.DO_PRIVILEGED;
            if (inDefinedShape != null) {
                TypeDescription register = context.register(PrivilegedMemberLookupAction.m15011of(this.methodDescription));
                StackManipulation[] stackManipulationArr = new StackManipulation[8];
                stackManipulationArr[0] = TypeCreation.m14974of(register);
                stackManipulationArr[1] = Duplication.SINGLE;
                stackManipulationArr[2] = ClassConstant.m14958of(this.methodDescription.getDeclaringType());
                stackManipulationArr[3] = this.methodName;
                stackManipulationArr[4] = ArrayFactory.forType(TypeDescription.Generic.CLASS).withValues(MethodConstant.typeConstantsFor(this.methodDescription.getParameters().asTypeList().asErasures()));
                stackManipulationArr[5] = MethodInvocation.invoke((MethodDescription.InDefinedShape) register.getDeclaredMethods().filter(ElementMatchers.isConstructor()).getOnly());
                stackManipulationArr[6] = MethodInvocation.invoke(inDefinedShape);
                if (this.methodDescription.isConstructor()) {
                    cls = Constructor.class;
                } else {
                    cls = Method.class;
                }
                stackManipulationArr[7] = TypeCasting.m14971to(TypeDescription.ForLoadedType.m15196of(cls));
                return new StackManipulation.Compound(stackManipulationArr).apply(methodVisitor, context);
            }
            throw new IllegalStateException("Privileged method invocation is not supported on the current VM");
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                return this.methodDescription.equals(((PrivilegedLookup) obj).methodDescription);
            }
            return false;
        }

        public PrivilegedLookup(MethodDescription.InDefinedShape inDefinedShape, StackManipulation stackManipulation) {
            this.methodDescription = inDefinedShape;
            this.methodName = stackManipulation;
        }
    }

    @SuppressFBWarnings(justification = "Exception should not be rethrown but trigger a fallback.", value = {"REC_CATCH_EXCEPTION"})
    @MaybeNull
    private static MethodDescription.InDefinedShape doPrivileged() {
        try {
            MethodDescription.ForLoadedMethod forLoadedMethod = new MethodDescription.ForLoadedMethod(Class.forName("java.security.AccessController").getMethod("doPrivileged", PrivilegedExceptionAction.class));
            try {
                if (!Boolean.parseBoolean(System.getProperty("net.bytebuddy.securitymanager", "true"))) {
                    return null;
                }
            } catch (SecurityException unused) {
            }
            return forLoadedMethod;
        } catch (Exception unused2) {
            return null;
        }
    }

    public abstract MethodDescription.InDefinedShape accessorMethod();

    public int hashCode() {
        return this.methodDescription.hashCode();
    }

    public abstract StackManipulation methodName();

    public CanCache withPrivilegedLookup() {
        return new PrivilegedLookup(this.methodDescription, methodName());
    }

    public static CanCache ofPrivileged(MethodDescription.InDefinedShape inDefinedShape) {
        if (DO_PRIVILEGED == null) {
            return m14952of(inDefinedShape);
        }
        if (inDefinedShape.isTypeInitializer()) {
            return CanCacheIllegal.INSTANCE;
        }
        if (inDefinedShape.isConstructor()) {
            return new ForConstructor(inDefinedShape).withPrivilegedLookup();
        }
        return new ForMethod(inDefinedShape).withPrivilegedLookup();
    }

    public static List<StackManipulation> typeConstantsFor(List<TypeDescription> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (TypeDescription typeDescription : list) {
            arrayList.add(ClassConstant.m14958of(typeDescription));
        }
        return arrayList;
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        return new StackManipulation.Compound(ClassConstant.m14958of(this.methodDescription.getDeclaringType()), methodName(), ArrayFactory.forType(TypeDescription.Generic.CLASS).withValues(typeConstantsFor(this.methodDescription.getParameters().asTypeList().asErasures())), MethodInvocation.invoke(accessorMethod())).apply(methodVisitor, context);
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.methodDescription.equals(((MethodConstant) obj).methodDescription);
        }
        return false;
    }

    public MethodConstant(MethodDescription.InDefinedShape inDefinedShape) {
        this.methodDescription = inDefinedShape;
    }

    /* renamed from: of */
    public static CanCache m14952of(MethodDescription.InDefinedShape inDefinedShape) {
        if (inDefinedShape.isTypeInitializer()) {
            return CanCacheIllegal.INSTANCE;
        }
        if (inDefinedShape.isConstructor()) {
            return new ForConstructor(inDefinedShape);
        }
        return new ForMethod(inDefinedShape);
    }
}
