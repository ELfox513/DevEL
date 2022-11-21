package net.bytebuddy.implementation.bind;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bind.annotation.BindingPriority;
import net.bytebuddy.implementation.bytecode.Removal;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.nullability.MaybeNull;
/* loaded from: classes.dex */
public interface MethodDelegationBinder {

    /* renamed from: net.bytebuddy.implementation.bind.MethodDelegationBinder$1 */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C50131 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19151a;

        static {
            int[] iArr = new int[AmbiguityResolver.Resolution.values().length];
            f19151a = iArr;
            try {
                iArr[AmbiguityResolver.Resolution.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19151a[AmbiguityResolver.Resolution.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19151a[AmbiguityResolver.Resolution.AMBIGUOUS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19151a[AmbiguityResolver.Resolution.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @SuppressFBWarnings(justification = "Safe initialization is implied.", value = {"IC_SUPERCLASS_USES_SUBCLASS_DURING_INITIALIZATION"})
    /* loaded from: classes.dex */
    public interface AmbiguityResolver {
        public static final AmbiguityResolver DEFAULT = new Compound(BindingPriority.Resolver.INSTANCE, DeclaringTypeResolver.INSTANCE, ArgumentTypeResolver.INSTANCE, MethodNameEqualityResolver.INSTANCE, ParameterLengthResolver.INSTANCE);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Compound implements AmbiguityResolver {
            private final List<AmbiguityResolver> ambiguityResolvers;

            public Compound(AmbiguityResolver... ambiguityResolverArr) {
                this(Arrays.asList(ambiguityResolverArr));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.ambiguityResolvers.equals(((Compound) obj).ambiguityResolvers);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.ambiguityResolvers.hashCode();
            }

            public Compound(List<? extends AmbiguityResolver> list) {
                this.ambiguityResolvers = new ArrayList();
                for (AmbiguityResolver ambiguityResolver : list) {
                    if (ambiguityResolver instanceof Compound) {
                        this.ambiguityResolvers.addAll(((Compound) ambiguityResolver).ambiguityResolvers);
                    } else if (!(ambiguityResolver instanceof NoOp)) {
                        this.ambiguityResolvers.add(ambiguityResolver);
                    }
                }
            }

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.AmbiguityResolver
            public Resolution resolve(MethodDescription methodDescription, MethodBinding methodBinding, MethodBinding methodBinding2) {
                Resolution resolution = Resolution.UNKNOWN;
                Iterator<AmbiguityResolver> it = this.ambiguityResolvers.iterator();
                while (resolution.isUnresolved() && it.hasNext()) {
                    resolution = it.next().resolve(methodDescription, methodBinding, methodBinding2);
                }
                return resolution;
            }
        }

        /* loaded from: classes.dex */
        public enum NoOp implements AmbiguityResolver {
            INSTANCE;

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.AmbiguityResolver
            public Resolution resolve(MethodDescription methodDescription, MethodBinding methodBinding, MethodBinding methodBinding2) {
                return Resolution.UNKNOWN;
            }
        }

        /* loaded from: classes.dex */
        public enum Resolution {
            UNKNOWN(true),
            LEFT(false),
            RIGHT(false),
            AMBIGUOUS(true);
            
            private final boolean unresolved;

            public boolean isUnresolved() {
                return this.unresolved;
            }

            public Resolution merge(Resolution resolution) {
                int i = C50131.f19151a[ordinal()];
                if (i != 1 && i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            return resolution;
                        }
                        throw new AssertionError();
                    }
                    return AMBIGUOUS;
                } else if (resolution != UNKNOWN && resolution != this) {
                    return AMBIGUOUS;
                } else {
                    return this;
                }
            }

            Resolution(boolean z) {
                this.unresolved = z;
            }
        }

        Resolution resolve(MethodDescription methodDescription, MethodBinding methodBinding, MethodBinding methodBinding2);

        /* loaded from: classes.dex */
        public enum Directional implements AmbiguityResolver {
            LEFT(true),
            RIGHT(false);
            
            private final boolean left;

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.AmbiguityResolver
            public Resolution resolve(MethodDescription methodDescription, MethodBinding methodBinding, MethodBinding methodBinding2) {
                return this.left ? Resolution.LEFT : Resolution.RIGHT;
            }

            Directional(boolean z) {
                this.left = z;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface BindingResolver {

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class StreamWriting implements BindingResolver {
            private final BindingResolver delegate;
            private final PrintStream printStream;

            public static BindingResolver toSystemError() {
                return toSystemError(Default.INSTANCE);
            }

            public static BindingResolver toSystemOut() {
                return toSystemOut(Default.INSTANCE);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    StreamWriting streamWriting = (StreamWriting) obj;
                    return this.delegate.equals(streamWriting.delegate) && this.printStream.equals(streamWriting.printStream);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.delegate.hashCode()) * 31) + this.printStream.hashCode();
            }

            public static BindingResolver toSystemError(BindingResolver bindingResolver) {
                return new StreamWriting(bindingResolver, System.err);
            }

            public static BindingResolver toSystemOut(BindingResolver bindingResolver) {
                return new StreamWriting(bindingResolver, System.out);
            }

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.BindingResolver
            public MethodBinding resolve(AmbiguityResolver ambiguityResolver, MethodDescription methodDescription, List<MethodBinding> list) {
                MethodBinding resolve = this.delegate.resolve(ambiguityResolver, methodDescription, list);
                PrintStream printStream = this.printStream;
                printStream.println("Binding " + methodDescription + " as delegation to " + resolve.getTarget());
                return resolve;
            }

            public StreamWriting(BindingResolver bindingResolver, PrintStream printStream) {
                this.delegate = bindingResolver;
                this.printStream = printStream;
            }
        }

        MethodBinding resolve(AmbiguityResolver ambiguityResolver, MethodDescription methodDescription, List<MethodBinding> list);

        /* loaded from: classes.dex */
        public enum Default implements BindingResolver {
            INSTANCE;
            
            private static final int LEFT = 0;
            private static final int ONLY = 0;
            private static final int RIGHT = 1;

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.BindingResolver
            public MethodBinding resolve(AmbiguityResolver ambiguityResolver, MethodDescription methodDescription, List<MethodBinding> list) {
                return doResolve(ambiguityResolver, methodDescription, new ArrayList(list));
            }

            private MethodBinding doResolve(AmbiguityResolver ambiguityResolver, MethodDescription methodDescription, List<MethodBinding> list) {
                int size = list.size();
                if (size != 1) {
                    if (size != 2) {
                        MethodBinding methodBinding = list.get(0);
                        MethodBinding methodBinding2 = list.get(1);
                        int[] iArr = C50131.f19151a;
                        int i = iArr[ambiguityResolver.resolve(methodDescription, methodBinding, methodBinding2).ordinal()];
                        if (i != 1) {
                            if (i != 2) {
                                if (i != 3 && i != 4) {
                                    throw new IllegalStateException("Unexpected amount of targets: " + list.size());
                                }
                                list.remove(1);
                                list.remove(0);
                                MethodBinding doResolve = doResolve(ambiguityResolver, methodDescription, list);
                                int i2 = iArr[ambiguityResolver.resolve(methodDescription, methodBinding, doResolve).merge(ambiguityResolver.resolve(methodDescription, methodBinding2, doResolve)).ordinal()];
                                if (i2 != 1) {
                                    if (i2 != 2) {
                                        if (i2 != 3 && i2 != 4) {
                                            throw new AssertionError();
                                        }
                                    } else {
                                        return doResolve;
                                    }
                                }
                                throw new IllegalArgumentException("Cannot resolve ambiguous delegation of " + methodDescription + " to " + methodBinding.getTarget() + " or " + methodBinding2.getTarget());
                            }
                            list.remove(0);
                            return doResolve(ambiguityResolver, methodDescription, list);
                        }
                        list.remove(1);
                        return doResolve(ambiguityResolver, methodDescription, list);
                    }
                    MethodBinding methodBinding3 = list.get(0);
                    MethodBinding methodBinding4 = list.get(1);
                    int i3 = C50131.f19151a[ambiguityResolver.resolve(methodDescription, methodBinding3, methodBinding4).ordinal()];
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 3 && i3 != 4) {
                                throw new AssertionError();
                            }
                            throw new IllegalArgumentException("Cannot resolve ambiguous delegation of " + methodDescription + " to " + methodBinding3.getTarget() + " or " + methodBinding4.getTarget());
                        }
                        return methodBinding4;
                    }
                    return methodBinding3;
                }
                return list.get(0);
            }
        }

        /* loaded from: classes.dex */
        public enum Unique implements BindingResolver {
            INSTANCE;
            
            private static final int ONLY = 0;

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.BindingResolver
            public MethodBinding resolve(AmbiguityResolver ambiguityResolver, MethodDescription methodDescription, List<MethodBinding> list) {
                if (list.size() == 1) {
                    return list.get(0);
                }
                throw new IllegalStateException(methodDescription + " allowed for more than one binding: " + list);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface MethodBinding extends StackManipulation {

        /* loaded from: classes.dex */
        public static class Builder {
            private final MethodDescription candidate;
            private final MethodInvoker methodInvoker;
            private final List<StackManipulation> parameterStackManipulations;
            private final LinkedHashMap<Object, Integer> registeredTargetIndices = new LinkedHashMap<>();
            private int nextParameterIndex = 0;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Build implements MethodBinding {
                private final StackManipulation methodInvocation;
                private final List<StackManipulation> parameterStackManipulations;
                private final Map<?, Integer> registeredTargetIndices;
                private final MethodDescription target;
                private final StackManipulation terminatingStackManipulation;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Build build = (Build) obj;
                        return this.target.equals(build.target) && this.registeredTargetIndices.equals(build.registeredTargetIndices) && this.methodInvocation.equals(build.methodInvocation) && this.parameterStackManipulations.equals(build.parameterStackManipulations) && this.terminatingStackManipulation.equals(build.terminatingStackManipulation);
                    }
                    return false;
                }

                @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.MethodBinding
                public MethodDescription getTarget() {
                    return this.target;
                }

                @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.MethodBinding
                @MaybeNull
                public Integer getTargetParameterIndex(Object obj) {
                    return this.registeredTargetIndices.get(obj);
                }

                public int hashCode() {
                    return (((((((((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + this.registeredTargetIndices.hashCode()) * 31) + this.methodInvocation.hashCode()) * 31) + this.parameterStackManipulations.hashCode()) * 31) + this.terminatingStackManipulation.hashCode();
                }

                @Override // net.bytebuddy.implementation.bytecode.StackManipulation
                public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                    return new StackManipulation.Compound(CompoundList.m14776of((List) this.parameterStackManipulations, Arrays.asList(this.methodInvocation, this.terminatingStackManipulation))).apply(methodVisitor, context);
                }

                @Override // net.bytebuddy.implementation.bytecode.StackManipulation
                public boolean isValid() {
                    boolean z;
                    if (this.methodInvocation.isValid() && this.terminatingStackManipulation.isValid()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Iterator<StackManipulation> it = this.parameterStackManipulations.iterator();
                    while (z && it.hasNext()) {
                        z = it.next().isValid();
                    }
                    return z;
                }

                public Build(MethodDescription methodDescription, Map<?, Integer> map, StackManipulation stackManipulation, List<StackManipulation> list, StackManipulation stackManipulation2) {
                    this.target = methodDescription;
                    this.registeredTargetIndices = new HashMap(map);
                    this.methodInvocation = stackManipulation;
                    this.parameterStackManipulations = new ArrayList(list);
                    this.terminatingStackManipulation = stackManipulation2;
                }
            }

            public boolean append(ParameterBinding<?> parameterBinding) {
                this.parameterStackManipulations.add(parameterBinding);
                LinkedHashMap<Object, Integer> linkedHashMap = this.registeredTargetIndices;
                Object identificationToken = parameterBinding.getIdentificationToken();
                int i = this.nextParameterIndex;
                this.nextParameterIndex = i + 1;
                if (linkedHashMap.put(identificationToken, Integer.valueOf(i)) == null) {
                    return true;
                }
                return false;
            }

            public MethodBinding build(StackManipulation stackManipulation) {
                if (this.candidate.getParameters().size() == this.nextParameterIndex) {
                    MethodDescription methodDescription = this.candidate;
                    return new Build(methodDescription, this.registeredTargetIndices, this.methodInvoker.invoke(methodDescription), this.parameterStackManipulations, stackManipulation);
                }
                throw new IllegalStateException("The number of parameters bound does not equal the target's number of parameters");
            }

            public Builder(MethodInvoker methodInvoker, MethodDescription methodDescription) {
                this.methodInvoker = methodInvoker;
                this.candidate = methodDescription;
                this.parameterStackManipulations = new ArrayList(methodDescription.getParameters().size());
            }
        }

        /* loaded from: classes.dex */
        public enum Illegal implements MethodBinding {
            INSTANCE;

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                throw new IllegalStateException("Cannot delegate to an unbound method");
            }

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.MethodBinding
            public MethodDescription getTarget() {
                throw new IllegalStateException("Method is not bound");
            }

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.MethodBinding
            public Integer getTargetParameterIndex(Object obj) {
                throw new IllegalStateException("Method is not bound");
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public boolean isValid() {
                return false;
            }
        }

        MethodDescription getTarget();

        @MaybeNull
        Integer getTargetParameterIndex(Object obj);
    }

    /* loaded from: classes.dex */
    public interface MethodInvoker {

        /* loaded from: classes.dex */
        public enum Simple implements MethodInvoker {
            INSTANCE;

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.MethodInvoker
            public StackManipulation invoke(MethodDescription methodDescription) {
                return MethodInvocation.invoke(methodDescription);
            }
        }

        StackManipulation invoke(MethodDescription methodDescription);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Virtual implements MethodInvoker {
            private final TypeDescription typeDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((Virtual) obj).typeDescription);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
            }

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.MethodInvoker
            public StackManipulation invoke(MethodDescription methodDescription) {
                return MethodInvocation.invoke(methodDescription).virtual(this.typeDescription);
            }

            public Virtual(TypeDescription typeDescription) {
                this.typeDescription = typeDescription;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface ParameterBinding<T> extends StackManipulation {

        /* loaded from: classes.dex */
        public enum Illegal implements ParameterBinding<Void> {
            INSTANCE;

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                throw new IllegalStateException("An illegal parameter binding must not be applied");
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public boolean isValid() {
                return false;
            }

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.ParameterBinding
            public Void getIdentificationToken() {
                throw new IllegalStateException("An illegal binding does not define an identification token");
            }
        }

        T getIdentificationToken();

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Anonymous implements ParameterBinding<Object> {
            @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.IGNORE)
            private final Object anonymousToken = new Object();
            private final StackManipulation delegate;

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                return this.delegate.apply(methodVisitor, context);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.delegate.equals(((Anonymous) obj).delegate);
            }

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.ParameterBinding
            public Object getIdentificationToken() {
                return this.anonymousToken;
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.delegate.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public boolean isValid() {
                return this.delegate.isValid();
            }

            public Anonymous(StackManipulation stackManipulation) {
                this.delegate = stackManipulation;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Unique<T> implements ParameterBinding<T> {
            private final StackManipulation delegate;
            private final T identificationToken;

            /* renamed from: of */
            public static <S> Unique<S> m15005of(StackManipulation stackManipulation, S s) {
                return new Unique<>(stackManipulation, s);
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
                return this.delegate.apply(methodVisitor, context);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Unique unique = (Unique) obj;
                    return this.identificationToken.equals(unique.identificationToken) && this.delegate.equals(unique.delegate);
                }
                return false;
            }

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.ParameterBinding
            public T getIdentificationToken() {
                return this.identificationToken;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.identificationToken.hashCode()) * 31) + this.delegate.hashCode();
            }

            @Override // net.bytebuddy.implementation.bytecode.StackManipulation
            public boolean isValid() {
                return this.delegate.isValid();
            }

            public Unique(StackManipulation stackManipulation, T t) {
                this.delegate = stackManipulation;
                this.identificationToken = t;
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Processor implements Record {
        private final AmbiguityResolver ambiguityResolver;
        private final BindingResolver bindingResolver;
        private final List<? extends Record> records;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Processor processor = (Processor) obj;
                return this.records.equals(processor.records) && this.ambiguityResolver.equals(processor.ambiguityResolver) && this.bindingResolver.equals(processor.bindingResolver);
            }
            return false;
        }

        public int hashCode() {
            return (((((getClass().hashCode() * 31) + this.records.hashCode()) * 31) + this.ambiguityResolver.hashCode()) * 31) + this.bindingResolver.hashCode();
        }

        @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.Record
        public MethodBinding bind(Implementation.Target target, MethodDescription methodDescription, TerminationHandler terminationHandler, MethodInvoker methodInvoker, Assigner assigner) {
            ArrayList arrayList = new ArrayList();
            for (Record record : this.records) {
                MethodBinding bind = record.bind(target, methodDescription, terminationHandler, methodInvoker, assigner);
                if (bind.isValid()) {
                    arrayList.add(bind);
                }
            }
            if (!arrayList.isEmpty()) {
                return this.bindingResolver.resolve(this.ambiguityResolver, methodDescription, arrayList);
            }
            throw new IllegalArgumentException("None of " + this.records + " allows for delegation from " + methodDescription);
        }

        public Processor(List<? extends Record> list, AmbiguityResolver ambiguityResolver, BindingResolver bindingResolver) {
            this.records = list;
            this.ambiguityResolver = ambiguityResolver;
            this.bindingResolver = bindingResolver;
        }
    }

    /* loaded from: classes.dex */
    public interface Record {

        /* loaded from: classes.dex */
        public enum Illegal implements Record {
            INSTANCE;

            @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.Record
            public MethodBinding bind(Implementation.Target target, MethodDescription methodDescription, TerminationHandler terminationHandler, MethodInvoker methodInvoker, Assigner assigner) {
                return MethodBinding.Illegal.INSTANCE;
            }
        }

        MethodBinding bind(Implementation.Target target, MethodDescription methodDescription, TerminationHandler terminationHandler, MethodInvoker methodInvoker, Assigner assigner);
    }

    /* loaded from: classes.dex */
    public interface TerminationHandler {

        /* loaded from: classes.dex */
        public enum Default implements TerminationHandler {
            RETURNING { // from class: net.bytebuddy.implementation.bind.MethodDelegationBinder.TerminationHandler.Default.1
                @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.TerminationHandler
                public StackManipulation resolve(Assigner assigner, Assigner.Typing typing, MethodDescription methodDescription, MethodDescription methodDescription2) {
                    TypeDescription.Generic returnType;
                    StackManipulation[] stackManipulationArr = new StackManipulation[2];
                    if (methodDescription2.isConstructor()) {
                        returnType = methodDescription2.getDeclaringType().asGenericType();
                    } else {
                        returnType = methodDescription2.getReturnType();
                    }
                    stackManipulationArr[0] = assigner.assign(returnType, methodDescription.getReturnType(), typing);
                    stackManipulationArr[1] = MethodReturn.m14940of(methodDescription.getReturnType());
                    return new StackManipulation.Compound(stackManipulationArr);
                }
            },
            DROPPING { // from class: net.bytebuddy.implementation.bind.MethodDelegationBinder.TerminationHandler.Default.2
                @Override // net.bytebuddy.implementation.bind.MethodDelegationBinder.TerminationHandler
                public StackManipulation resolve(Assigner assigner, Assigner.Typing typing, MethodDescription methodDescription, MethodDescription methodDescription2) {
                    TypeDefinition returnType;
                    if (methodDescription2.isConstructor()) {
                        returnType = methodDescription2.getDeclaringType();
                    } else {
                        returnType = methodDescription2.getReturnType();
                    }
                    return Removal.m14979of(returnType);
                }
            };

            /* synthetic */ Default(C50131 c50131) {
                this();
            }
        }

        StackManipulation resolve(Assigner assigner, Assigner.Typing typing, MethodDescription methodDescription, MethodDescription methodDescription2);
    }

    Record compile(MethodDescription methodDescription);
}
