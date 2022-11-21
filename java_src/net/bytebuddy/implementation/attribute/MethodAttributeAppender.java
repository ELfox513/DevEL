package net.bytebuddy.implementation.attribute;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.attribute.AnnotationAppender;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public interface MethodAttributeAppender {

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Compound implements MethodAttributeAppender {
        private final List<MethodAttributeAppender> methodAttributeAppenders;

        public Compound(MethodAttributeAppender... methodAttributeAppenderArr) {
            this(Arrays.asList(methodAttributeAppenderArr));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.methodAttributeAppenders.equals(((Compound) obj).methodAttributeAppenders);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.methodAttributeAppenders.hashCode();
        }

        public Compound(List<? extends MethodAttributeAppender> list) {
            this.methodAttributeAppenders = new ArrayList();
            for (MethodAttributeAppender methodAttributeAppender : list) {
                if (methodAttributeAppender instanceof Compound) {
                    this.methodAttributeAppenders.addAll(((Compound) methodAttributeAppender).methodAttributeAppenders);
                } else if (!(methodAttributeAppender instanceof NoOp)) {
                    this.methodAttributeAppenders.add(methodAttributeAppender);
                }
            }
        }

        @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender
        public void apply(MethodVisitor methodVisitor, MethodDescription methodDescription, AnnotationValueFilter annotationValueFilter) {
            for (MethodAttributeAppender methodAttributeAppender : this.methodAttributeAppenders) {
                methodAttributeAppender.apply(methodVisitor, methodDescription, annotationValueFilter);
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Explicit implements MethodAttributeAppender, Factory {
        private final List<? extends AnnotationDescription> annotations;
        private final Target target;

        /* loaded from: classes.dex */
        public interface Target {

            /* loaded from: classes.dex */
            public enum OnMethod implements Target {
                INSTANCE;

                @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender.Explicit.Target
                public AnnotationAppender.Target make(MethodVisitor methodVisitor, MethodDescription methodDescription) {
                    return new AnnotationAppender.Target.OnMethod(methodVisitor);
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OnMethodParameter implements Target {
                private final int parameterIndex;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.parameterIndex == ((OnMethodParameter) obj).parameterIndex;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.parameterIndex;
                }

                @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender.Explicit.Target
                public AnnotationAppender.Target make(MethodVisitor methodVisitor, MethodDescription methodDescription) {
                    if (this.parameterIndex < methodDescription.getParameters().size()) {
                        return new AnnotationAppender.Target.OnMethodParameter(methodVisitor, this.parameterIndex);
                    }
                    throw new IllegalArgumentException("Method " + methodDescription + " has less then " + this.parameterIndex + " parameters");
                }

                public OnMethodParameter(int i) {
                    this.parameterIndex = i;
                }
            }

            AnnotationAppender.Target make(MethodVisitor methodVisitor, MethodDescription methodDescription);
        }

        public Explicit(int i, List<? extends AnnotationDescription> list) {
            this(new Target.OnMethodParameter(i), list);
        }

        /* renamed from: of */
        public static Factory m15015of(MethodDescription methodDescription) {
            return new Factory.Compound(ofMethodAnnotations(methodDescription), ofParameterAnnotations(methodDescription));
        }

        public static Factory ofMethodAnnotations(MethodDescription methodDescription) {
            return new Explicit(methodDescription.getDeclaredAnnotations());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Explicit explicit = (Explicit) obj;
                return this.target.equals(explicit.target) && this.annotations.equals(explicit.annotations);
            }
            return false;
        }

        public int hashCode() {
            return (((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + this.annotations.hashCode();
        }

        @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender.Factory
        public MethodAttributeAppender make(TypeDescription typeDescription) {
            return this;
        }

        public Explicit(List<? extends AnnotationDescription> list) {
            this(Target.OnMethod.INSTANCE, list);
        }

        @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender
        public void apply(MethodVisitor methodVisitor, MethodDescription methodDescription, AnnotationValueFilter annotationValueFilter) {
            AnnotationAppender annotationAppender = new AnnotationAppender.Default(this.target.make(methodVisitor, methodDescription));
            for (AnnotationDescription annotationDescription : this.annotations) {
                annotationAppender = annotationAppender.append(annotationDescription, annotationValueFilter);
            }
        }

        public Explicit(Target target, List<? extends AnnotationDescription> list) {
            this.target = target;
            this.annotations = list;
        }

        public static Factory ofParameterAnnotations(MethodDescription methodDescription) {
            ParameterList<?> parameters = methodDescription.getParameters();
            ArrayList arrayList = new ArrayList(parameters.size());
            Iterator<T> it = parameters.iterator();
            while (it.hasNext()) {
                ParameterDescription parameterDescription = (ParameterDescription) it.next();
                arrayList.add(new Explicit(parameterDescription.getIndex(), parameterDescription.getDeclaredAnnotations()));
            }
            return new Factory.Compound(arrayList);
        }
    }

    /* loaded from: classes.dex */
    public interface Factory {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Compound implements Factory {
            private final List<Factory> factories;

            public Compound(Factory... factoryArr) {
                this(Arrays.asList(factoryArr));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.factories.equals(((Compound) obj).factories);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.factories.hashCode();
            }

            public Compound(List<? extends Factory> list) {
                this.factories = new ArrayList();
                for (Factory factory : list) {
                    if (factory instanceof Compound) {
                        this.factories.addAll(((Compound) factory).factories);
                    } else if (!(factory instanceof NoOp)) {
                        this.factories.add(factory);
                    }
                }
            }

            @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender.Factory
            public MethodAttributeAppender make(TypeDescription typeDescription) {
                ArrayList arrayList = new ArrayList(this.factories.size());
                for (Factory factory : this.factories) {
                    arrayList.add(factory.make(typeDescription));
                }
                return new Compound(arrayList);
            }
        }

        MethodAttributeAppender make(TypeDescription typeDescription);
    }

    /* loaded from: classes.dex */
    public enum ForInstrumentedMethod implements MethodAttributeAppender, Factory {
        EXCLUDING_RECEIVER { // from class: net.bytebuddy.implementation.attribute.MethodAttributeAppender.ForInstrumentedMethod.1
            @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender.ForInstrumentedMethod
            public AnnotationAppender appendReceiver(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter, MethodDescription methodDescription) {
                return annotationAppender;
            }
        },
        INCLUDING_RECEIVER { // from class: net.bytebuddy.implementation.attribute.MethodAttributeAppender.ForInstrumentedMethod.2
            @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender.ForInstrumentedMethod
            public AnnotationAppender appendReceiver(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter, MethodDescription methodDescription) {
                TypeDescription.Generic receiverType = methodDescription.getReceiverType();
                if (receiverType != null) {
                    return (AnnotationAppender) receiverType.accept(AnnotationAppender.ForTypeAnnotations.ofReceiverType(annotationAppender, annotationValueFilter));
                }
                return annotationAppender;
            }
        };

        public abstract AnnotationAppender appendReceiver(AnnotationAppender annotationAppender, AnnotationValueFilter annotationValueFilter, MethodDescription methodDescription);

        @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender.Factory
        public MethodAttributeAppender make(TypeDescription typeDescription) {
            return this;
        }

        @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender
        public void apply(MethodVisitor methodVisitor, MethodDescription methodDescription, AnnotationValueFilter annotationValueFilter) {
            int i = 0;
            AnnotationAppender ofTypeVariable = AnnotationAppender.ForTypeAnnotations.ofTypeVariable((AnnotationAppender) methodDescription.getReturnType().accept(AnnotationAppender.ForTypeAnnotations.ofMethodReturnType(new AnnotationAppender.Default(new AnnotationAppender.Target.OnMethod(methodVisitor)), annotationValueFilter)), annotationValueFilter, false, methodDescription.getTypeVariables());
            for (AnnotationDescription annotationDescription : methodDescription.getDeclaredAnnotations().filter(ElementMatchers.not(ElementMatchers.annotationType(ElementMatchers.nameStartsWith("jdk.internal."))))) {
                ofTypeVariable = ofTypeVariable.append(annotationDescription, annotationValueFilter);
            }
            Iterator<T> it = methodDescription.getParameters().iterator();
            while (it.hasNext()) {
                ParameterDescription parameterDescription = (ParameterDescription) it.next();
                AnnotationAppender annotationAppender = (AnnotationAppender) parameterDescription.getType().accept(AnnotationAppender.ForTypeAnnotations.ofMethodParameterType(new AnnotationAppender.Default(new AnnotationAppender.Target.OnMethodParameter(methodVisitor, parameterDescription.getIndex())), annotationValueFilter, parameterDescription.getIndex()));
                for (AnnotationDescription annotationDescription2 : parameterDescription.getDeclaredAnnotations()) {
                    annotationAppender = annotationAppender.append(annotationDescription2, annotationValueFilter);
                }
            }
            AnnotationAppender appendReceiver = appendReceiver(ofTypeVariable, annotationValueFilter, methodDescription);
            for (TypeDescription.Generic generic : methodDescription.getExceptionTypes()) {
                appendReceiver = (AnnotationAppender) generic.accept(AnnotationAppender.ForTypeAnnotations.ofExceptionType(appendReceiver, annotationValueFilter, i));
                i++;
            }
        }
    }

    /* loaded from: classes.dex */
    public enum NoOp implements MethodAttributeAppender, Factory {
        INSTANCE;

        @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender
        public void apply(MethodVisitor methodVisitor, MethodDescription methodDescription, AnnotationValueFilter annotationValueFilter) {
        }

        @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender.Factory
        public MethodAttributeAppender make(TypeDescription typeDescription) {
            return this;
        }
    }

    void apply(MethodVisitor methodVisitor, MethodDescription methodDescription, AnnotationValueFilter annotationValueFilter);

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForReceiverType implements MethodAttributeAppender, Factory {
        private final TypeDescription.Generic receiverType;

        @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender
        public void apply(MethodVisitor methodVisitor, MethodDescription methodDescription, AnnotationValueFilter annotationValueFilter) {
            this.receiverType.accept(AnnotationAppender.ForTypeAnnotations.ofReceiverType(new AnnotationAppender.Default(new AnnotationAppender.Target.OnMethod(methodVisitor)), annotationValueFilter));
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.receiverType.equals(((ForReceiverType) obj).receiverType);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.receiverType.hashCode();
        }

        @Override // net.bytebuddy.implementation.attribute.MethodAttributeAppender.Factory
        public MethodAttributeAppender make(TypeDescription typeDescription) {
            return this;
        }

        public ForReceiverType(TypeDescription.Generic generic) {
            this.receiverType = generic;
        }
    }
}
