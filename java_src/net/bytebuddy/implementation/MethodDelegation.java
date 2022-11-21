package net.bytebuddy.implementation;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.MethodList;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.scaffold.FieldLocator;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bind.MethodDelegationBinder;
import net.bytebuddy.implementation.bind.annotation.TargetMethodAnnotationDrivenBinder;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.TypeCreation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class MethodDelegation implements Implementation.Composable {
    private final MethodDelegationBinder.AmbiguityResolver ambiguityResolver;
    private final Assigner assigner;
    private final MethodDelegationBinder.BindingResolver bindingResolver;
    private final ImplementationDelegate implementationDelegate;
    private final List<TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> parameterBinders;
    private final MethodDelegationBinder.TerminationHandler terminationHandler;

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class Appender implements ByteCodeAppender {
        private final Assigner assigner;
        private final ImplementationDelegate.Compiled compiled;
        private final Implementation.Target implementationTarget;
        private final MethodDelegationBinder.Record processor;
        private final MethodDelegationBinder.TerminationHandler terminationHandler;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Appender appender = (Appender) obj;
                return this.implementationTarget.equals(appender.implementationTarget) && this.processor.equals(appender.processor) && this.terminationHandler.equals(appender.terminationHandler) && this.assigner.equals(appender.assigner) && this.compiled.equals(appender.compiled);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((getClass().hashCode() * 31) + this.implementationTarget.hashCode()) * 31) + this.processor.hashCode()) * 31) + this.terminationHandler.hashCode()) * 31) + this.assigner.hashCode()) * 31) + this.compiled.hashCode();
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            return new ByteCodeAppender.Size(new StackManipulation.Compound(this.compiled.prepare(methodDescription), this.processor.bind(this.implementationTarget, methodDescription, this.terminationHandler, this.compiled.invoke(), this.assigner)).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
        }

        public Appender(Implementation.Target target, MethodDelegationBinder.Record record, MethodDelegationBinder.TerminationHandler terminationHandler, Assigner assigner, ImplementationDelegate.Compiled compiled) {
            this.implementationTarget = target;
            this.processor = record;
            this.terminationHandler = terminationHandler;
            this.assigner = assigner;
            this.compiled = compiled;
        }
    }

    /* loaded from: classes.dex */
    public interface ImplementationDelegate extends InstrumentedType.Prepareable {
        public static final String FIELD_NAME_PREFIX = "delegate";

        /* loaded from: classes.dex */
        public interface Compiled {
            List<MethodDelegationBinder.Record> getRecords();

            MethodDelegationBinder.MethodInvoker invoke();

            StackManipulation prepare(MethodDescription methodDescription);

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForConstruction implements Compiled {
                private final List<MethodDelegationBinder.Record> records;
                private final TypeDescription typeDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForConstruction forConstruction = (ForConstruction) obj;
                        return this.typeDescription.equals(forConstruction.typeDescription) && this.records.equals(forConstruction.records);
                    }
                    return false;
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.Compiled
                public List<MethodDelegationBinder.Record> getRecords() {
                    return this.records;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.typeDescription.hashCode()) * 31) + this.records.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.Compiled
                public MethodDelegationBinder.MethodInvoker invoke() {
                    return MethodDelegationBinder.MethodInvoker.Simple.INSTANCE;
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.Compiled
                public StackManipulation prepare(MethodDescription methodDescription) {
                    return new StackManipulation.Compound(TypeCreation.m14974of(this.typeDescription), Duplication.SINGLE);
                }

                public ForConstruction(TypeDescription typeDescription, List<MethodDelegationBinder.Record> list) {
                    this.typeDescription = typeDescription;
                    this.records = list;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForField implements Compiled {
                private final FieldDescription fieldDescription;
                private final List<MethodDelegationBinder.Record> records;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForField forField = (ForField) obj;
                        return this.fieldDescription.equals(forField.fieldDescription) && this.records.equals(forField.records);
                    }
                    return false;
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.Compiled
                public List<MethodDelegationBinder.Record> getRecords() {
                    return this.records;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.fieldDescription.hashCode()) * 31) + this.records.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.Compiled
                public MethodDelegationBinder.MethodInvoker invoke() {
                    return new MethodDelegationBinder.MethodInvoker.Virtual(this.fieldDescription.getType().asErasure());
                }

                public ForField(FieldDescription fieldDescription, List<MethodDelegationBinder.Record> list) {
                    this.fieldDescription = fieldDescription;
                    this.records = list;
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.Compiled
                public StackManipulation prepare(MethodDescription methodDescription) {
                    StackManipulation loadThis;
                    if (methodDescription.isStatic() && !this.fieldDescription.isStatic()) {
                        throw new IllegalStateException("Cannot read " + this.fieldDescription + " from " + methodDescription);
                    }
                    StackManipulation[] stackManipulationArr = new StackManipulation[2];
                    if (this.fieldDescription.isStatic()) {
                        loadThis = StackManipulation.Trivial.INSTANCE;
                    } else {
                        loadThis = MethodVariableAccess.loadThis();
                    }
                    stackManipulationArr[0] = loadThis;
                    stackManipulationArr[1] = FieldAccess.forField(this.fieldDescription).read();
                    return new StackManipulation.Compound(stackManipulationArr);
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForMethodReturn implements Compiled {
                private final MethodDescription methodDescription;
                private final List<MethodDelegationBinder.Record> records;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        ForMethodReturn forMethodReturn = (ForMethodReturn) obj;
                        return this.methodDescription.equals(forMethodReturn.methodDescription) && this.records.equals(forMethodReturn.records);
                    }
                    return false;
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.Compiled
                public List<MethodDelegationBinder.Record> getRecords() {
                    return this.records;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.methodDescription.hashCode()) * 31) + this.records.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.Compiled
                public MethodDelegationBinder.MethodInvoker invoke() {
                    return new MethodDelegationBinder.MethodInvoker.Virtual(this.methodDescription.getReturnType().asErasure());
                }

                public ForMethodReturn(MethodDescription methodDescription, List<MethodDelegationBinder.Record> list) {
                    this.methodDescription = methodDescription;
                    this.records = list;
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.Compiled
                public StackManipulation prepare(MethodDescription methodDescription) {
                    StackManipulation loadThis;
                    if (methodDescription.isStatic() && !this.methodDescription.isStatic()) {
                        throw new IllegalStateException("Cannot invoke " + this.methodDescription + " from " + methodDescription);
                    }
                    StackManipulation[] stackManipulationArr = new StackManipulation[2];
                    if (this.methodDescription.isStatic()) {
                        loadThis = StackManipulation.Trivial.INSTANCE;
                    } else {
                        loadThis = MethodVariableAccess.loadThis();
                    }
                    stackManipulationArr[0] = loadThis;
                    stackManipulationArr[1] = MethodInvocation.invoke(this.methodDescription);
                    return new StackManipulation.Compound(stackManipulationArr);
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ForStaticCall implements Compiled {
                private final List<MethodDelegationBinder.Record> records;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.records.equals(((ForStaticCall) obj).records);
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.Compiled
                public List<MethodDelegationBinder.Record> getRecords() {
                    return this.records;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.records.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.Compiled
                public MethodDelegationBinder.MethodInvoker invoke() {
                    return MethodDelegationBinder.MethodInvoker.Simple.INSTANCE;
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.Compiled
                public StackManipulation prepare(MethodDescription methodDescription) {
                    return StackManipulation.Trivial.INSTANCE;
                }

                public ForStaticCall(List<MethodDelegationBinder.Record> list) {
                    this.records = list;
                }
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForConstruction implements ImplementationDelegate {
            private final List<MethodDelegationBinder.Record> records;
            private final TypeDescription typeDescription;

            @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate
            public Compiled compile(TypeDescription typeDescription) {
                return new Compiled.ForConstruction(this.typeDescription, this.records);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForConstruction forConstruction = (ForConstruction) obj;
                    return this.typeDescription.equals(forConstruction.typeDescription) && this.records.equals(forConstruction.records);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.typeDescription.hashCode()) * 31) + this.records.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            /* renamed from: of */
            public static ImplementationDelegate m15040of(TypeDescription typeDescription, MethodList<?> methodList, MethodDelegationBinder methodDelegationBinder) {
                ArrayList arrayList = new ArrayList(methodList.size());
                Iterator<T> it = methodList.iterator();
                while (it.hasNext()) {
                    arrayList.add(methodDelegationBinder.compile((MethodDescription) it.next()));
                }
                return new ForConstruction(typeDescription, arrayList);
            }

            public ForConstruction(TypeDescription typeDescription, List<MethodDelegationBinder.Record> list) {
                this.typeDescription = typeDescription;
                this.records = list;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForMethodReturn implements ImplementationDelegate {
            private final ElementMatcher<? super MethodDescription> matcher;
            private final MethodGraph.Compiler methodGraphCompiler;
            private final String name;
            private final List<? extends TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> parameterBinders;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForMethodReturn forMethodReturn = (ForMethodReturn) obj;
                    return this.name.equals(forMethodReturn.name) && this.methodGraphCompiler.equals(forMethodReturn.methodGraphCompiler) && this.parameterBinders.equals(forMethodReturn.parameterBinders) && this.matcher.equals(forMethodReturn.matcher);
                }
                return false;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + this.methodGraphCompiler.hashCode()) * 31) + this.parameterBinders.hashCode()) * 31) + this.matcher.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate
            public Compiled compile(TypeDescription typeDescription) {
                MethodList filter = new MethodList.Explicit(CompoundList.m14776of(typeDescription.getDeclaredMethods().filter(ElementMatchers.isStatic().mo14830or(ElementMatchers.isPrivate())), (List) this.methodGraphCompiler.compile((TypeDefinition) typeDescription).listNodes().asMethodList())).filter(ElementMatchers.named(this.name).and(ElementMatchers.takesArguments(0)).and(ElementMatchers.not(ElementMatchers.returns(ElementMatchers.isPrimitive().mo14830or(ElementMatchers.isArray())))));
                if (filter.size() == 1) {
                    if (((MethodDescription) filter.getOnly()).getReturnType().asErasure().isVisibleTo(typeDescription)) {
                        MethodList<MethodDescription> filter2 = this.methodGraphCompiler.compile(((MethodDescription) filter.getOnly()).getReturnType(), typeDescription).listNodes().asMethodList().filter(this.matcher);
                        ArrayList arrayList = new ArrayList(filter2.size());
                        MethodDelegationBinder m14984of = TargetMethodAnnotationDrivenBinder.m14984of(this.parameterBinders);
                        for (MethodDescription methodDescription : filter2) {
                            arrayList.add(m14984of.compile(methodDescription));
                        }
                        return new Compiled.ForMethodReturn((MethodDescription) filter.get(0), arrayList);
                    }
                    throw new IllegalStateException(filter.getOnly() + " is not visible to " + typeDescription);
                }
                throw new IllegalStateException(typeDescription + " does not define method without arguments with name " + this.name + ": " + filter);
            }

            public ForMethodReturn(String str, MethodGraph.Compiler compiler, List<? extends TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> list, ElementMatcher<? super MethodDescription> elementMatcher) {
                this.name = str;
                this.methodGraphCompiler = compiler;
                this.parameterBinders = list;
                this.matcher = elementMatcher;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForStaticMethod implements ImplementationDelegate {
            private final List<MethodDelegationBinder.Record> records;

            @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate
            public Compiled compile(TypeDescription typeDescription) {
                return new Compiled.ForStaticCall(this.records);
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.records.equals(((ForStaticMethod) obj).records);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.records.hashCode();
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            /* renamed from: of */
            public static ImplementationDelegate m15039of(MethodList<?> methodList, MethodDelegationBinder methodDelegationBinder) {
                ArrayList arrayList = new ArrayList(methodList.size());
                Iterator<T> it = methodList.iterator();
                while (it.hasNext()) {
                    arrayList.add(methodDelegationBinder.compile((MethodDescription) it.next()));
                }
                return new ForStaticMethod(arrayList);
            }

            public ForStaticMethod(List<MethodDelegationBinder.Record> list) {
                this.records = list;
            }
        }

        Compiled compile(TypeDescription typeDescription);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static abstract class ForField implements ImplementationDelegate {
            public final String fieldName;
            public final ElementMatcher<? super MethodDescription> matcher;
            public final MethodGraph.Compiler methodGraphCompiler;
            public final List<? extends TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> parameterBinders;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class WithInstance extends ForField {
                private final TypeDescription.Generic fieldType;
                private final Object target;

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.ForField
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            WithInstance withInstance = (WithInstance) obj;
                            return this.target.equals(withInstance.target) && this.fieldType.equals(withInstance.fieldType);
                        }
                        return false;
                    }
                    return false;
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.ForField
                public int hashCode() {
                    return (((super.hashCode() * 31) + this.target.hashCode()) * 31) + this.fieldType.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType.withAuxiliaryField(new FieldDescription.Token(this.fieldName, 4169, this.fieldType), this.target);
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.ForField
                public FieldDescription resolve(TypeDescription typeDescription) {
                    if (this.fieldType.asErasure().isVisibleTo(typeDescription)) {
                        return (FieldDescription) typeDescription.getDeclaredFields().filter(ElementMatchers.named(this.fieldName).and(ElementMatchers.fieldType(this.fieldType.asErasure()))).getOnly();
                    }
                    throw new IllegalStateException(this.fieldType + " is not visible to " + typeDescription);
                }

                public WithInstance(String str, MethodGraph.Compiler compiler, List<? extends TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> list, ElementMatcher<? super MethodDescription> elementMatcher, Object obj, TypeDescription.Generic generic) {
                    super(str, compiler, list, elementMatcher);
                    this.target = obj;
                    this.fieldType = generic;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class WithLookup extends ForField {
                private final FieldLocator.Factory fieldLocatorFactory;

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.ForField
                public boolean equals(@MaybeNull Object obj) {
                    if (super.equals(obj)) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.fieldLocatorFactory.equals(((WithLookup) obj).fieldLocatorFactory);
                    }
                    return false;
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.ForField
                public int hashCode() {
                    return (super.hashCode() * 31) + this.fieldLocatorFactory.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate.ForField
                public FieldDescription resolve(TypeDescription typeDescription) {
                    FieldLocator.Resolution locate = this.fieldLocatorFactory.make(typeDescription).locate(this.fieldName);
                    if (locate.isResolved()) {
                        return locate.getField();
                    }
                    throw new IllegalStateException("Could not locate " + this.fieldName + " on " + typeDescription);
                }

                public WithLookup(String str, MethodGraph.Compiler compiler, List<? extends TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> list, ElementMatcher<? super MethodDescription> elementMatcher, FieldLocator.Factory factory) {
                    super(str, compiler, list, elementMatcher);
                    this.fieldLocatorFactory = factory;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForField forField = (ForField) obj;
                    return this.fieldName.equals(forField.fieldName) && this.methodGraphCompiler.equals(forField.methodGraphCompiler) && this.parameterBinders.equals(forField.parameterBinders) && this.matcher.equals(forField.matcher);
                }
                return false;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.fieldName.hashCode()) * 31) + this.methodGraphCompiler.hashCode()) * 31) + this.parameterBinders.hashCode()) * 31) + this.matcher.hashCode();
            }

            public abstract FieldDescription resolve(TypeDescription typeDescription);

            public ForField(String str, MethodGraph.Compiler compiler, List<? extends TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> list, ElementMatcher<? super MethodDescription> elementMatcher) {
                this.fieldName = str;
                this.methodGraphCompiler = compiler;
                this.parameterBinders = list;
                this.matcher = elementMatcher;
            }

            @Override // net.bytebuddy.implementation.MethodDelegation.ImplementationDelegate
            public Compiled compile(TypeDescription typeDescription) {
                FieldDescription resolve = resolve(typeDescription);
                if (resolve.getType().asErasure().isVisibleTo(typeDescription)) {
                    MethodList<MethodDescription> filter = this.methodGraphCompiler.compile(resolve.getType(), typeDescription).listNodes().asMethodList().filter(this.matcher);
                    ArrayList arrayList = new ArrayList(filter.size());
                    MethodDelegationBinder m14984of = TargetMethodAnnotationDrivenBinder.m14984of(this.parameterBinders);
                    for (MethodDescription methodDescription : filter) {
                        arrayList.add(m14984of.compile(methodDescription));
                    }
                    return new Compiled.ForField(resolve, arrayList);
                }
                throw new IllegalStateException(resolve + " is not visible to " + typeDescription);
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class WithCustomProperties {
        private final MethodDelegationBinder.AmbiguityResolver ambiguityResolver;
        private final MethodDelegationBinder.BindingResolver bindingResolver;
        private final ElementMatcher<? super MethodDescription> matcher;
        private final List<TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> parameterBinders;

        public WithCustomProperties(MethodDelegationBinder.AmbiguityResolver ambiguityResolver, List<TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> list) {
            this(ambiguityResolver, list, MethodDelegationBinder.BindingResolver.Default.INSTANCE, ElementMatchers.any());
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                WithCustomProperties withCustomProperties = (WithCustomProperties) obj;
                return this.ambiguityResolver.equals(withCustomProperties.ambiguityResolver) && this.parameterBinders.equals(withCustomProperties.parameterBinders) && this.bindingResolver.equals(withCustomProperties.bindingResolver) && this.matcher.equals(withCustomProperties.matcher);
            }
            return false;
        }

        public WithCustomProperties filter(ElementMatcher<? super MethodDescription> elementMatcher) {
            return new WithCustomProperties(this.ambiguityResolver, this.parameterBinders, this.bindingResolver, new ElementMatcher.Junction.Conjunction(this.matcher, elementMatcher));
        }

        public int hashCode() {
            return (((((((getClass().hashCode() * 31) + this.ambiguityResolver.hashCode()) * 31) + this.parameterBinders.hashCode()) * 31) + this.bindingResolver.hashCode()) * 31) + this.matcher.hashCode();
        }

        /* renamed from: to */
        public MethodDelegation m15038to(Class<?> cls) {
            return m15025to(TypeDescription.ForLoadedType.m15196of(cls));
        }

        public MethodDelegation toConstructor(Class<?> cls) {
            return toConstructor(TypeDescription.ForLoadedType.m15196of(cls));
        }

        public MethodDelegation toField(String str) {
            return toField(str, FieldLocator.ForClassHierarchy.Factory.INSTANCE);
        }

        public MethodDelegation toMethodReturnOf(String str) {
            return toMethodReturnOf(str, MethodGraph.Compiler.DEFAULT);
        }

        public WithCustomProperties withBinders(TargetMethodAnnotationDrivenBinder.ParameterBinder<?>... parameterBinderArr) {
            return withBinders(Arrays.asList(parameterBinderArr));
        }

        public WithCustomProperties withBindingResolver(MethodDelegationBinder.BindingResolver bindingResolver) {
            return new WithCustomProperties(this.ambiguityResolver, this.parameterBinders, bindingResolver, this.matcher);
        }

        public WithCustomProperties withResolvers(MethodDelegationBinder.AmbiguityResolver... ambiguityResolverArr) {
            return withResolvers(Arrays.asList(ambiguityResolverArr));
        }

        private WithCustomProperties(MethodDelegationBinder.AmbiguityResolver ambiguityResolver, List<TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> list, MethodDelegationBinder.BindingResolver bindingResolver, ElementMatcher<? super MethodDescription> elementMatcher) {
            this.ambiguityResolver = ambiguityResolver;
            this.parameterBinders = list;
            this.bindingResolver = bindingResolver;
            this.matcher = elementMatcher;
        }

        /* renamed from: to */
        public MethodDelegation m15025to(TypeDescription typeDescription) {
            if (!typeDescription.isArray()) {
                if (!typeDescription.isPrimitive()) {
                    return new MethodDelegation(ImplementationDelegate.ForStaticMethod.m15039of(typeDescription.getDeclaredMethods().filter(ElementMatchers.isStatic().and(this.matcher)), TargetMethodAnnotationDrivenBinder.m14984of(this.parameterBinders)), this.parameterBinders, this.ambiguityResolver, this.bindingResolver);
                }
                throw new IllegalArgumentException("Cannot delegate to primitive " + typeDescription);
            }
            throw new IllegalArgumentException("Cannot delegate to array " + typeDescription);
        }

        public MethodDelegation toConstructor(TypeDescription typeDescription) {
            return new MethodDelegation(ImplementationDelegate.ForConstruction.m15040of(typeDescription, typeDescription.getDeclaredMethods().filter(ElementMatchers.isConstructor().and(this.matcher)), TargetMethodAnnotationDrivenBinder.m14984of(this.parameterBinders)), this.parameterBinders, this.ambiguityResolver, this.bindingResolver);
        }

        public MethodDelegation toField(String str, FieldLocator.Factory factory) {
            return toField(str, factory, MethodGraph.Compiler.DEFAULT);
        }

        public MethodDelegation toMethodReturnOf(String str, MethodGraph.Compiler compiler) {
            return new MethodDelegation(new ImplementationDelegate.ForMethodReturn(str, compiler, this.parameterBinders, this.matcher), this.parameterBinders, this.ambiguityResolver, this.bindingResolver);
        }

        public WithCustomProperties withBinders(List<? extends TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> list) {
            return new WithCustomProperties(this.ambiguityResolver, CompoundList.m14776of((List) this.parameterBinders, (List) list), this.bindingResolver, this.matcher);
        }

        public WithCustomProperties withResolvers(List<? extends MethodDelegationBinder.AmbiguityResolver> list) {
            return new WithCustomProperties(new MethodDelegationBinder.AmbiguityResolver.Compound(CompoundList.m14778of(this.ambiguityResolver, list)), this.parameterBinders, this.bindingResolver, this.matcher);
        }

        public MethodDelegation toField(String str, MethodGraph.Compiler compiler) {
            return toField(str, FieldLocator.ForClassHierarchy.Factory.INSTANCE, compiler);
        }

        public MethodDelegation toField(String str, FieldLocator.Factory factory, MethodGraph.Compiler compiler) {
            return new MethodDelegation(new ImplementationDelegate.ForField.WithLookup(str, compiler, this.parameterBinders, this.matcher, factory), this.parameterBinders, this.ambiguityResolver, this.bindingResolver);
        }

        /* renamed from: to */
        public MethodDelegation m15037to(Object obj) {
            return m15026to(obj, MethodGraph.Compiler.DEFAULT);
        }

        /* renamed from: to */
        public MethodDelegation m15026to(Object obj, MethodGraph.Compiler compiler) {
            return m15031to(obj, obj.getClass(), compiler);
        }

        /* renamed from: to */
        public MethodDelegation m15036to(Object obj, String str) {
            return m15035to(obj, str, MethodGraph.Compiler.DEFAULT);
        }

        /* renamed from: to */
        public MethodDelegation m15035to(Object obj, String str, MethodGraph.Compiler compiler) {
            return m15032to(obj, obj.getClass(), str, compiler);
        }

        /* renamed from: to */
        public MethodDelegation m15034to(Object obj, Type type) {
            return m15031to(obj, type, MethodGraph.Compiler.DEFAULT);
        }

        /* renamed from: to */
        public MethodDelegation m15031to(Object obj, Type type, MethodGraph.Compiler compiler) {
            return m15032to(obj, type, "delegate$" + RandomString.hashOf(obj), compiler);
        }

        /* renamed from: to */
        public MethodDelegation m15033to(Object obj, Type type, String str) {
            return m15032to(obj, type, str, MethodGraph.Compiler.DEFAULT);
        }

        /* renamed from: to */
        public MethodDelegation m15032to(Object obj, Type type, String str, MethodGraph.Compiler compiler) {
            return m15028to(obj, TypeDefinition.Sort.describe(type), str, compiler);
        }

        /* renamed from: to */
        public MethodDelegation m15030to(Object obj, TypeDefinition typeDefinition) {
            return m15027to(obj, typeDefinition, MethodGraph.Compiler.DEFAULT);
        }

        /* renamed from: to */
        public MethodDelegation m15027to(Object obj, TypeDefinition typeDefinition, MethodGraph.Compiler compiler) {
            return m15028to(obj, typeDefinition, "delegate$" + RandomString.hashOf(obj), compiler);
        }

        /* renamed from: to */
        public MethodDelegation m15029to(Object obj, TypeDefinition typeDefinition, String str) {
            return m15028to(obj, typeDefinition, str, MethodGraph.Compiler.DEFAULT);
        }

        /* renamed from: to */
        public MethodDelegation m15028to(Object obj, TypeDefinition typeDefinition, String str, MethodGraph.Compiler compiler) {
            if (typeDefinition.asErasure().isInstance(obj)) {
                return new MethodDelegation(new ImplementationDelegate.ForField.WithInstance(str, compiler, this.parameterBinders, this.matcher, obj, typeDefinition.asGenericType()), this.parameterBinders, this.ambiguityResolver, this.bindingResolver);
            }
            throw new IllegalArgumentException(obj + " is not an instance of " + typeDefinition);
        }
    }

    public MethodDelegation(ImplementationDelegate implementationDelegate, List<TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> list, MethodDelegationBinder.AmbiguityResolver ambiguityResolver, MethodDelegationBinder.BindingResolver bindingResolver) {
        this(implementationDelegate, list, ambiguityResolver, MethodDelegationBinder.TerminationHandler.Default.RETURNING, bindingResolver, Assigner.DEFAULT);
    }

    /* renamed from: to */
    public static MethodDelegation m15054to(Class<?> cls) {
        return withDefaultConfiguration().m15038to(cls);
    }

    public static MethodDelegation toConstructor(Class<?> cls) {
        return withDefaultConfiguration().toConstructor(cls);
    }

    public static MethodDelegation toField(String str) {
        return withDefaultConfiguration().toField(str);
    }

    public static MethodDelegation toMethodReturnOf(String str) {
        return withDefaultConfiguration().toMethodReturnOf(str);
    }

    public static WithCustomProperties withDefaultConfiguration() {
        return new WithCustomProperties(MethodDelegationBinder.AmbiguityResolver.DEFAULT, TargetMethodAnnotationDrivenBinder.ParameterBinder.DEFAULTS);
    }

    public static WithCustomProperties withEmptyConfiguration() {
        return new WithCustomProperties(MethodDelegationBinder.AmbiguityResolver.NoOp.INSTANCE, Collections.emptyList());
    }

    @Override // net.bytebuddy.implementation.Implementation.Composable
    public Implementation andThen(Implementation implementation) {
        return new Implementation.Compound(new MethodDelegation(this.implementationDelegate, this.parameterBinders, this.ambiguityResolver, MethodDelegationBinder.TerminationHandler.Default.DROPPING, this.bindingResolver, this.assigner), implementation);
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MethodDelegation methodDelegation = (MethodDelegation) obj;
            return this.implementationDelegate.equals(methodDelegation.implementationDelegate) && this.parameterBinders.equals(methodDelegation.parameterBinders) && this.ambiguityResolver.equals(methodDelegation.ambiguityResolver) && this.terminationHandler.equals(methodDelegation.terminationHandler) && this.bindingResolver.equals(methodDelegation.bindingResolver) && this.assigner.equals(methodDelegation.assigner);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((getClass().hashCode() * 31) + this.implementationDelegate.hashCode()) * 31) + this.parameterBinders.hashCode()) * 31) + this.ambiguityResolver.hashCode()) * 31) + this.terminationHandler.hashCode()) * 31) + this.bindingResolver.hashCode()) * 31) + this.assigner.hashCode();
    }

    @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
    public InstrumentedType prepare(InstrumentedType instrumentedType) {
        return this.implementationDelegate.prepare(instrumentedType);
    }

    public Implementation.Composable withAssigner(Assigner assigner) {
        return new MethodDelegation(this.implementationDelegate, this.parameterBinders, this.ambiguityResolver, this.terminationHandler, this.bindingResolver, assigner);
    }

    private MethodDelegation(ImplementationDelegate implementationDelegate, List<TargetMethodAnnotationDrivenBinder.ParameterBinder<?>> list, MethodDelegationBinder.AmbiguityResolver ambiguityResolver, MethodDelegationBinder.TerminationHandler terminationHandler, MethodDelegationBinder.BindingResolver bindingResolver, Assigner assigner) {
        this.implementationDelegate = implementationDelegate;
        this.parameterBinders = list;
        this.terminationHandler = terminationHandler;
        this.ambiguityResolver = ambiguityResolver;
        this.bindingResolver = bindingResolver;
        this.assigner = assigner;
    }

    /* renamed from: to */
    public static MethodDelegation m15041to(TypeDescription typeDescription) {
        return withDefaultConfiguration().m15025to(typeDescription);
    }

    public static MethodDelegation toConstructor(TypeDescription typeDescription) {
        return withDefaultConfiguration().toConstructor(typeDescription);
    }

    public static MethodDelegation toField(String str, FieldLocator.Factory factory) {
        return withDefaultConfiguration().toField(str, factory);
    }

    public static MethodDelegation toMethodReturnOf(String str, MethodGraph.Compiler compiler) {
        return withDefaultConfiguration().toMethodReturnOf(str, compiler);
    }

    @Override // net.bytebuddy.implementation.Implementation.Composable
    public Implementation.Composable andThen(Implementation.Composable composable) {
        return new Implementation.Compound.Composable(new MethodDelegation(this.implementationDelegate, this.parameterBinders, this.ambiguityResolver, MethodDelegationBinder.TerminationHandler.Default.DROPPING, this.bindingResolver, this.assigner), composable);
    }

    @Override // net.bytebuddy.implementation.Implementation
    public ByteCodeAppender appender(Implementation.Target target) {
        ImplementationDelegate.Compiled compile = this.implementationDelegate.compile(target.getInstrumentedType());
        return new Appender(target, new MethodDelegationBinder.Processor(compile.getRecords(), this.ambiguityResolver, this.bindingResolver), this.terminationHandler, this.assigner, compile);
    }

    /* renamed from: to */
    public static MethodDelegation m15053to(Object obj) {
        return withDefaultConfiguration().m15037to(obj);
    }

    public static MethodDelegation toField(String str, MethodGraph.Compiler compiler) {
        return withDefaultConfiguration().toField(str, compiler);
    }

    /* renamed from: to */
    public static MethodDelegation m15042to(Object obj, MethodGraph.Compiler compiler) {
        return withDefaultConfiguration().m15026to(obj, compiler);
    }

    public static MethodDelegation toField(String str, FieldLocator.Factory factory, MethodGraph.Compiler compiler) {
        return withDefaultConfiguration().toField(str, factory, compiler);
    }

    /* renamed from: to */
    public static MethodDelegation m15052to(Object obj, String str) {
        return withDefaultConfiguration().m15036to(obj, str);
    }

    /* renamed from: to */
    public static MethodDelegation m15051to(Object obj, String str, MethodGraph.Compiler compiler) {
        return withDefaultConfiguration().m15035to(obj, str, compiler);
    }

    /* renamed from: to */
    public static MethodDelegation m15050to(Object obj, Type type) {
        return withDefaultConfiguration().m15034to(obj, type);
    }

    /* renamed from: to */
    public static MethodDelegation m15047to(Object obj, Type type, MethodGraph.Compiler compiler) {
        return withDefaultConfiguration().m15031to(obj, type, compiler);
    }

    /* renamed from: to */
    public static MethodDelegation m15049to(Object obj, Type type, String str) {
        return withDefaultConfiguration().m15033to(obj, type, str);
    }

    /* renamed from: to */
    public static MethodDelegation m15048to(Object obj, Type type, String str, MethodGraph.Compiler compiler) {
        return withDefaultConfiguration().m15032to(obj, type, str, compiler);
    }

    /* renamed from: to */
    public static MethodDelegation m15046to(Object obj, TypeDefinition typeDefinition) {
        return withDefaultConfiguration().m15030to(obj, typeDefinition);
    }

    /* renamed from: to */
    public static MethodDelegation m15043to(Object obj, TypeDefinition typeDefinition, MethodGraph.Compiler compiler) {
        return withDefaultConfiguration().m15027to(obj, typeDefinition, compiler);
    }

    /* renamed from: to */
    public static MethodDelegation m15045to(Object obj, TypeDefinition typeDefinition, String str) {
        return withDefaultConfiguration().m15029to(obj, typeDefinition, str);
    }

    /* renamed from: to */
    public static MethodDelegation m15044to(Object obj, TypeDefinition typeDefinition, String str, MethodGraph.Compiler compiler) {
        return withDefaultConfiguration().m15028to(obj, typeDefinition, str, compiler);
    }
}
