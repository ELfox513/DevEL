package net.bytebuddy.implementation.bind.annotation;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.annotation.AnnotationDescription;
import net.bytebuddy.description.enumeration.EnumerationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.scaffold.FieldLocator;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import net.bytebuddy.implementation.bind.annotation.AllArguments;
import net.bytebuddy.implementation.bind.annotation.Argument;
import net.bytebuddy.implementation.bind.annotation.Default;
import net.bytebuddy.implementation.bind.annotation.DefaultCall;
import net.bytebuddy.implementation.bind.annotation.DefaultMethod;
import net.bytebuddy.implementation.bind.annotation.Empty;
import net.bytebuddy.implementation.bind.annotation.FieldValue;
import net.bytebuddy.implementation.bind.annotation.IgnoreForBinding;
import net.bytebuddy.implementation.bind.annotation.Origin;
import net.bytebuddy.implementation.bind.annotation.RuntimeType;
import net.bytebuddy.implementation.bind.annotation.StubValue;
import net.bytebuddy.implementation.bind.annotation.Super;
import net.bytebuddy.implementation.bind.annotation.SuperCall;
import net.bytebuddy.implementation.bind.annotation.SuperMethod;
import net.bytebuddy.implementation.bind.annotation.This;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.constant.ClassConstant;
import net.bytebuddy.implementation.bytecode.constant.DefaultValue;
import net.bytebuddy.implementation.bytecode.constant.DoubleConstant;
import net.bytebuddy.implementation.bytecode.constant.FloatConstant;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.implementation.bytecode.constant.JavaConstantValue;
import net.bytebuddy.implementation.bytecode.constant.LongConstant;
import net.bytebuddy.implementation.bytecode.constant.TextConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class TargetMethodAnnotationDrivenBinder implements MethodDelegationBinder {
    private final DelegationProcessor delegationProcessor;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class DelegationProcessor {
        private final Map<? extends TypeDescription, ? extends ParameterBinder<?>> parameterBinders;

        /* loaded from: classes.dex */
        public interface Handler {

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Bound<T extends Annotation> implements Handler {
                private final AnnotationDescription.Loadable<T> annotation;
                private final ParameterBinder<T> parameterBinder;
                private final ParameterDescription target;
                private final Assigner.Typing typing;

                @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.DelegationProcessor.Handler
                public MethodDelegationBinder.ParameterBinding<?> bind(MethodDescription methodDescription, Implementation.Target target, Assigner assigner) {
                    return this.parameterBinder.bind(this.annotation, methodDescription, this.target, target, assigner, this.typing);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Bound bound = (Bound) obj;
                        return this.typing.equals(bound.typing) && this.target.equals(bound.target) && this.parameterBinder.equals(bound.parameterBinder) && this.annotation.equals(bound.annotation);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + this.parameterBinder.hashCode()) * 31) + this.annotation.hashCode()) * 31) + this.typing.hashCode();
                }

                @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.DelegationProcessor.Handler
                public boolean isBound() {
                    return true;
                }

                /* renamed from: of */
                public static Handler m14982of(ParameterDescription parameterDescription, ParameterBinder<?> parameterBinder, AnnotationDescription annotationDescription, Assigner.Typing typing) {
                    return new Bound(parameterDescription, parameterBinder, annotationDescription.prepare(parameterBinder.getHandledType()), typing);
                }

                public Bound(ParameterDescription parameterDescription, ParameterBinder<T> parameterBinder, AnnotationDescription.Loadable<T> loadable, Assigner.Typing typing) {
                    this.target = parameterDescription;
                    this.parameterBinder = parameterBinder;
                    this.annotation = loadable;
                    this.typing = typing;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Unbound implements Handler {
                private final ParameterDescription target;
                private final Assigner.Typing typing;

                @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.DelegationProcessor.Handler
                public MethodDelegationBinder.ParameterBinding<?> bind(MethodDescription methodDescription, Implementation.Target target, Assigner assigner) {
                    return Argument.Binder.INSTANCE.bind(AnnotationDescription.ForLoadedAnnotation.m15237of(new DefaultArgument(this.target.getIndex())), methodDescription, this.target, target, assigner, this.typing);
                }

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Unbound unbound = (Unbound) obj;
                        return this.typing.equals(unbound.typing) && this.target.equals(unbound.target);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + this.typing.hashCode();
                }

                @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.DelegationProcessor.Handler
                public boolean isBound() {
                    return false;
                }

                /* loaded from: classes.dex */
                public static class DefaultArgument implements Argument {
                    private static final String BINDING_MECHANIC = "bindingMechanic";
                    private static final String VALUE = "value";
                    private final int parameterIndex;

                    @Override // java.lang.annotation.Annotation
                    public Class<Argument> annotationType() {
                        return Argument.class;
                    }

                    @Override // net.bytebuddy.implementation.bind.annotation.Argument
                    public Argument.BindingMechanic bindingMechanic() {
                        return Argument.BindingMechanic.UNIQUE;
                    }

                    @Override // java.lang.annotation.Annotation
                    public boolean equals(@MaybeNull Object obj) {
                        return this == obj || ((obj instanceof Argument) && this.parameterIndex == ((Argument) obj).value());
                    }

                    @Override // java.lang.annotation.Annotation
                    public int hashCode() {
                        return (Argument.BindingMechanic.UNIQUE.hashCode() ^ 1957906263) + (this.parameterIndex ^ 1335633679);
                    }

                    @Override // java.lang.annotation.Annotation
                    public String toString() {
                        return "@" + Argument.class.getName() + "(bindingMechanic=" + Argument.BindingMechanic.UNIQUE + ", value=" + this.parameterIndex + ")";
                    }

                    @Override // net.bytebuddy.implementation.bind.annotation.Argument
                    public int value() {
                        return this.parameterIndex;
                    }

                    public DefaultArgument(int i) {
                        this.parameterIndex = i;
                    }
                }

                public Unbound(ParameterDescription parameterDescription, Assigner.Typing typing) {
                    this.target = parameterDescription;
                    this.typing = typing;
                }
            }

            MethodDelegationBinder.ParameterBinding<?> bind(MethodDescription methodDescription, Implementation.Target target, Assigner assigner);

            boolean isBound();
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.parameterBinders.equals(((DelegationProcessor) obj).parameterBinders);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.parameterBinders.hashCode();
        }

        /* renamed from: of */
        public static DelegationProcessor m14983of(List<? extends ParameterBinder<?>> list) {
            HashMap hashMap = new HashMap();
            for (ParameterBinder<?> parameterBinder : list) {
                if (hashMap.put(TypeDescription.ForLoadedType.m15196of(parameterBinder.getHandledType()), parameterBinder) != null) {
                    throw new IllegalArgumentException("Attempt to bind two handlers to " + parameterBinder.getHandledType());
                }
            }
            return new DelegationProcessor(hashMap);
        }

        public DelegationProcessor(Map<? extends TypeDescription, ? extends ParameterBinder<?>> map) {
            this.parameterBinders = map;
        }

        public Handler prepare(ParameterDescription parameterDescription) {
            Assigner.Typing check = RuntimeType.Verifier.check(parameterDescription);
            Handler unbound = new Handler.Unbound(parameterDescription, check);
            for (AnnotationDescription annotationDescription : parameterDescription.getDeclaredAnnotations()) {
                ParameterBinder<?> parameterBinder = this.parameterBinders.get(annotationDescription.getAnnotationType());
                if (parameterBinder != null && unbound.isBound()) {
                    throw new IllegalStateException("Ambiguous binding for parameter annotated with two handled annotation types");
                }
                if (parameterBinder != null) {
                    unbound = Handler.Bound.m14982of(parameterDescription, parameterBinder, annotationDescription, check);
                }
            }
            return unbound;
        }
    }

    @SuppressFBWarnings(justification = "Safe initialization is implied.", value = {"IC_SUPERCLASS_USES_SUBCLASS_DURING_INITIALIZATION"})
    /* loaded from: classes.dex */
    public interface ParameterBinder<T extends Annotation> {
        public static final List<ParameterBinder<?>> DEFAULTS = Collections.unmodifiableList(Arrays.asList(Argument.Binder.INSTANCE, AllArguments.Binder.INSTANCE, Origin.Binder.INSTANCE, This.Binder.INSTANCE, Super.Binder.INSTANCE, Default.Binder.INSTANCE, SuperCall.Binder.INSTANCE, DefaultCall.Binder.INSTANCE, SuperMethod.Binder.INSTANCE, DefaultMethod.Binder.INSTANCE, FieldValue.Binder.INSTANCE, StubValue.Binder.INSTANCE, Empty.Binder.INSTANCE));

        /* loaded from: classes.dex */
        public static abstract class ForFixedValue<S extends Annotation> implements ParameterBinder<S> {
            @MaybeNull
            public abstract Object bind(AnnotationDescription.Loadable<S> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfConstant<U extends Annotation> extends ForFixedValue<U> {
                private final Class<U> type;
                @MaybeNull
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.REVERSE_NULLABILITY)
                private final Object value;

                /* renamed from: of */
                public static <V extends Annotation> ParameterBinder<V> m14981of(Class<V> cls, @MaybeNull Object obj) {
                    return new OfConstant(cls, obj);
                }

                @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder.ForFixedValue
                @MaybeNull
                public Object bind(AnnotationDescription.Loadable<U> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription) {
                    return this.value;
                }

                /* JADX WARN: Removed duplicated region for block: B:22:0x0032 A[RETURN] */
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
                        java.lang.Class<U extends java.lang.annotation.Annotation> r2 = r4.type
                        net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder$ParameterBinder$ForFixedValue$OfConstant r5 = (net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder.ForFixedValue.OfConstant) r5
                        java.lang.Class<U extends java.lang.annotation.Annotation> r3 = r5.type
                        boolean r2 = r2.equals(r3)
                        if (r2 != 0) goto L20
                        return r1
                    L20:
                        java.lang.Object r2 = r4.value
                        java.lang.Object r5 = r5.value
                        if (r5 == 0) goto L2f
                        if (r2 == 0) goto L31
                        boolean r5 = r2.equals(r5)
                        if (r5 != 0) goto L32
                        return r1
                    L2f:
                        if (r2 == 0) goto L32
                    L31:
                        return r1
                    L32:
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder.ForFixedValue.OfConstant.equals(java.lang.Object):boolean");
                }

                @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
                public Class<U> getHandledType() {
                    return this.type;
                }

                public int hashCode() {
                    int hashCode = ((getClass().hashCode() * 31) + this.type.hashCode()) * 31;
                    Object obj = this.value;
                    return obj != null ? hashCode + obj.hashCode() : hashCode;
                }

                public OfConstant(Class<U> cls, @MaybeNull Object obj) {
                    this.type = cls;
                    this.value = obj;
                }
            }

            @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
            public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<S> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
                StackManipulation javaConstantValue;
                TypeDescription typeDescription;
                JavaConstantValue javaConstantValue2;
                TypeDescription typeStub;
                StackManipulation stackManipulation;
                Object bind = bind(loadable, methodDescription, parameterDescription);
                if (bind == null) {
                    return new MethodDelegationBinder.ParameterBinding.Anonymous(DefaultValue.m14957of(parameterDescription.getType()));
                }
                if (bind instanceof Boolean) {
                    stackManipulation = IntegerConstant.forValue(((Boolean) bind).booleanValue());
                    typeStub = TypeDescription.ForLoadedType.m15196of(Boolean.TYPE);
                } else if (bind instanceof Byte) {
                    stackManipulation = IntegerConstant.forValue(((Byte) bind).byteValue());
                    typeStub = TypeDescription.ForLoadedType.m15196of(Byte.TYPE);
                } else if (bind instanceof Short) {
                    stackManipulation = IntegerConstant.forValue(((Short) bind).shortValue());
                    typeStub = TypeDescription.ForLoadedType.m15196of(Short.TYPE);
                } else if (bind instanceof Character) {
                    stackManipulation = IntegerConstant.forValue(((Character) bind).charValue());
                    typeStub = TypeDescription.ForLoadedType.m15196of(Character.TYPE);
                } else if (bind instanceof Integer) {
                    stackManipulation = IntegerConstant.forValue(((Integer) bind).intValue());
                    typeStub = TypeDescription.ForLoadedType.m15196of(Integer.TYPE);
                } else if (bind instanceof Long) {
                    stackManipulation = LongConstant.forValue(((Long) bind).longValue());
                    typeStub = TypeDescription.ForLoadedType.m15196of(Long.TYPE);
                } else if (bind instanceof Float) {
                    stackManipulation = FloatConstant.forValue(((Float) bind).floatValue());
                    typeStub = TypeDescription.ForLoadedType.m15196of(Float.TYPE);
                } else if (bind instanceof Double) {
                    stackManipulation = DoubleConstant.forValue(((Double) bind).doubleValue());
                    typeStub = TypeDescription.ForLoadedType.m15196of(Double.TYPE);
                } else {
                    if (bind instanceof String) {
                        javaConstantValue = new TextConstant((String) bind);
                        typeDescription = TypeDescription.STRING;
                    } else if (bind instanceof Class) {
                        stackManipulation = ClassConstant.m14958of(TypeDescription.ForLoadedType.m15196of((Class) bind));
                        typeStub = TypeDescription.CLASS;
                    } else if (bind instanceof TypeDescription) {
                        stackManipulation = ClassConstant.m14958of((TypeDescription) bind);
                        typeStub = TypeDescription.CLASS;
                    } else if (bind instanceof Enum) {
                        Enum r5 = (Enum) bind;
                        javaConstantValue = FieldAccess.forEnumeration(new EnumerationDescription.ForLoadedEnumeration(r5));
                        typeDescription = TypeDescription.ForLoadedType.m15196of(r5.getDeclaringClass());
                    } else if (bind instanceof EnumerationDescription) {
                        EnumerationDescription enumerationDescription = (EnumerationDescription) bind;
                        javaConstantValue = FieldAccess.forEnumeration(enumerationDescription);
                        typeDescription = enumerationDescription.getEnumerationType();
                    } else {
                        JavaType javaType = JavaType.METHOD_HANDLE;
                        if (javaType.isInstance(bind)) {
                            javaConstantValue2 = new JavaConstantValue(JavaConstant.MethodHandle.ofLoaded(bind));
                            typeStub = javaType.getTypeStub();
                        } else if (bind instanceof JavaConstant.MethodHandle) {
                            javaConstantValue2 = new JavaConstantValue((JavaConstant.MethodHandle) bind);
                            typeStub = javaType.getTypeStub();
                        } else if (JavaType.METHOD_TYPE.isInstance(bind)) {
                            javaConstantValue2 = new JavaConstantValue(JavaConstant.MethodType.ofLoaded(bind));
                            typeStub = javaType.getTypeStub();
                        } else if (bind instanceof JavaConstant) {
                            JavaConstant javaConstant = (JavaConstant) bind;
                            javaConstantValue = new JavaConstantValue(javaConstant);
                            typeDescription = javaConstant.getTypeDescription();
                        } else {
                            throw new IllegalStateException("Not able to save in class's constant pool: " + bind);
                        }
                        stackManipulation = javaConstantValue2;
                    }
                    StackManipulation stackManipulation2 = javaConstantValue;
                    typeStub = typeDescription;
                    stackManipulation = stackManipulation2;
                }
                return new MethodDelegationBinder.ParameterBinding.Anonymous(new StackManipulation.Compound(stackManipulation, assigner.assign(typeStub.asGenericType(), parameterDescription.getType(), typing)));
            }
        }

        MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<T> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing);

        Class<T> getHandledType();

        /* loaded from: classes.dex */
        public static abstract class ForFieldBinding<S extends Annotation> implements ParameterBinder<S> {
            public static final String BEAN_PROPERTY = "";

            public abstract MethodDelegationBinder.ParameterBinding<?> bind(FieldDescription fieldDescription, AnnotationDescription.Loadable<S> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner);

            public abstract TypeDescription declaringType(AnnotationDescription.Loadable<S> loadable);

            public abstract String fieldName(AnnotationDescription.Loadable<S> loadable);

            private static FieldLocator.Resolution resolveAccessor(FieldLocator fieldLocator, MethodDescription methodDescription) {
                String substring;
                int i = 3;
                if (ElementMatchers.isSetter().matches(methodDescription)) {
                    substring = methodDescription.getInternalName().substring(3);
                } else if (ElementMatchers.isGetter().matches(methodDescription)) {
                    String internalName = methodDescription.getInternalName();
                    if (methodDescription.getInternalName().startsWith("is")) {
                        i = 2;
                    }
                    substring = internalName.substring(i);
                } else {
                    return FieldLocator.Resolution.Illegal.INSTANCE;
                }
                return fieldLocator.locate(Character.toLowerCase(substring.charAt(0)) + substring.substring(1));
            }

            @Override // net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.ParameterBinder
            public MethodDelegationBinder.ParameterBinding<?> bind(AnnotationDescription.Loadable<S> loadable, MethodDescription methodDescription, ParameterDescription parameterDescription, Implementation.Target target, Assigner assigner, Assigner.Typing typing) {
                FieldLocator forExactType;
                FieldLocator.Resolution locate;
                if (!declaringType(loadable).represents(Void.TYPE)) {
                    if (!declaringType(loadable).isPrimitive() && !declaringType(loadable).isArray()) {
                        if (!target.getInstrumentedType().isAssignableTo(declaringType(loadable))) {
                            return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
                        }
                    } else {
                        throw new IllegalStateException("A primitive type or array type cannot declare a field: " + methodDescription);
                    }
                }
                if (declaringType(loadable).represents(Void.TYPE)) {
                    forExactType = new FieldLocator.ForClassHierarchy(target.getInstrumentedType());
                } else {
                    forExactType = new FieldLocator.ForExactType(declaringType(loadable), target.getInstrumentedType());
                }
                if (fieldName(loadable).equals("")) {
                    locate = resolveAccessor(forExactType, methodDescription);
                } else {
                    locate = forExactType.locate(fieldName(loadable));
                }
                if (locate.isResolved() && (!methodDescription.isStatic() || locate.getField().isStatic())) {
                    return bind(locate.getField(), loadable, methodDescription, parameterDescription, target, assigner);
                }
                return MethodDelegationBinder.ParameterBinding.Illegal.INSTANCE;
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Record implements MethodDelegationBinder.Record {
        private final MethodDescription candidate;
        private final List<DelegationProcessor.Handler> handlers;
        private final Assigner.Typing typing;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Record record = (Record) obj;
                return this.typing.equals(record.typing) && this.candidate.equals(record.candidate) && this.handlers.equals(record.handlers);
            }
            return false;
        }

        public int hashCode() {
            return (((((getClass().hashCode() * 31) + this.candidate.hashCode()) * 31) + this.handlers.hashCode()) * 31) + this.typing.hashCode();
        }

        public String toString() {
            return this.candidate.toString();
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0033  */
        @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.Record
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public net.bytebuddy.implementation.bind.MethodDelegationBinder.MethodBinding bind(net.bytebuddy.implementation.Implementation.Target r4, net.bytebuddy.description.method.MethodDescription r5, net.bytebuddy.implementation.bind.MethodDelegationBinder.TerminationHandler r6, net.bytebuddy.implementation.bind.MethodDelegationBinder.MethodInvoker r7, net.bytebuddy.implementation.bytecode.assign.Assigner r8) {
            /*
                r3 = this;
                net.bytebuddy.description.method.MethodDescription r0 = r3.candidate
                net.bytebuddy.description.type.TypeDescription r1 = r4.getInstrumentedType()
                boolean r0 = r0.isAccessibleTo(r1)
                if (r0 != 0) goto Lf
                net.bytebuddy.implementation.bind.MethodDelegationBinder$MethodBinding$Illegal r4 = net.bytebuddy.implementation.bind.MethodDelegationBinder.MethodBinding.Illegal.INSTANCE
                return r4
            Lf:
                net.bytebuddy.implementation.bytecode.assign.Assigner$Typing r0 = r3.typing
                net.bytebuddy.description.method.MethodDescription r1 = r3.candidate
                net.bytebuddy.implementation.bytecode.StackManipulation r6 = r6.resolve(r8, r0, r5, r1)
                boolean r0 = r6.isValid()
                if (r0 != 0) goto L20
                net.bytebuddy.implementation.bind.MethodDelegationBinder$MethodBinding$Illegal r4 = net.bytebuddy.implementation.bind.MethodDelegationBinder.MethodBinding.Illegal.INSTANCE
                return r4
            L20:
                net.bytebuddy.implementation.bind.MethodDelegationBinder$MethodBinding$Builder r0 = new net.bytebuddy.implementation.bind.MethodDelegationBinder$MethodBinding$Builder
                net.bytebuddy.description.method.MethodDescription r1 = r3.candidate
                r0.<init>(r7, r1)
                java.util.List<net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler> r7 = r3.handlers
                java.util.Iterator r7 = r7.iterator()
            L2d:
                boolean r1 = r7.hasNext()
                if (r1 == 0) goto L4c
                java.lang.Object r1 = r7.next()
                net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder$DelegationProcessor$Handler r1 = (net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.DelegationProcessor.Handler) r1
                net.bytebuddy.implementation.bind.MethodDelegationBinder$ParameterBinding r1 = r1.bind(r5, r4, r8)
                boolean r2 = r1.isValid()
                if (r2 == 0) goto L49
                boolean r1 = r0.append(r1)
                if (r1 != 0) goto L2d
            L49:
                net.bytebuddy.implementation.bind.MethodDelegationBinder$MethodBinding$Illegal r4 = net.bytebuddy.implementation.bind.MethodDelegationBinder.MethodBinding.Illegal.INSTANCE
                return r4
            L4c:
                net.bytebuddy.implementation.bind.MethodDelegationBinder$MethodBinding r4 = r0.build(r6)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder.Record.bind(net.bytebuddy.implementation.Implementation$Target, net.bytebuddy.description.method.MethodDescription, net.bytebuddy.implementation.bind.MethodDelegationBinder$TerminationHandler, net.bytebuddy.implementation.bind.MethodDelegationBinder$MethodInvoker, net.bytebuddy.implementation.bytecode.assign.Assigner):net.bytebuddy.implementation.bind.MethodDelegationBinder$MethodBinding");
        }

        public Record(MethodDescription methodDescription, List<DelegationProcessor.Handler> list, Assigner.Typing typing) {
            this.candidate = methodDescription;
            this.handlers = list;
            this.typing = typing;
        }
    }

    /* renamed from: of */
    public static MethodDelegationBinder m14984of(List<? extends ParameterBinder<?>> list) {
        return new TargetMethodAnnotationDrivenBinder(DelegationProcessor.m14983of(list));
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.delegationProcessor.equals(((TargetMethodAnnotationDrivenBinder) obj).delegationProcessor);
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.delegationProcessor.hashCode();
    }

    public TargetMethodAnnotationDrivenBinder(DelegationProcessor delegationProcessor) {
        this.delegationProcessor = delegationProcessor;
    }

    @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder
    public MethodDelegationBinder.Record compile(MethodDescription methodDescription) {
        if (IgnoreForBinding.Verifier.check(methodDescription)) {
            return MethodDelegationBinder.Record.Illegal.INSTANCE;
        }
        ArrayList arrayList = new ArrayList(methodDescription.getParameters().size());
        Iterator<T> it = methodDescription.getParameters().iterator();
        while (it.hasNext()) {
            arrayList.add(this.delegationProcessor.prepare((ParameterDescription) it.next()));
        }
        return new Record(methodDescription, arrayList, RuntimeType.Verifier.check(methodDescription));
    }
}
