package net.bytebuddy.implementation.bind.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.auxiliary.TypeProxy;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
@Target({ElementType.PARAMETER})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface Default {

    /* loaded from: classes.dex */
    public enum Binder implements TargetMethodAnnotationDrivenBinder.ParameterBinder<Default> {
        INSTANCE;
        
        private static final MethodDescription.InDefinedShape PROXY_TYPE;
        private static final MethodDescription.InDefinedShape SERIALIZABLE_PROXY;

        /* loaded from: classes.dex */
        public interface TypeLocator {

            /* loaded from: classes.dex */
            public enum ForParameterType implements TypeLocator {
                INSTANCE;

                @Override // net.bytebuddy.implementation.bind.annotation.Default.Binder.TypeLocator
                public TypeDescription resolve(TypeDescription.Generic generic) {
                    return generic.asErasure();
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForType implements TypeLocator {
                private final TypeDescription typeDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForType) obj).typeDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                }

                /* renamed from: of */
                public static TypeLocator m15004of(TypeDescription typeDescription) {
                    if (typeDescription.represents(Void.TYPE)) {
                        return ForParameterType.INSTANCE;
                    }
                    if (typeDescription.isInterface()) {
                        return new ForType(typeDescription);
                    }
                    throw new IllegalStateException("Cannot assign proxy to " + typeDescription);
                }

                @Override // net.bytebuddy.implementation.bind.annotation.Default.Binder.TypeLocator
                public TypeDescription resolve(TypeDescription.Generic generic) {
                    if (this.typeDescription.isAssignableTo(generic.asErasure())) {
                        return this.typeDescription;
                    }
                    throw new IllegalStateException("Impossible to assign " + this.typeDescription + " to parameter of type " + generic);
                }

                public ForType(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }
            }

            TypeDescription resolve(TypeDescription.Generic generic);
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public Class<Default> getHandledType() {
            return Default.class;
        }

        static {
            MethodList<MethodDescription.InDefinedShape> declaredMethods = TypeDescription.ForLoadedType.m15196of(Default.class).getDeclaredMethods();
            SERIALIZABLE_PROXY = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("serializableProxy")).getOnly();
            PROXY_TYPE = (MethodDescription.InDefinedShape) declaredMethods.filter(ElementMatchers.named("proxyType")).getOnly();
        }

        @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
        public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<Default> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
            TypeDescription resolve = TypeLocator.ForType.m15004of((TypeDescription) loadable.getValue(PROXY_TYPE).resolve(TypeDescription.class)).resolve(parameterDescription.getType());
            if (resolve.isInterface()) {
                if (!methodDescription.isStatic() && target.getInstrumentedType().getInterfaces().asErasures().contains(resolve)) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(new TypeProxy.ForDefaultMethod(resolve, target, ((Boolean) loadable.getValue(SERIALIZABLE_PROXY).resolve(Boolean.class)).booleanValue()));
                }
                return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
            }
            throw new IllegalStateException(parameterDescription + " uses the @Default annotation on an invalid type");
        }
    }

    Class<?> proxyType() default void.class;

    boolean serializableProxy() default false;
}
