package net.bytebuddy.implementation.bind.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.constant.NullConstant;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.matcher.ElementMatchers;
@Target({ElementType.PARAMETER})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface This {
    boolean optional() default false;

    /* loaded from: classes.dex */
    public enum Binder implements TargetMethodAnnotationDrivenBinder.ParameterBinder<This> {
        INSTANCE;
        
        private static final MethodDescription.InDefinedShape OPTIONAL = (MethodDescription.InDefinedShape) TypeDescription.ForLoadedType.m15196of(This.class).getDeclaredMethods().filter(ElementMatchers.named("optional")).getOnly();

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public Class<This> getHandledType() {
            return This.class;
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<This> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
            StackManipulation compound;
            if (!parameterDescription.getType().isPrimitive()) {
                if (!parameterDescription.getType().isArray()) {
                    if (methodDescription.isStatic() && !((Boolean) loadable.getValue(OPTIONAL).resolve(Boolean.class)).booleanValue()) {
                        return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
                    }
                    if (methodDescription.isStatic()) {
                        compound = NullConstant.INSTANCE;
                    } else {
                        compound = new StackManipulation.Compound(MethodVariableAccess.loadThis(), assigner.assign(target.getInstrumentedType().asGenericType(), parameterDescription.getType(), typing));
                    }
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(compound);
                }
                throw new IllegalStateException(parameterDescription + " uses an array type with a @This annotation");
            }
            throw new IllegalStateException(parameterDescription + " uses a primitive type with a @This annotation");
        }
    }
}
