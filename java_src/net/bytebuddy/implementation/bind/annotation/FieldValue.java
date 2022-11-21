package net.bytebuddy.implementation.bind.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import net.bytebuddy.implementation.bind.annotation.RuntimeType;
import net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.matcher.ElementMatchers;
@Target({ElementType.PARAMETER})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface FieldValue {

    /* loaded from: classes.dex */
    public enum Binder implements TargetMethodAnnotationDrivenBinder.ParameterBinder<FieldValue> {
        INSTANCE(new Delegate());
        
        private static final MethodDescription.InDefinedShape DECLARING_TYPE;
        private static final MethodDescription.InDefinedShape FIELD_NAME;
        private final TargetMethodAnnotationDrivenBinder.ParameterBinder<FieldValue> delegate;

        /* loaded from: classes.dex */
        public static class Delegate extends TargetMethodAnnotationDrivenBinder.ParameterBinder.ForFieldBinding<FieldValue> {
            @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder.ForFieldBinding
            public TypeDescription declaringType(AnnotationDescription.Loadable<FieldValue> loadable) {
                return (TypeDescription) loadable.getValue(Binder.DECLARING_TYPE).resolve(TypeDescription.class);
            }

            @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder.ForFieldBinding
            public String fieldName(AnnotationDescription.Loadable<FieldValue> loadable) {
                return (String) loadable.getValue(Binder.FIELD_NAME).resolve(String.class);
            }

            @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
            public Class<FieldValue> getHandledType() {
                return FieldValue.class;
            }

            @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder.ForFieldBinding
            public MethodDelegationBinder.ParameterBinding<?> bind(FieldDescription fieldDescription, AnnotationDescription.Loadable<FieldValue> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner) {
                StackManipulation loadThis;
                StackManipulation[] stackManipulationArr = new StackManipulation[3];
                if (fieldDescription.isStatic()) {
                    loadThis = StackManipulation.Trivial.INSTANCE;
                } else {
                    loadThis = MethodVariableAccess.loadThis();
                }
                stackManipulationArr[0] = loadThis;
                stackManipulationArr[1] = FieldAccess.forField(fieldDescription).read();
                stackManipulationArr[2] = assigner.assign(fieldDescription.getType(), parameterDescription.getType(), RuntimeType.Verifier.check(parameterDescription));
                StackManipulation.Compound compound = new StackManipulation.Compound(stackManipulationArr);
                if (compound.isValid()) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(compound);
                }
                return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
            }
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<FieldValue> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
            return this.delegate.bind(loadable, methodDescription, parameterDescription, target, assigner, typing);
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public Class<FieldValue> getHandledType() {
            return this.delegate.getHandledType();
        }

        static {
            MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(FieldValue.class).getDeclaredMethods();
            DECLARING_TYPE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("declaringType")).getOnly();
            FIELD_NAME = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("value")).getOnly();
        }

        Binder(TargetMethodAnnotationDrivenBinder.ParameterBinder parameterBinder) {
            this.delegate = parameterBinder;
        }
    }

    Class<?> declaringType() default void.class;

    String value() default "";
}
