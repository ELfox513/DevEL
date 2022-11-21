package net.bytebuddy.implementation.bind.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.constant.ClassConstant;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.implementation.bytecode.constant.JavaConstantValue;
import net.bytebuddy.implementation.bytecode.constant.MethodConstant;
import net.bytebuddy.implementation.bytecode.constant.TextConstant;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.JavaType;
@Target({ElementType.PARAMETER})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Origin {

    /* loaded from: classes.dex */
    public enum Binder implements TargetMethodAnnotationDrivenBinder.ParameterBinder<Origin> {
        INSTANCE;
        
        private static final MethodDescription.InDefinedShape CACHE;
        private static final MethodDescription.InDefinedShape PRIVILEGED;

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public Class<Origin> getHandledType() {
            return Origin.class;
        }

        static {
            MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(Origin.class).getDeclaredMethods();
            CACHE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("cache")).getOnly();
            PRIVILEGED = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("privileged")).getOnly();
        }

        private static StackManipulation methodConstant(AnnotationDescription.Loadable<Origin> loadable, MethodDescription.InDefinedShape inDefinedShape) {
            MethodConstant.CanCache m14952of;
            if (((Boolean) loadable.getValue(PRIVILEGED).resolve(Boolean.class)).booleanValue()) {
                m14952of = MethodConstant.ofPrivileged(inDefinedShape);
            } else {
                m14952of = MethodConstant.m14952of(inDefinedShape);
            }
            if (((Boolean) loadable.getValue(CACHE).resolve(Boolean.class)).booleanValue()) {
                return m14952of.cached();
            }
            return m14952of;
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<Origin> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
            TypeDescription asErasure = parameterDescription.getType().asErasure();
            if (asErasure.represents(Class.class)) {
                return new MethodDelegationBinder.ParameterBinding.Anonymous(ClassConstant.m14958of(target.getOriginType().asErasure()));
            }
            if (asErasure.represents(Method.class)) {
                if (methodDescription.isMethod()) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(methodConstant(loadable, methodDescription.asDefined()));
                }
                return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
            } else if (asErasure.represents(Constructor.class)) {
                if (methodDescription.isConstructor()) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(methodConstant(loadable, methodDescription.asDefined()));
                }
                return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
            } else if (JavaType.EXECUTABLE.getTypeStub().equals(asErasure)) {
                return new MethodDelegationBinder.ParameterBinding.Anonymous(methodConstant(loadable, methodDescription.asDefined()));
            } else {
                if (asErasure.represents(String.class)) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(new TextConstant(methodDescription.toString()));
                }
                if (asErasure.represents(Integer.TYPE)) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(IntegerConstant.forValue(methodDescription.getModifiers()));
                }
                if (asErasure.equals(JavaType.METHOD_HANDLE.getTypeStub())) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(new JavaConstantValue(JavaConstant.MethodHandle.m14771of(methodDescription.asDefined())));
                }
                if (asErasure.equals(JavaType.METHOD_TYPE.getTypeStub())) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(new JavaConstantValue(JavaConstant.MethodType.m14765of(methodDescription.asDefined())));
                }
                throw new IllegalStateException("The " + parameterDescription + " method's " + parameterDescription.getIndex() + " parameter is annotated with a Origin annotation with an argument not representing a Class, Method, Constructor, String, int, MethodType or MethodHandle type");
            }
        }
    }

    boolean cache() default true;

    boolean privileged() default false;
}
