package net.bytebuddy.implementation.bind.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.List;
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
import net.bytebuddy.implementation.bytecode.collection.ArrayFactory;
import net.bytebuddy.implementation.bytecode.constant.NullConstant;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.CompoundList;
@Target({ElementType.PARAMETER})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface AllArguments {

    /* loaded from: classes.dex */
    public enum Binder implements TargetMethodAnnotationDrivenBinder.ParameterBinder<AllArguments> {
        INSTANCE;
        
        private static final MethodDescription.InDefinedShape INCLUDE_SELF;
        private static final MethodDescription.InDefinedShape NULL_IF_EMPTY;
        private static final MethodDescription.InDefinedShape VALUE;

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public Class<AllArguments> getHandledType() {
            return AllArguments.class;
        }

        static {
            MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(AllArguments.class).getDeclaredMethods();
            VALUE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("value")).getOnly();
            INCLUDE_SELF = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("includeSelf")).getOnly();
            NULL_IF_EMPTY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("nullIfEmpty")).getOnly();
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<AllArguments> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
            TypeDescription.Generic componentType;
            int i;
            int i2;
            List<TypeDescription.Generic> asTypeList;
            if (parameterDescription.getType().represents(Object.class)) {
                componentType = TypeDescription.Generic.OBJECT;
            } else if (parameterDescription.getType().isArray()) {
                componentType = parameterDescription.getType().getComponentType();
            } else {
                throw new IllegalStateException("Expected an array type for all argument annotation on " + methodDescription);
            }
            if (!methodDescription.isStatic() && ((Boolean) loadable.getValue(INCLUDE_SELF).resolve(Boolean.class)).booleanValue()) {
                i = 1;
            } else {
                i = 0;
            }
            if (i == 0 && methodDescription.getParameters().isEmpty() && ((Boolean) loadable.getValue(NULL_IF_EMPTY).resolve(Boolean.class)).booleanValue()) {
                return new MethodDelegationBinder.ParameterBinding.Anonymous(NullConstant.INSTANCE);
            }
            ArrayList arrayList = new ArrayList(methodDescription.getParameters().size() + i);
            if (!methodDescription.isStatic() && i == 0) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (i != 0) {
                asTypeList = CompoundList.m14778of(target.getInstrumentedType().asGenericType(), methodDescription.getParameters().asTypeList());
            } else {
                asTypeList = methodDescription.getParameters().asTypeList();
            }
            for (TypeDescription.Generic generic : asTypeList) {
                StackManipulation.Compound compound = new StackManipulation.Compound(MethodVariableAccess.m14936of(generic).loadFrom(i2), assigner.assign(generic, componentType, typing));
                if (compound.isValid()) {
                    arrayList.add(compound);
                } else if (((Assignment) loadable.getValue(VALUE).load(AllArguments.class.getClassLoader()).resolve(Assignment.class)).isStrict()) {
                    return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
                }
                i2 += generic.getStackSize().getSize();
            }
            return new MethodDelegationBinder.ParameterBinding.Anonymous(ArrayFactory.forType(componentType).withValues(arrayList));
        }
    }

    boolean includeSelf() default false;

    boolean nullIfEmpty() default false;

    Assignment value() default Assignment.STRICT;

    /* loaded from: classes.dex */
    public enum Assignment {
        STRICT(true),
        SLACK(false);
        
        private final boolean strict;

        public boolean isStrict() {
            return this.strict;
        }

        Assignment(boolean z) {
            this.strict = z;
        }
    }
}
