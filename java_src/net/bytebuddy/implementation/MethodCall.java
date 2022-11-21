package net.bytebuddy.implementation;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.enumeration.EnumerationDescription;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.field.FieldList;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.method.ParameterList;
import net.bytebuddy.description.type.TypeDefinition;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.scaffold.FieldLocator;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.Removal;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.TypeCreation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.collection.ArrayAccess;
import net.bytebuddy.implementation.bytecode.collection.ArrayFactory;
import net.bytebuddy.implementation.bytecode.constant.ClassConstant;
import net.bytebuddy.implementation.bytecode.constant.DoubleConstant;
import net.bytebuddy.implementation.bytecode.constant.FloatConstant;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.implementation.bytecode.constant.JavaConstantValue;
import net.bytebuddy.implementation.bytecode.constant.LongConstant;
import net.bytebuddy.implementation.bytecode.constant.NullConstant;
import net.bytebuddy.implementation.bytecode.constant.TextConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatcher;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.CompoundList;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class MethodCall implements Implementation.Composable {
    public final List<ArgumentLoader.Factory> argumentLoaders;
    public final Assigner assigner;
    public final MethodInvoker.Factory methodInvoker;
    public final MethodLocator.Factory methodLocator;
    public final TargetHandler.Factory targetHandler;
    public final TerminationHandler.Factory terminationHandler;
    public final Assigner.Typing typing;

    @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
    /* loaded from: classes.dex */
    public class Appender implements ByteCodeAppender {
        private final List<ArgumentLoader.ArgumentProvider> argumentProviders;
        private final Implementation.Target implementationTarget;
        private final MethodInvoker methodInvoker;
        private final MethodLocator methodLocator;
        private final TargetHandler targetHandler;
        private final TerminationHandler terminationHandler;

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass()) {
                Appender appender = (Appender) obj;
                return this.implementationTarget.equals(appender.implementationTarget) && this.methodLocator.equals(appender.methodLocator) && this.argumentProviders.equals(appender.argumentProviders) && this.methodInvoker.equals(appender.methodInvoker) && this.targetHandler.equals(appender.targetHandler) && this.terminationHandler.equals(appender.terminationHandler) && MethodCall.this.equals(MethodCall.this);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((getClass().hashCode() * 31) + this.implementationTarget.hashCode()) * 31) + this.methodLocator.hashCode()) * 31) + this.argumentProviders.hashCode()) * 31) + this.methodInvoker.hashCode()) * 31) + this.targetHandler.hashCode()) * 31) + this.terminationHandler.hashCode()) * 31) + MethodCall.this.hashCode();
        }

        public MethodDescription toInvokedMethod(MethodDescription methodDescription, TargetHandler.Resolved resolved) {
            return this.methodLocator.resolve(resolved.getTypeDescription(), methodDescription);
        }

        public Appender(Implementation.Target target, TerminationHandler terminationHandler) {
            this.implementationTarget = target;
            this.methodLocator = MethodCall.this.methodLocator.make(target.getInstrumentedType());
            this.argumentProviders = new ArrayList(MethodCall.this.argumentLoaders.size());
            for (ArgumentLoader.Factory factory : MethodCall.this.argumentLoaders) {
                this.argumentProviders.add(factory.make(target));
            }
            this.methodInvoker = MethodCall.this.methodInvoker.make(target.getInstrumentedType());
            this.targetHandler = MethodCall.this.targetHandler.make(target);
            this.terminationHandler = terminationHandler;
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            TargetHandler.Resolved resolve = this.targetHandler.resolve(methodDescription);
            return new ByteCodeAppender.Size(new StackManipulation.Compound(this.terminationHandler.prepare(), toStackManipulation(methodDescription, toInvokedMethod(methodDescription, resolve), resolve)).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
        }

        public StackManipulation toStackManipulation(MethodDescription methodDescription, MethodDescription methodDescription2, TargetHandler.Resolved resolved) {
            ArrayList<ArgumentLoader> arrayList = new ArrayList();
            for (ArgumentLoader.ArgumentProvider argumentProvider : this.argumentProviders) {
                arrayList.addAll(argumentProvider.resolve(methodDescription, methodDescription2));
            }
            ParameterList<?> parameters = methodDescription2.getParameters();
            if (parameters.size() == arrayList.size()) {
                Iterator<T> it = parameters.iterator();
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                for (ArgumentLoader argumentLoader : arrayList) {
                    MethodCall methodCall = MethodCall.this;
                    arrayList2.add(argumentLoader.toStackManipulation((ParameterDescription) it.next(), methodCall.assigner, methodCall.typing));
                }
                MethodCall methodCall2 = MethodCall.this;
                TerminationHandler terminationHandler = this.terminationHandler;
                MethodCall methodCall3 = MethodCall.this;
                return new StackManipulation.Compound(resolved.toStackManipulation(methodDescription2, methodCall2.assigner, methodCall2.typing), new StackManipulation.Compound(arrayList2), this.methodInvoker.toStackManipulation(methodDescription2, this.implementationTarget), terminationHandler.toStackManipulation(methodDescription2, methodDescription, methodCall3.assigner, methodCall3.typing));
            }
            throw new IllegalStateException(methodDescription2 + " does not accept " + arrayList.size() + " arguments");
        }
    }

    /* loaded from: classes.dex */
    public interface ArgumentLoader {

        /* loaded from: classes.dex */
        public interface ArgumentProvider {
            List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2);
        }

        /* loaded from: classes.dex */
        public interface Factory extends InstrumentedType.Prepareable {
            ArgumentProvider make(Implementation.Target target);
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForField implements ArgumentLoader {
            private final FieldDescription fieldDescription;
            private final MethodDescription instrumentedMethod;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory {
                private final FieldLocator.Factory fieldLocatorFactory;
                private final String name;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Factory factory = (Factory) obj;
                        return this.name.equals(factory.name) && this.fieldLocatorFactory.equals(factory.fieldLocatorFactory);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + this.fieldLocatorFactory.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.Factory
                public ArgumentProvider make(Implementation.Target target) {
                    FieldLocator.Resolution locate = this.fieldLocatorFactory.make(target.getInstrumentedType()).locate(this.name);
                    if (locate.isResolved()) {
                        return new ArgumentProvider(locate.getField());
                    }
                    throw new IllegalStateException("Could not locate field '" + this.name + "' on " + target.getInstrumentedType());
                }

                public Factory(String str, FieldLocator.Factory factory) {
                    this.name = str;
                    this.fieldLocatorFactory = factory;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForField forField = (ForField) obj;
                    return this.fieldDescription.equals(forField.fieldDescription) && this.instrumentedMethod.equals(forField.instrumentedMethod);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.fieldDescription.hashCode()) * 31) + this.instrumentedMethod.hashCode();
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ArgumentProvider implements ArgumentProvider {
                private final FieldDescription fieldDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((ArgumentProvider) obj).fieldDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.ArgumentProvider
                public List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2) {
                    return Collections.singletonList(new ForField(this.fieldDescription, methodDescription));
                }

                public ArgumentProvider(FieldDescription fieldDescription) {
                    this.fieldDescription = fieldDescription;
                }
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader
            public StackManipulation toStackManipulation(ParameterDescription parameterDescription, Assigner assigner, Assigner.Typing typing) {
                StackManipulation loadThis;
                if (!this.fieldDescription.isStatic() && this.instrumentedMethod.isStatic()) {
                    throw new IllegalStateException("Cannot access non-static " + this.fieldDescription + " from " + this.instrumentedMethod);
                }
                StackManipulation[] stackManipulationArr = new StackManipulation[3];
                if (this.fieldDescription.isStatic()) {
                    loadThis = StackManipulation.Trivial.INSTANCE;
                } else {
                    loadThis = MethodVariableAccess.loadThis();
                }
                stackManipulationArr[0] = loadThis;
                stackManipulationArr[1] = FieldAccess.forField(this.fieldDescription).read();
                stackManipulationArr[2] = assigner.assign(this.fieldDescription.getType(), parameterDescription.getType(), typing);
                StackManipulation.Compound compound = new StackManipulation.Compound(stackManipulationArr);
                if (compound.isValid()) {
                    return compound;
                }
                throw new IllegalStateException("Cannot assign " + this.fieldDescription + " to " + parameterDescription);
            }

            public ForField(FieldDescription fieldDescription, MethodDescription methodDescription) {
                this.fieldDescription = fieldDescription;
                this.instrumentedMethod = methodDescription;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForInstance implements ArgumentLoader, ArgumentProvider {
            private final FieldDescription fieldDescription;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory {
                private static final String FIELD_PREFIX = "methodCall";
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.IGNORE)
                private final String name;
                private final Object value;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.value.equals(((Factory) obj).value);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.value.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.Factory
                public ArgumentProvider make(Implementation.Target target) {
                    return new ForInstance((FieldDescription) target.getInstrumentedType().getDeclaredFields().filter(ElementMatchers.named(this.name)).getOnly());
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType.withAuxiliaryField(new FieldDescription.Token(this.name, 4105, TypeDescription.Generic.OfNonGenericType.ForLoadedType.m15189of(this.value.getClass())), this.value);
                }

                public Factory(Object obj) {
                    this.value = obj;
                    this.name = "methodCall$" + RandomString.hashOf(obj);
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((ForInstance) obj).fieldDescription);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.ArgumentProvider
            public List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2) {
                return Collections.singletonList(this);
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader
            public StackManipulation toStackManipulation(ParameterDescription parameterDescription, Assigner assigner, Assigner.Typing typing) {
                StackManipulation.Compound compound = new StackManipulation.Compound(FieldAccess.forField(this.fieldDescription).read(), assigner.assign(this.fieldDescription.getType(), parameterDescription.getType(), typing));
                if (compound.isValid()) {
                    return compound;
                }
                throw new IllegalStateException("Cannot assign " + this.fieldDescription.getType() + " to " + parameterDescription);
            }

            public ForInstance(FieldDescription fieldDescription) {
                this.fieldDescription = fieldDescription;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForInstrumentedType implements ArgumentLoader, ArgumentProvider {
            private final TypeDescription instrumentedType;

            /* loaded from: classes.dex */
            public enum Factory implements Factory {
                INSTANCE;

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.Factory
                public ArgumentProvider make(Implementation.Target target) {
                    return new ForInstrumentedType(target.getInstrumentedType());
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((ForInstrumentedType) obj).instrumentedType);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.ArgumentProvider
            public List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2) {
                return Collections.singletonList(this);
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader
            public StackManipulation toStackManipulation(ParameterDescription parameterDescription, Assigner assigner, Assigner.Typing typing) {
                StackManipulation.Compound compound = new StackManipulation.Compound(ClassConstant.m14958of(this.instrumentedType), assigner.assign(TypeDescription.Generic.CLASS, parameterDescription.getType(), typing));
                if (compound.isValid()) {
                    return compound;
                }
                throw new IllegalStateException("Cannot assign Class value to " + parameterDescription);
            }

            public ForInstrumentedType(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForMethodCall implements ArgumentLoader {
            private final Appender appender;
            private final MethodDescription instrumentedMethod;
            private final MethodDescription methodDescription;
            private final TargetHandler.Resolved targetHandler;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class ArgumentProvider implements ArgumentProvider {
                private final Appender appender;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.appender.equals(((ArgumentProvider) obj).appender);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.appender.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.ArgumentProvider
                public List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2) {
                    TargetHandler.Resolved resolve = this.appender.targetHandler.resolve(methodDescription);
                    Appender appender = this.appender;
                    return Collections.singletonList(new ForMethodCall(appender, appender.toInvokedMethod(methodDescription, resolve), methodDescription, resolve));
                }

                public ArgumentProvider(Appender appender) {
                    this.appender = appender;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForMethodCall forMethodCall = (ForMethodCall) obj;
                    return this.appender.equals(forMethodCall.appender) && this.methodDescription.equals(forMethodCall.methodDescription) && this.instrumentedMethod.equals(forMethodCall.instrumentedMethod) && this.targetHandler.equals(forMethodCall.targetHandler);
                }
                return false;
            }

            public int hashCode() {
                return (((((((getClass().hashCode() * 31) + this.appender.hashCode()) * 31) + this.methodDescription.hashCode()) * 31) + this.instrumentedMethod.hashCode()) * 31) + this.targetHandler.hashCode();
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory {
                private final MethodCall methodCall;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.methodCall.equals(((Factory) obj).methodCall);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.methodCall.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.Factory
                public ArgumentProvider make(Implementation.Target target) {
                    MethodCall methodCall = this.methodCall;
                    methodCall.getClass();
                    return new ArgumentProvider(new Appender(target, TerminationHandler.Simple.IGNORING));
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return this.methodCall.prepare(instrumentedType);
                }

                public Factory(MethodCall methodCall) {
                    this.methodCall = methodCall;
                }
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader
            public StackManipulation toStackManipulation(ParameterDescription parameterDescription, Assigner assigner, Assigner.Typing typing) {
                TypeDescription.Generic returnType;
                StackManipulation[] stackManipulationArr = new StackManipulation[2];
                stackManipulationArr[0] = this.appender.toStackManipulation(this.instrumentedMethod, this.methodDescription, this.targetHandler);
                if (this.methodDescription.isConstructor()) {
                    returnType = this.methodDescription.getDeclaringType().asGenericType();
                } else {
                    returnType = this.methodDescription.getReturnType();
                }
                stackManipulationArr[1] = assigner.assign(returnType, parameterDescription.getType(), typing);
                StackManipulation.Compound compound = new StackManipulation.Compound(stackManipulationArr);
                if (compound.isValid()) {
                    return compound;
                }
                throw new IllegalStateException("Cannot assign return type of " + this.methodDescription + " to " + parameterDescription);
            }

            public ForMethodCall(Appender appender, MethodDescription methodDescription, MethodDescription methodDescription2, TargetHandler.Resolved resolved) {
                this.appender = appender;
                this.methodDescription = methodDescription;
                this.instrumentedMethod = methodDescription2;
                this.targetHandler = resolved;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForMethodParameter implements ArgumentLoader {
            private final int index;
            private final MethodDescription instrumentedMethod;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory, ArgumentProvider {
                private final int index;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.index == ((Factory) obj).index;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.index;
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.Factory
                public ArgumentProvider make(Implementation.Target target) {
                    return this;
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.ArgumentProvider
                public List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2) {
                    if (this.index < methodDescription.getParameters().size()) {
                        return Collections.singletonList(new ForMethodParameter(this.index, methodDescription));
                    }
                    throw new IllegalStateException(methodDescription + " does not have a parameter with index " + this.index + ", " + methodDescription.getParameters().size() + " defined");
                }

                public Factory(int i) {
                    this.index = i;
                }
            }

            /* loaded from: classes.dex */
            public enum OfInstrumentedMethod implements Factory, ArgumentProvider {
                INSTANCE;

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.Factory
                public ArgumentProvider make(Implementation.Target target) {
                    return this;
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.ArgumentProvider
                public List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2) {
                    ArrayList arrayList = new ArrayList(methodDescription.getParameters().size());
                    Iterator<T> it = methodDescription.getParameters().iterator();
                    while (it.hasNext()) {
                        arrayList.add(new ForMethodParameter(((ParameterDescription) it.next()).getIndex(), methodDescription));
                    }
                    return arrayList;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForMethodParameter forMethodParameter = (ForMethodParameter) obj;
                    return this.index == forMethodParameter.index && this.instrumentedMethod.equals(forMethodParameter.instrumentedMethod);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.index) * 31) + this.instrumentedMethod.hashCode();
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader
            public StackManipulation toStackManipulation(ParameterDescription parameterDescription, Assigner assigner, Assigner.Typing typing) {
                ParameterDescription parameterDescription2 = (ParameterDescription) this.instrumentedMethod.getParameters().get(this.index);
                StackManipulation.Compound compound = new StackManipulation.Compound(MethodVariableAccess.load(parameterDescription2), assigner.assign(parameterDescription2.getType(), parameterDescription.getType(), typing));
                if (compound.isValid()) {
                    return compound;
                }
                throw new IllegalStateException("Cannot assign " + parameterDescription2 + " to " + parameterDescription + " for " + this.instrumentedMethod);
            }

            public ForMethodParameter(int i, MethodDescription methodDescription) {
                this.index = i;
                this.instrumentedMethod = methodDescription;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForMethodParameterArrayElement implements ArgumentLoader {
            private final int index;
            private final ParameterDescription parameterDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForMethodParameterArrayElement forMethodParameterArrayElement = (ForMethodParameterArrayElement) obj;
                    return this.index == forMethodParameterArrayElement.index && this.parameterDescription.equals(forMethodParameterArrayElement.parameterDescription);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.parameterDescription.hashCode()) * 31) + this.index;
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfInvokedMethod implements Factory, ArgumentProvider {
                private final int index;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.index == ((OfInvokedMethod) obj).index;
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.index;
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.Factory
                public ArgumentProvider make(Implementation.Target target) {
                    return this;
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                public OfInvokedMethod(int i) {
                    this.index = i;
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.ArgumentProvider
                public List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2) {
                    if (methodDescription.getParameters().size() > this.index) {
                        if (((ParameterDescription) methodDescription.getParameters().get(this.index)).getType().isArray()) {
                            ArrayList arrayList = new ArrayList(methodDescription2.getParameters().size());
                            for (int i = 0; i < methodDescription2.getParameters().size(); i++) {
                                arrayList.add(new ForMethodParameterArrayElement((ParameterDescription) methodDescription.getParameters().get(this.index), i));
                            }
                            return arrayList;
                        }
                        throw new IllegalStateException("Cannot access an item from non-array parameter " + methodDescription.getParameters().get(this.index) + " at index " + this.index);
                    }
                    throw new IllegalStateException(methodDescription + " does not declare a parameter with index " + this.index + ", " + methodDescription.getParameters().size() + " defined");
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class OfParameter implements Factory, ArgumentProvider {
                private final int arrayIndex;
                private final int index;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        OfParameter ofParameter = (OfParameter) obj;
                        return this.index == ofParameter.index && this.arrayIndex == ofParameter.arrayIndex;
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.index) * 31) + this.arrayIndex;
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.Factory
                public ArgumentProvider make(Implementation.Target target) {
                    return this;
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                public OfParameter(int i, int i2) {
                    this.index = i;
                    this.arrayIndex = i2;
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.ArgumentProvider
                public List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2) {
                    if (methodDescription.getParameters().size() > this.index) {
                        if (((ParameterDescription) methodDescription.getParameters().get(this.index)).getType().isArray()) {
                            return Collections.singletonList(new ForMethodParameterArrayElement((ParameterDescription) methodDescription.getParameters().get(this.index), this.arrayIndex));
                        }
                        throw new IllegalStateException("Cannot access an item from non-array parameter " + methodDescription.getParameters().get(this.index) + " at index " + this.index);
                    }
                    throw new IllegalStateException(methodDescription + " does not declare a parameter with index " + this.index + ", " + methodDescription.getParameters().size() + " defined");
                }
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader
            @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public StackManipulation toStackManipulation(ParameterDescription parameterDescription, Assigner assigner, Assigner.Typing typing) {
                StackManipulation.Compound compound = new StackManipulation.Compound(MethodVariableAccess.load(this.parameterDescription), IntegerConstant.forValue(this.index), ArrayAccess.m14962of(this.parameterDescription.getType().getComponentType()).load(), assigner.assign(this.parameterDescription.getType().getComponentType(), parameterDescription.getType(), typing));
                if (compound.isValid()) {
                    return compound;
                }
                throw new IllegalStateException("Cannot assign " + this.parameterDescription.getType().getComponentType() + " to " + parameterDescription);
            }

            public ForMethodParameterArrayElement(ParameterDescription parameterDescription, int i) {
                this.parameterDescription = parameterDescription;
                this.index = i;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForStackManipulation implements ArgumentLoader, ArgumentProvider, Factory {
            private final StackManipulation stackManipulation;
            private final TypeDefinition typeDefinition;

            public ForStackManipulation(StackManipulation stackManipulation, Type type) {
                this(stackManipulation, TypeDefinition.Sort.describe(type));
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForStackManipulation forStackManipulation = (ForStackManipulation) obj;
                    return this.stackManipulation.equals(forStackManipulation.stackManipulation) && this.typeDefinition.equals(forStackManipulation.typeDefinition);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.stackManipulation.hashCode()) * 31) + this.typeDefinition.hashCode();
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.Factory
            public ArgumentProvider make(Implementation.Target target) {
                return this;
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.ArgumentProvider
            public List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2) {
                return Collections.singletonList(this);
            }

            public ForStackManipulation(StackManipulation stackManipulation, TypeDefinition typeDefinition) {
                this.stackManipulation = stackManipulation;
                this.typeDefinition = typeDefinition;
            }

            /* renamed from: of */
            public static Factory m15059of(@MaybeNull Object obj) {
                if (obj == null) {
                    return ForNullConstant.INSTANCE;
                }
                if (obj instanceof Boolean) {
                    return new ForStackManipulation(IntegerConstant.forValue(((Boolean) obj).booleanValue()), Boolean.TYPE);
                }
                if (obj instanceof Byte) {
                    return new ForStackManipulation(IntegerConstant.forValue(((Byte) obj).byteValue()), Byte.TYPE);
                }
                if (obj instanceof Short) {
                    return new ForStackManipulation(IntegerConstant.forValue(((Short) obj).shortValue()), Short.TYPE);
                }
                if (obj instanceof Character) {
                    return new ForStackManipulation(IntegerConstant.forValue(((Character) obj).charValue()), Character.TYPE);
                }
                if (obj instanceof Integer) {
                    return new ForStackManipulation(IntegerConstant.forValue(((Integer) obj).intValue()), Integer.TYPE);
                }
                if (obj instanceof Long) {
                    return new ForStackManipulation(LongConstant.forValue(((Long) obj).longValue()), Long.TYPE);
                }
                if (obj instanceof Float) {
                    return new ForStackManipulation(FloatConstant.forValue(((Float) obj).floatValue()), Float.TYPE);
                }
                if (obj instanceof Double) {
                    return new ForStackManipulation(DoubleConstant.forValue(((Double) obj).doubleValue()), Double.TYPE);
                }
                if (obj instanceof String) {
                    return new ForStackManipulation(new TextConstant((String) obj), String.class);
                }
                if (obj instanceof Class) {
                    return new ForStackManipulation(ClassConstant.m14958of(TypeDescription.ForLoadedType.m15196of((Class) obj)), Class.class);
                }
                if (obj instanceof TypeDescription) {
                    return new ForStackManipulation(ClassConstant.m14958of((TypeDescription) obj), Class.class);
                }
                if (obj instanceof Enum) {
                    EnumerationDescription.ForLoadedEnumeration forLoadedEnumeration = new EnumerationDescription.ForLoadedEnumeration((Enum) obj);
                    return new ForStackManipulation(FieldAccess.forEnumeration(forLoadedEnumeration), forLoadedEnumeration.getEnumerationType());
                } else if (obj instanceof EnumerationDescription) {
                    EnumerationDescription enumerationDescription = (EnumerationDescription) obj;
                    return new ForStackManipulation(FieldAccess.forEnumeration(enumerationDescription), enumerationDescription.getEnumerationType());
                } else {
                    JavaType javaType = JavaType.METHOD_HANDLE;
                    if (javaType.isInstance(obj)) {
                        return new ForStackManipulation(new JavaConstantValue(JavaConstant.MethodHandle.ofLoaded(obj)), javaType.getTypeStub());
                    }
                    JavaType javaType2 = JavaType.METHOD_TYPE;
                    if (javaType2.isInstance(obj)) {
                        return new ForStackManipulation(new JavaConstantValue(JavaConstant.MethodType.ofLoaded(obj)), javaType2.getTypeStub());
                    }
                    if (obj instanceof JavaConstant) {
                        JavaConstant javaConstant = (JavaConstant) obj;
                        return new ForStackManipulation(new JavaConstantValue(javaConstant), javaConstant.getTypeDescription());
                    }
                    return new ForInstance.Factory(obj);
                }
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader
            public StackManipulation toStackManipulation(ParameterDescription parameterDescription, Assigner assigner, Assigner.Typing typing) {
                StackManipulation assign = assigner.assign(this.typeDefinition.asGenericType(), parameterDescription.getType(), typing);
                if (assign.isValid()) {
                    return new StackManipulation.Compound(this.stackManipulation, assign);
                }
                throw new IllegalStateException("Cannot assign " + parameterDescription + " to " + this.typeDefinition);
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForThisReference implements ArgumentLoader, ArgumentProvider {
            private final TypeDescription instrumentedType;

            /* loaded from: classes.dex */
            public enum Factory implements Factory {
                INSTANCE;

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.Factory
                public ArgumentProvider make(Implementation.Target target) {
                    return new ForThisReference(target.getInstrumentedType());
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((ForThisReference) obj).instrumentedType);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader
            public StackManipulation toStackManipulation(ParameterDescription parameterDescription, Assigner assigner, Assigner.Typing typing) {
                StackManipulation.Compound compound = new StackManipulation.Compound(MethodVariableAccess.loadThis(), assigner.assign(this.instrumentedType.asGenericType(), parameterDescription.getType(), typing));
                if (compound.isValid()) {
                    return compound;
                }
                throw new IllegalStateException("Cannot assign " + this.instrumentedType + " to " + parameterDescription);
            }

            public ForThisReference(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.ArgumentProvider
            public List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2) {
                if (!methodDescription.isStatic()) {
                    return Collections.singletonList(this);
                }
                throw new IllegalStateException(methodDescription + " is static and cannot supply an invoker instance");
            }
        }

        StackManipulation toStackManipulation(ParameterDescription parameterDescription, Assigner assigner, Assigner.Typing typing);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForMethodParameterArray implements ArgumentLoader {
            private final ParameterList<?> parameters;

            /* loaded from: classes.dex */
            public enum ForInstrumentedMethod implements Factory, ArgumentProvider {
                INSTANCE;

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.Factory
                public ArgumentProvider make(Implementation.Target target) {
                    return this;
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.ArgumentProvider
                public List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2) {
                    return Collections.singletonList(new ForMethodParameterArray(methodDescription.getParameters()));
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.parameters.equals(((ForMethodParameterArray) obj).parameters);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.parameters.hashCode();
            }

            public ForMethodParameterArray(ParameterList<?> parameterList) {
                this.parameters = parameterList;
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader
            @SuppressFBWarnings(justification = "Assuming component type for array type.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
            public StackManipulation toStackManipulation(ParameterDescription parameterDescription, Assigner assigner, Assigner.Typing typing) {
                TypeDescription.Generic componentType;
                if (parameterDescription.getType().represents(Object.class)) {
                    componentType = TypeDescription.Generic.OBJECT;
                } else if (parameterDescription.getType().isArray()) {
                    componentType = parameterDescription.getType().getComponentType();
                } else {
                    throw new IllegalStateException("Cannot set method parameter array for non-array type: " + parameterDescription);
                }
                ArrayList arrayList = new ArrayList(this.parameters.size());
                Iterator<T> it = this.parameters.iterator();
                while (it.hasNext()) {
                    ParameterDescription parameterDescription2 = (ParameterDescription) it.next();
                    StackManipulation.Compound compound = new StackManipulation.Compound(MethodVariableAccess.load(parameterDescription2), assigner.assign(parameterDescription2.getType(), componentType, typing));
                    if (compound.isValid()) {
                        arrayList.add(compound);
                    } else {
                        throw new IllegalStateException("Cannot assign " + parameterDescription2 + " to " + componentType);
                    }
                }
                return new StackManipulation.Compound(ArrayFactory.forType(componentType).withValues(arrayList));
            }
        }

        /* loaded from: classes.dex */
        public enum ForNullConstant implements ArgumentLoader, ArgumentProvider, Factory {
            INSTANCE;

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.Factory
            public ArgumentProvider make(Implementation.Target target) {
                return this;
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader.ArgumentProvider
            public List<ArgumentLoader> resolve(MethodDescription methodDescription, MethodDescription methodDescription2) {
                return Collections.singletonList(this);
            }

            @Override // net.bytebuddy.implementation.MethodCall.ArgumentLoader
            public StackManipulation toStackManipulation(ParameterDescription parameterDescription, Assigner assigner, Assigner.Typing typing) {
                if (!parameterDescription.getType().isPrimitive()) {
                    return NullConstant.INSTANCE;
                }
                throw new IllegalStateException("Cannot assign null to " + parameterDescription);
            }
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class FieldSetting implements Implementation.Composable {
        private final MethodCall methodCall;

        @Override // net.bytebuddy.implementation.Implementation.Composable
        public Implementation andThen(Implementation implementation) {
            return new Implementation.Compound(this.methodCall, implementation);
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return new ByteCodeAppender.Compound(this.methodCall.appender(target), Appender.INSTANCE);
        }

        public boolean equals(@MaybeNull Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && getClass() == obj.getClass() && this.methodCall.equals(((FieldSetting) obj).methodCall);
        }

        public int hashCode() {
            return (getClass().hashCode() * 31) + this.methodCall.hashCode();
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return this.methodCall.prepare(instrumentedType);
        }

        public Implementation.Composable withAssigner(Assigner assigner, Assigner.Typing typing) {
            return new FieldSetting((MethodCall) this.methodCall.withAssigner(assigner, typing));
        }

        /* loaded from: classes.dex */
        public enum Appender implements ByteCodeAppender {
            INSTANCE;

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                if (methodDescription.getReturnType().represents(Void.TYPE)) {
                    return new ByteCodeAppender.Size(MethodReturn.VOID.apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                }
                throw new IllegalStateException("Instrumented method " + methodDescription + " does not return void for field setting method call");
            }
        }

        @Override // net.bytebuddy.implementation.Implementation.Composable
        public Implementation.Composable andThen(Implementation.Composable composable) {
            return new Implementation.Compound.Composable(this.methodCall, composable);
        }

        public FieldSetting(MethodCall methodCall) {
            this.methodCall = methodCall;
        }
    }

    /* loaded from: classes.dex */
    public interface MethodInvoker {

        /* loaded from: classes.dex */
        public interface Factory {
            MethodInvoker make(TypeDescription typeDescription);
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForDefaultMethodInvocation implements MethodInvoker {
            private final TypeDescription instrumentedType;

            /* loaded from: classes.dex */
            public enum Factory implements Factory {
                INSTANCE;

                @Override // net.bytebuddy.implementation.MethodCall.MethodInvoker.Factory
                public MethodInvoker make(TypeDescription typeDescription) {
                    return new ForDefaultMethodInvocation(typeDescription);
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((ForDefaultMethodInvocation) obj).instrumentedType);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
            }

            @Override // net.bytebuddy.implementation.MethodCall.MethodInvoker
            public StackManipulation toStackManipulation(MethodDescription methodDescription, Implementation.Target target) {
                if (methodDescription.isInvokableOn(this.instrumentedType)) {
                    Implementation.SpecialMethodInvocation withCheckedCompatibilityTo = target.invokeDefault(methodDescription.asSignatureToken(), methodDescription.getDeclaringType().asErasure()).withCheckedCompatibilityTo(methodDescription.asTypeToken());
                    if (withCheckedCompatibilityTo.isValid()) {
                        return withCheckedCompatibilityTo;
                    }
                    throw new IllegalStateException("Cannot invoke " + methodDescription + " on " + this.instrumentedType);
                }
                throw new IllegalStateException("Cannot invoke " + methodDescription + " as default method of " + this.instrumentedType);
            }

            public ForDefaultMethodInvocation(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForSuperMethodInvocation implements MethodInvoker {
            private final TypeDescription instrumentedType;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((ForSuperMethodInvocation) obj).instrumentedType);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
            }

            /* loaded from: classes.dex */
            public enum Factory implements Factory {
                INSTANCE;

                @Override // net.bytebuddy.implementation.MethodCall.MethodInvoker.Factory
                public MethodInvoker make(TypeDescription typeDescription) {
                    if (typeDescription.getSuperClass() != null) {
                        return new ForSuperMethodInvocation(typeDescription);
                    }
                    throw new IllegalStateException("Cannot invoke super method for " + typeDescription);
                }
            }

            public ForSuperMethodInvocation(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }

            @Override // net.bytebuddy.implementation.MethodCall.MethodInvoker
            public StackManipulation toStackManipulation(MethodDescription methodDescription, Implementation.Target target) {
                if (methodDescription.isInvokableOn(target.getOriginType().asErasure())) {
                    Implementation.SpecialMethodInvocation withCheckedCompatibilityTo = target.invokeDominant(methodDescription.asSignatureToken()).withCheckedCompatibilityTo(methodDescription.asTypeToken());
                    if (withCheckedCompatibilityTo.isValid()) {
                        return withCheckedCompatibilityTo;
                    }
                    throw new IllegalStateException("Cannot invoke " + methodDescription + " as a super method");
                }
                throw new IllegalStateException("Cannot invoke " + methodDescription + " as super method of " + this.instrumentedType);
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForVirtualInvocation implements MethodInvoker {
            private final TypeDescription typeDescription;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory {
                private final TypeDescription typeDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((Factory) obj).typeDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.MethodInvoker.Factory
                public MethodInvoker make(TypeDescription typeDescription) {
                    if (this.typeDescription.asErasure().isAccessibleTo(typeDescription)) {
                        return new ForVirtualInvocation(this.typeDescription);
                    }
                    throw new IllegalStateException(this.typeDescription + " is not accessible to " + typeDescription);
                }

                public Factory(TypeDescription typeDescription) {
                    this.typeDescription = typeDescription;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.typeDescription.equals(((ForVirtualInvocation) obj).typeDescription);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.typeDescription.hashCode();
            }

            /* loaded from: classes.dex */
            public enum WithImplicitType implements MethodInvoker, Factory {
                INSTANCE;

                @Override // net.bytebuddy.implementation.MethodCall.MethodInvoker.Factory
                public MethodInvoker make(TypeDescription typeDescription) {
                    return this;
                }

                @Override // net.bytebuddy.implementation.MethodCall.MethodInvoker
                public StackManipulation toStackManipulation(MethodDescription methodDescription, Implementation.Target target) {
                    if (methodDescription.isAccessibleTo(target.getInstrumentedType()) && methodDescription.isVirtual()) {
                        return MethodInvocation.invoke(methodDescription);
                    }
                    throw new IllegalStateException("Cannot invoke " + methodDescription + " virtually");
                }
            }

            @Override // net.bytebuddy.implementation.MethodCall.MethodInvoker
            public StackManipulation toStackManipulation(MethodDescription methodDescription, Implementation.Target target) {
                if (methodDescription.isInvokableOn(this.typeDescription)) {
                    return MethodInvocation.invoke(methodDescription).virtual(this.typeDescription);
                }
                throw new IllegalStateException("Cannot invoke " + methodDescription + " on " + this.typeDescription);
            }

            public ForVirtualInvocation(TypeDescription typeDescription) {
                this.typeDescription = typeDescription;
            }
        }

        StackManipulation toStackManipulation(MethodDescription methodDescription, Implementation.Target target);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForContextualInvocation implements MethodInvoker {
            private final TypeDescription instrumentedType;

            /* loaded from: classes.dex */
            public enum Factory implements Factory {
                INSTANCE;

                @Override // net.bytebuddy.implementation.MethodCall.MethodInvoker.Factory
                public MethodInvoker make(TypeDescription typeDescription) {
                    return new ForContextualInvocation(typeDescription);
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((ForContextualInvocation) obj).instrumentedType);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
            }

            public ForContextualInvocation(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }

            @Override // net.bytebuddy.implementation.MethodCall.MethodInvoker
            public StackManipulation toStackManipulation(MethodDescription methodDescription, Implementation.Target target) {
                if (methodDescription.isVirtual() && !methodDescription.isInvokableOn(this.instrumentedType)) {
                    throw new IllegalStateException("Cannot invoke " + methodDescription + " on " + this.instrumentedType);
                } else if (methodDescription.isVirtual()) {
                    return MethodInvocation.invoke(methodDescription).virtual(this.instrumentedType);
                } else {
                    return MethodInvocation.invoke(methodDescription);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public interface MethodLocator {

        /* loaded from: classes.dex */
        public interface Factory {
            MethodLocator make(TypeDescription typeDescription);
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForElementMatcher implements MethodLocator {
            private final TypeDescription instrumentedType;
            private final ElementMatcher<? super MethodDescription> matcher;
            private final MethodGraph.Compiler methodGraphCompiler;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForElementMatcher forElementMatcher = (ForElementMatcher) obj;
                    return this.instrumentedType.equals(forElementMatcher.instrumentedType) && this.matcher.equals(forElementMatcher.matcher) && this.methodGraphCompiler.equals(forElementMatcher.methodGraphCompiler);
                }
                return false;
            }

            public int hashCode() {
                return (((((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.matcher.hashCode()) * 31) + this.methodGraphCompiler.hashCode();
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory {
                private final ElementMatcher<? super MethodDescription> matcher;
                private final MethodGraph.Compiler methodGraphCompiler;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Factory factory = (Factory) obj;
                        return this.matcher.equals(factory.matcher) && this.methodGraphCompiler.equals(factory.methodGraphCompiler);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.matcher.hashCode()) * 31) + this.methodGraphCompiler.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.MethodLocator.Factory
                public MethodLocator make(TypeDescription typeDescription) {
                    return new ForElementMatcher(typeDescription, this.matcher, this.methodGraphCompiler);
                }

                public Factory(ElementMatcher<? super MethodDescription> elementMatcher, MethodGraph.Compiler compiler) {
                    this.matcher = elementMatcher;
                    this.methodGraphCompiler = compiler;
                }
            }

            @Override // net.bytebuddy.implementation.MethodCall.MethodLocator
            public MethodDescription resolve(TypeDescription typeDescription, MethodDescription methodDescription) {
                List filter;
                TypeDescription.Generic superClass = this.instrumentedType.getSuperClass();
                if (superClass == null) {
                    filter = Collections.emptyList();
                } else {
                    filter = superClass.getDeclaredMethods().filter(ElementMatchers.isConstructor().and(this.matcher));
                }
                List m14775of = CompoundList.m14775of(filter, this.instrumentedType.getDeclaredMethods().filter(ElementMatchers.not(ElementMatchers.isVirtual()).and(this.matcher)), this.methodGraphCompiler.compile((TypeDefinition) typeDescription, this.instrumentedType).listNodes().asMethodList().filter(this.matcher));
                if (m14775of.size() == 1) {
                    return (MethodDescription) m14775of.get(0);
                }
                throw new IllegalStateException(this.instrumentedType + " does not define exactly one virtual method or constructor for " + this.matcher + " but contained " + m14775of.size() + " candidates: " + m14775of);
            }

            public ForElementMatcher(TypeDescription typeDescription, ElementMatcher<? super MethodDescription> elementMatcher, MethodGraph.Compiler compiler) {
                this.instrumentedType = typeDescription;
                this.matcher = elementMatcher;
                this.methodGraphCompiler = compiler;
            }
        }

        /* loaded from: classes.dex */
        public enum ForInstrumentedMethod implements MethodLocator, Factory {
            INSTANCE;

            @Override // net.bytebuddy.implementation.MethodCall.MethodLocator.Factory
            public MethodLocator make(TypeDescription typeDescription) {
                return this;
            }

            @Override // net.bytebuddy.implementation.MethodCall.MethodLocator
            public MethodDescription resolve(TypeDescription typeDescription, MethodDescription methodDescription) {
                return methodDescription;
            }
        }

        MethodDescription resolve(TypeDescription typeDescription, MethodDescription methodDescription);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForExplicitMethod implements MethodLocator, Factory {
            private final MethodDescription methodDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.methodDescription.equals(((ForExplicitMethod) obj).methodDescription);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.methodDescription.hashCode();
            }

            @Override // net.bytebuddy.implementation.MethodCall.MethodLocator.Factory
            public MethodLocator make(TypeDescription typeDescription) {
                return this;
            }

            @Override // net.bytebuddy.implementation.MethodCall.MethodLocator
            public MethodDescription resolve(TypeDescription typeDescription, MethodDescription methodDescription) {
                return this.methodDescription;
            }

            public ForExplicitMethod(MethodDescription methodDescription) {
                this.methodDescription = methodDescription;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface TargetHandler {

        /* loaded from: classes.dex */
        public interface Factory extends InstrumentedType.Prepareable {
            TargetHandler make(Implementation.Target target);
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForMethodCall implements TargetHandler {
            private final Appender appender;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Resolved implements Resolved {
                private final Appender appender;
                private final MethodDescription instrumentedMethod;
                private final MethodDescription methodDescription;
                private final Resolved targetHandler;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Resolved resolved = (Resolved) obj;
                        return this.appender.equals(resolved.appender) && this.methodDescription.equals(resolved.methodDescription) && this.instrumentedMethod.equals(resolved.instrumentedMethod) && this.targetHandler.equals(resolved.targetHandler);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((((((getClass().hashCode() * 31) + this.appender.hashCode()) * 31) + this.methodDescription.hashCode()) * 31) + this.instrumentedMethod.hashCode()) * 31) + this.targetHandler.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
                public TypeDescription getTypeDescription() {
                    if (this.methodDescription.isConstructor()) {
                        return this.methodDescription.getDeclaringType().asErasure();
                    }
                    return this.methodDescription.getReturnType().asErasure();
                }

                @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
                public StackManipulation toStackManipulation(MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    TypeDescription.Generic returnType;
                    TypeDefinition returnType2;
                    if (this.methodDescription.isConstructor()) {
                        returnType = this.methodDescription.getDeclaringType().asGenericType();
                    } else {
                        returnType = this.methodDescription.getReturnType();
                    }
                    StackManipulation assign = assigner.assign(returnType, methodDescription.getDeclaringType().asGenericType(), typing);
                    if (!assign.isValid()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Cannot invoke ");
                        sb.append(methodDescription);
                        sb.append(" on ");
                        if (this.methodDescription.isConstructor()) {
                            returnType2 = this.methodDescription.getDeclaringType();
                        } else {
                            returnType2 = this.methodDescription.getReturnType();
                        }
                        sb.append(returnType2);
                        throw new IllegalStateException(sb.toString());
                    }
                    return new StackManipulation.Compound(this.appender.toStackManipulation(this.instrumentedMethod, this.methodDescription, this.targetHandler), assign);
                }

                public Resolved(Appender appender, MethodDescription methodDescription, MethodDescription methodDescription2, Resolved resolved) {
                    this.appender = appender;
                    this.methodDescription = methodDescription;
                    this.instrumentedMethod = methodDescription2;
                    this.targetHandler = resolved;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.appender.equals(((ForMethodCall) obj).appender);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.appender.hashCode();
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory {
                private final MethodCall methodCall;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.methodCall.equals(((Factory) obj).methodCall);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.methodCall.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Factory
                public TargetHandler make(Implementation.Target target) {
                    MethodCall methodCall = this.methodCall;
                    methodCall.getClass();
                    return new ForMethodCall(new Appender(target, TerminationHandler.Simple.IGNORING));
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return this.methodCall.prepare(instrumentedType);
                }

                public Factory(MethodCall methodCall) {
                    this.methodCall = methodCall;
                }
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler
            public Resolved resolve(MethodDescription methodDescription) {
                Resolved resolve = this.appender.targetHandler.resolve(methodDescription);
                Appender appender = this.appender;
                return new Resolved(appender, appender.toInvokedMethod(methodDescription, resolve), methodDescription, resolve);
            }

            public ForMethodCall(Appender appender) {
                this.appender = appender;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForMethodParameter implements TargetHandler, Factory {
            private final int index;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Resolved implements Resolved {
                private final ParameterDescription parameterDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.parameterDescription.equals(((Resolved) obj).parameterDescription);
                }

                @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
                public TypeDescription getTypeDescription() {
                    return this.parameterDescription.getType().asErasure();
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.parameterDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
                public StackManipulation toStackManipulation(MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    StackManipulation assign = assigner.assign(this.parameterDescription.getType(), methodDescription.getDeclaringType().asGenericType(), typing);
                    if (assign.isValid()) {
                        return new StackManipulation.Compound(MethodVariableAccess.load(this.parameterDescription), assign);
                    }
                    throw new IllegalStateException("Cannot invoke " + methodDescription + " on " + this.parameterDescription.getType());
                }

                public Resolved(ParameterDescription parameterDescription) {
                    this.parameterDescription = parameterDescription;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.index == ((ForMethodParameter) obj).index;
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.index;
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Factory
            public TargetHandler make(Implementation.Target target) {
                return this;
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler
            public Resolved resolve(MethodDescription methodDescription) {
                if (this.index < methodDescription.getParameters().size()) {
                    return new Resolved((ParameterDescription) methodDescription.getParameters().get(this.index));
                }
                throw new IllegalArgumentException(methodDescription + " does not have a parameter with index " + this.index);
            }

            public ForMethodParameter(int i) {
                this.index = i;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForValue implements TargetHandler, Resolved {
            private final FieldDescription.InDefinedShape fieldDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((ForValue) obj).fieldDescription);
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
            public TypeDescription getTypeDescription() {
                return this.fieldDescription.getType().asErasure();
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler
            public Resolved resolve(MethodDescription methodDescription) {
                return this;
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory {
                private static final String FIELD_PREFIX = "invocationTarget";
                private final TypeDescription.Generic fieldType;
                @HashCodeAndEqualsPlugin.ValueHandling(HashCodeAndEqualsPlugin.ValueHandling.Sort.IGNORE)
                private final String name;
                private final Object target;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Factory factory = (Factory) obj;
                        return this.target.equals(factory.target) && this.fieldType.equals(factory.fieldType);
                    }
                    return false;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.target.hashCode()) * 31) + this.fieldType.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Factory
                public TargetHandler make(Implementation.Target target) {
                    return new ForValue((FieldDescription.InDefinedShape) target.getInstrumentedType().getDeclaredFields().filter(ElementMatchers.named(this.name)).getOnly());
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType.withAuxiliaryField(new FieldDescription.Token(this.name, 4169, this.fieldType), this.target);
                }

                public Factory(Object obj, TypeDescription.Generic generic) {
                    this.target = obj;
                    this.fieldType = generic;
                    this.name = "invocationTarget$" + RandomString.hashOf(obj);
                }
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
            public StackManipulation toStackManipulation(MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                StackManipulation assign = assigner.assign(this.fieldDescription.getType(), methodDescription.getDeclaringType().asGenericType(), typing);
                if (assign.isValid()) {
                    return new StackManipulation.Compound(FieldAccess.forField(this.fieldDescription).read(), assign);
                }
                throw new IllegalStateException("Cannot invoke " + methodDescription + " on " + this.fieldDescription);
            }

            public ForValue(FieldDescription.InDefinedShape inDefinedShape) {
                this.fieldDescription = inDefinedShape;
            }
        }

        /* loaded from: classes.dex */
        public interface Resolved {
            TypeDescription getTypeDescription();

            StackManipulation toStackManipulation(MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing);
        }

        Resolved resolve(MethodDescription methodDescription);

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForConstructingInvocation implements TargetHandler, Resolved {
            private final TypeDescription instrumentedType;

            /* loaded from: classes.dex */
            public enum Factory implements Factory {
                INSTANCE;

                @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Factory
                public TargetHandler make(Implementation.Target target) {
                    return new ForConstructingInvocation(target.getInstrumentedType());
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((ForConstructingInvocation) obj).instrumentedType);
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
            public TypeDescription getTypeDescription() {
                return this.instrumentedType;
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler
            public Resolved resolve(MethodDescription methodDescription) {
                return this;
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
            public StackManipulation toStackManipulation(MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                return new StackManipulation.Compound(TypeCreation.m14974of(methodDescription.getDeclaringType().asErasure()), Duplication.SINGLE);
            }

            public ForConstructingInvocation(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForField implements TargetHandler, Resolved {
            private final FieldDescription fieldDescription;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Factory implements Factory {
                private final Location location;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.location.equals(((Factory) obj).location);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.location.hashCode();
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }

                @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Factory
                @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public TargetHandler make(Implementation.Target target) {
                    FieldDescription resolve = this.location.resolve(target.getInstrumentedType());
                    if (!resolve.isStatic() && !target.getInstrumentedType().isAssignableTo(resolve.getDeclaringType().asErasure())) {
                        throw new IllegalStateException("Cannot access " + resolve + " from " + target.getInstrumentedType());
                    }
                    return new ForField(resolve);
                }

                public Factory(Location location) {
                    this.location = location;
                }
            }

            /* loaded from: classes.dex */
            public interface Location {

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForImplicitField implements Location {
                    private final FieldLocator.Factory fieldLocatorFactory;
                    private final String name;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (obj != null && getClass() == obj.getClass()) {
                            ForImplicitField forImplicitField = (ForImplicitField) obj;
                            return this.name.equals(forImplicitField.name) && this.fieldLocatorFactory.equals(forImplicitField.fieldLocatorFactory);
                        }
                        return false;
                    }

                    public int hashCode() {
                        return (((getClass().hashCode() * 31) + this.name.hashCode()) * 31) + this.fieldLocatorFactory.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.ForField.Location
                    public FieldDescription resolve(TypeDescription typeDescription) {
                        FieldLocator.Resolution locate = this.fieldLocatorFactory.make(typeDescription).locate(this.name);
                        if (locate.isResolved()) {
                            return locate.getField();
                        }
                        throw new IllegalStateException("Could not locate field name " + this.name + " on " + typeDescription);
                    }

                    public ForImplicitField(String str, FieldLocator.Factory factory) {
                        this.name = str;
                        this.fieldLocatorFactory = factory;
                    }
                }

                FieldDescription resolve(TypeDescription typeDescription);

                @HashCodeAndEqualsPlugin.Enhance
                /* loaded from: classes.dex */
                public static class ForExplicitField implements Location {
                    private final FieldDescription fieldDescription;

                    public boolean equals(@MaybeNull Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((ForExplicitField) obj).fieldDescription);
                    }

                    public int hashCode() {
                        return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
                    }

                    @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.ForField.Location
                    public FieldDescription resolve(TypeDescription typeDescription) {
                        return this.fieldDescription;
                    }

                    public ForExplicitField(FieldDescription fieldDescription) {
                        this.fieldDescription = fieldDescription;
                    }
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((ForField) obj).fieldDescription);
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
            public TypeDescription getTypeDescription() {
                return this.fieldDescription.getType().asErasure();
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler
            public Resolved resolve(MethodDescription methodDescription) {
                return this;
            }

            public ForField(FieldDescription fieldDescription) {
                this.fieldDescription = fieldDescription;
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
            public StackManipulation toStackManipulation(MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                StackManipulation stackManipulation;
                if (methodDescription.isMethod() && methodDescription.isVirtual() && methodDescription.isVisibleTo(this.fieldDescription.getType().asErasure())) {
                    StackManipulation assign = assigner.assign(this.fieldDescription.getType(), methodDescription.getDeclaringType().asGenericType(), typing);
                    if (assign.isValid()) {
                        StackManipulation[] stackManipulationArr = new StackManipulation[3];
                        if (!methodDescription.isStatic() && !this.fieldDescription.isStatic()) {
                            stackManipulation = MethodVariableAccess.loadThis();
                        } else {
                            stackManipulation = StackManipulation.Trivial.INSTANCE;
                        }
                        stackManipulationArr[0] = stackManipulation;
                        stackManipulationArr[1] = FieldAccess.forField(this.fieldDescription).read();
                        stackManipulationArr[2] = assign;
                        return new StackManipulation.Compound(stackManipulationArr);
                    }
                    throw new IllegalStateException("Cannot invoke " + methodDescription + " on " + this.fieldDescription);
                }
                throw new IllegalStateException("Cannot invoke " + methodDescription + " on " + this.fieldDescription);
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class ForSelfOrStaticInvocation implements TargetHandler {
            private final TypeDescription instrumentedType;

            /* loaded from: classes.dex */
            public enum Factory implements Factory {
                INSTANCE;

                @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Factory
                public TargetHandler make(Implementation.Target target) {
                    return new ForSelfOrStaticInvocation(target.getInstrumentedType());
                }

                @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
                public InstrumentedType prepare(InstrumentedType instrumentedType) {
                    return instrumentedType;
                }
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Resolved implements Resolved {
                private final MethodDescription instrumentedMethod;
                private final TypeDescription instrumentedType;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj != null && getClass() == obj.getClass()) {
                        Resolved resolved = (Resolved) obj;
                        return this.instrumentedType.equals(resolved.instrumentedType) && this.instrumentedMethod.equals(resolved.instrumentedMethod);
                    }
                    return false;
                }

                @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
                public TypeDescription getTypeDescription() {
                    return this.instrumentedType;
                }

                public int hashCode() {
                    return (((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + this.instrumentedMethod.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
                @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public StackManipulation toStackManipulation(MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                    StackManipulation loadThis;
                    StackManipulation stackManipulation;
                    if (this.instrumentedMethod.isStatic() && !methodDescription.isStatic() && !methodDescription.isConstructor()) {
                        throw new IllegalStateException("Cannot invoke " + methodDescription + " from " + this.instrumentedMethod);
                    } else if (methodDescription.isConstructor() && (!this.instrumentedMethod.isConstructor() || (!this.instrumentedType.equals(methodDescription.getDeclaringType().asErasure()) && (this.instrumentedType.getSuperClass() == null || !this.instrumentedType.getSuperClass().asErasure().equals(methodDescription.getDeclaringType().asErasure()))))) {
                        throw new IllegalStateException("Cannot invoke " + methodDescription + " from " + this.instrumentedMethod + " in " + this.instrumentedType);
                    } else {
                        StackManipulation[] stackManipulationArr = new StackManipulation[2];
                        if (methodDescription.isStatic()) {
                            loadThis = StackManipulation.Trivial.INSTANCE;
                        } else {
                            loadThis = MethodVariableAccess.loadThis();
                        }
                        stackManipulationArr[0] = loadThis;
                        if (methodDescription.isConstructor()) {
                            stackManipulation = Duplication.SINGLE;
                        } else {
                            stackManipulation = StackManipulation.Trivial.INSTANCE;
                        }
                        stackManipulationArr[1] = stackManipulation;
                        return new StackManipulation.Compound(stackManipulationArr);
                    }
                }

                public Resolved(TypeDescription typeDescription, MethodDescription methodDescription) {
                    this.instrumentedType = typeDescription;
                    this.instrumentedMethod = methodDescription;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((ForSelfOrStaticInvocation) obj).instrumentedType);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler
            public Resolved resolve(MethodDescription methodDescription) {
                return new Resolved(this.instrumentedType, methodDescription);
            }

            public ForSelfOrStaticInvocation(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Simple implements TargetHandler, Factory, Resolved {
            private final StackManipulation stackManipulation;
            private final TypeDescription typeDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Simple simple = (Simple) obj;
                    return this.typeDescription.equals(simple.typeDescription) && this.stackManipulation.equals(simple.stackManipulation);
                }
                return false;
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
            public TypeDescription getTypeDescription() {
                return this.typeDescription;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.typeDescription.hashCode()) * 31) + this.stackManipulation.hashCode();
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Factory
            public TargetHandler make(Implementation.Target target) {
                return this;
            }

            @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
            public InstrumentedType prepare(InstrumentedType instrumentedType) {
                return instrumentedType;
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler
            public Resolved resolve(MethodDescription methodDescription) {
                return this;
            }

            @Override // net.bytebuddy.implementation.MethodCall.TargetHandler.Resolved
            public StackManipulation toStackManipulation(MethodDescription methodDescription, Assigner assigner, Assigner.Typing typing) {
                return this.stackManipulation;
            }

            public Simple(TypeDescription typeDescription, StackManipulation stackManipulation) {
                this.typeDescription = typeDescription;
                this.stackManipulation = stackManipulation;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface TerminationHandler {

        /* loaded from: classes.dex */
        public interface Factory {
            TerminationHandler make(TypeDescription typeDescription);
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class FieldSetting implements TerminationHandler {
            private final FieldDescription fieldDescription;

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Explicit implements Factory {
                private final FieldDescription fieldDescription;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((Explicit) obj).fieldDescription);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.TerminationHandler.Factory
                @SuppressFBWarnings(justification = "Assuming declaring type for type member.", value = {"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
                public TerminationHandler make(TypeDescription typeDescription) {
                    if (!this.fieldDescription.isStatic() && !typeDescription.isAssignableTo(this.fieldDescription.getDeclaringType().asErasure())) {
                        throw new IllegalStateException("Cannot set " + this.fieldDescription + " from " + typeDescription);
                    } else if (this.fieldDescription.isVisibleTo(typeDescription)) {
                        return new FieldSetting(this.fieldDescription);
                    } else {
                        throw new IllegalStateException("Cannot access " + this.fieldDescription + " from " + typeDescription);
                    }
                }

                public Explicit(FieldDescription fieldDescription) {
                    this.fieldDescription = fieldDescription;
                }
            }

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.fieldDescription.equals(((FieldSetting) obj).fieldDescription);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.fieldDescription.hashCode();
            }

            @HashCodeAndEqualsPlugin.Enhance
            /* loaded from: classes.dex */
            public static class Implicit implements Factory {
                private final ElementMatcher<? super FieldDescription> matcher;

                public boolean equals(@MaybeNull Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return obj != null && getClass() == obj.getClass() && this.matcher.equals(((Implicit) obj).matcher);
                }

                public int hashCode() {
                    return (getClass().hashCode() * 31) + this.matcher.hashCode();
                }

                @Override // net.bytebuddy.implementation.MethodCall.TerminationHandler.Factory
                public TerminationHandler make(TypeDescription typeDescription) {
                    TypeDescription.Generic superClass;
                    TypeDescription typeDescription2 = typeDescription;
                    do {
                        FieldList filter = typeDescription2.getDeclaredFields().filter(ElementMatchers.isVisibleTo(typeDescription).and(this.matcher));
                        if (filter.size() == 1) {
                            return new FieldSetting((FieldDescription) filter.getOnly());
                        }
                        if (filter.size() != 2) {
                            superClass = typeDescription2.getSuperClass();
                            typeDescription2 = superClass;
                        } else {
                            throw new IllegalStateException(this.matcher + " is ambiguous and resolved: " + filter);
                        }
                    } while (superClass != null);
                    throw new IllegalStateException(this.matcher + " does not locate any accessible fields for " + typeDescription);
                }

                public Implicit(ElementMatcher<? super FieldDescription> elementMatcher) {
                    this.matcher = elementMatcher;
                }
            }

            @Override // net.bytebuddy.implementation.MethodCall.TerminationHandler
            public StackManipulation prepare() {
                if (this.fieldDescription.isStatic()) {
                    return StackManipulation.Trivial.INSTANCE;
                }
                return MethodVariableAccess.loadThis();
            }

            public FieldSetting(FieldDescription fieldDescription) {
                this.fieldDescription = fieldDescription;
            }

            @Override // net.bytebuddy.implementation.MethodCall.TerminationHandler
            public StackManipulation toStackManipulation(MethodDescription methodDescription, MethodDescription methodDescription2, Assigner assigner, Assigner.Typing typing) {
                TypeDescription.Generic returnType;
                if (methodDescription.isConstructor()) {
                    returnType = methodDescription.getDeclaringType().asGenericType();
                } else {
                    returnType = methodDescription.getReturnType();
                }
                StackManipulation assign = assigner.assign(returnType, this.fieldDescription.getType(), typing);
                if (assign.isValid()) {
                    return new StackManipulation.Compound(assign, FieldAccess.forField(this.fieldDescription).write());
                }
                throw new IllegalStateException("Cannot assign result of " + methodDescription + " to " + this.fieldDescription);
            }
        }

        /* loaded from: classes.dex */
        public enum Simple implements TerminationHandler, Factory {
            RETURNING { // from class: net.bytebuddy.implementation.MethodCall.TerminationHandler.Simple.1
                @Override // net.bytebuddy.implementation.MethodCall.TerminationHandler
                public StackManipulation toStackManipulation(MethodDescription methodDescription, MethodDescription methodDescription2, Assigner assigner, Assigner.Typing typing) {
                    TypeDescription.Generic returnType;
                    if (methodDescription.isConstructor()) {
                        returnType = methodDescription.getDeclaringType().asGenericType();
                    } else {
                        returnType = methodDescription.getReturnType();
                    }
                    StackManipulation assign = assigner.assign(returnType, methodDescription2.getReturnType(), typing);
                    if (assign.isValid()) {
                        return new StackManipulation.Compound(assign, MethodReturn.m14940of(methodDescription2.getReturnType()));
                    }
                    throw new IllegalStateException("Cannot return " + methodDescription.getReturnType() + " from " + methodDescription2);
                }
            },
            DROPPING { // from class: net.bytebuddy.implementation.MethodCall.TerminationHandler.Simple.2
                @Override // net.bytebuddy.implementation.MethodCall.TerminationHandler
                public StackManipulation toStackManipulation(MethodDescription methodDescription, MethodDescription methodDescription2, Assigner assigner, Assigner.Typing typing) {
                    TypeDefinition returnType;
                    if (methodDescription.isConstructor()) {
                        returnType = methodDescription.getDeclaringType();
                    } else {
                        returnType = methodDescription.getReturnType();
                    }
                    return Removal.m14979of(returnType);
                }
            },
            IGNORING { // from class: net.bytebuddy.implementation.MethodCall.TerminationHandler.Simple.3
                @Override // net.bytebuddy.implementation.MethodCall.TerminationHandler
                public StackManipulation toStackManipulation(MethodDescription methodDescription, MethodDescription methodDescription2, Assigner assigner, Assigner.Typing typing) {
                    return StackManipulation.Trivial.INSTANCE;
                }
            };

            @Override // net.bytebuddy.implementation.MethodCall.TerminationHandler.Factory
            public TerminationHandler make(TypeDescription typeDescription) {
                return this;
            }

            @Override // net.bytebuddy.implementation.MethodCall.TerminationHandler
            public StackManipulation prepare() {
                return StackManipulation.Trivial.INSTANCE;
            }
        }

        StackManipulation prepare();

        StackManipulation toStackManipulation(MethodDescription methodDescription, MethodDescription methodDescription2, Assigner assigner, Assigner.Typing typing);
    }

    /* loaded from: classes.dex */
    public static class WithoutSpecifiedTarget extends MethodCall {
        /* renamed from: on */
        public MethodCall m15058on(Object obj) {
            return m15057on((WithoutSpecifiedTarget) obj, (Class<? super WithoutSpecifiedTarget>) obj.getClass());
        }

        public MethodCall onDefault() {
            return new MethodCall(this.methodLocator, TargetHandler.ForSelfOrStaticInvocation.Factory.INSTANCE, this.argumentLoaders, MethodInvoker.ForDefaultMethodInvocation.Factory.INSTANCE, this.terminationHandler, this.assigner, this.typing);
        }

        public MethodCall onField(String str) {
            return onField(str, FieldLocator.ForClassHierarchy.Factory.INSTANCE);
        }

        public MethodCall onMethodCall(MethodCall methodCall) {
            return new MethodCall(this.methodLocator, new TargetHandler.ForMethodCall.Factory(methodCall), this.argumentLoaders, MethodInvoker.ForVirtualInvocation.WithImplicitType.INSTANCE, this.terminationHandler, this.assigner, this.typing);
        }

        public MethodCall onSuper() {
            return new MethodCall(this.methodLocator, TargetHandler.ForSelfOrStaticInvocation.Factory.INSTANCE, this.argumentLoaders, MethodInvoker.ForSuperMethodInvocation.Factory.INSTANCE, this.terminationHandler, this.assigner, this.typing);
        }

        public WithoutSpecifiedTarget(MethodLocator.Factory factory) {
            super(factory, TargetHandler.ForSelfOrStaticInvocation.Factory.INSTANCE, Collections.emptyList(), MethodInvoker.ForContextualInvocation.Factory.INSTANCE, TerminationHandler.Simple.RETURNING, Assigner.DEFAULT, Assigner.Typing.STATIC);
        }

        /* renamed from: on */
        public <T> MethodCall m15057on(T t, Class<? super T> cls) {
            return new MethodCall(this.methodLocator, new TargetHandler.ForValue.Factory(t, TypeDescription.Generic.OfNonGenericType.ForLoadedType.m15189of(cls)), this.argumentLoaders, new MethodInvoker.ForVirtualInvocation.Factory(TypeDescription.ForLoadedType.m15196of(cls)), this.terminationHandler, this.assigner, this.typing);
        }

        public MethodCall onArgument(int i) {
            if (i >= 0) {
                return new MethodCall(this.methodLocator, new TargetHandler.ForMethodParameter(i), this.argumentLoaders, MethodInvoker.ForVirtualInvocation.WithImplicitType.INSTANCE, this.terminationHandler, this.assigner, this.typing);
            }
            throw new IllegalArgumentException("An argument index cannot be negative: " + i);
        }

        public MethodCall onField(String str, FieldLocator.Factory factory) {
            return new MethodCall(this.methodLocator, new TargetHandler.ForField.Factory(new TargetHandler.ForField.Location.ForImplicitField(str, factory)), this.argumentLoaders, MethodInvoker.ForVirtualInvocation.WithImplicitType.INSTANCE, this.terminationHandler, this.assigner, this.typing);
        }

        public MethodCall onField(Field field) {
            return onField(new FieldDescription.ForLoadedField(field));
        }

        public MethodCall onField(FieldDescription fieldDescription) {
            return new MethodCall(this.methodLocator, new TargetHandler.ForField.Factory(new TargetHandler.ForField.Location.ForExplicitField(fieldDescription)), this.argumentLoaders, MethodInvoker.ForVirtualInvocation.WithImplicitType.INSTANCE, this.terminationHandler, this.assigner, this.typing);
        }

        /* renamed from: on */
        public MethodCall m15056on(StackManipulation stackManipulation, Class<?> cls) {
            return m15055on(stackManipulation, TypeDescription.ForLoadedType.m15196of(cls));
        }

        /* renamed from: on */
        public MethodCall m15055on(StackManipulation stackManipulation, TypeDescription typeDescription) {
            return new MethodCall(this.methodLocator, new TargetHandler.Simple(typeDescription, stackManipulation), this.argumentLoaders, new MethodInvoker.ForVirtualInvocation.Factory(typeDescription), this.terminationHandler, this.assigner, this.typing);
        }
    }

    public static MethodCall construct(Constructor<?> constructor) {
        return construct(new MethodDescription.ForLoadedConstructor(constructor));
    }

    public static WithoutSpecifiedTarget invoke(Method method) {
        return invoke(new MethodDescription.ForLoadedMethod(method));
    }

    public static WithoutSpecifiedTarget invokeSelf() {
        return new WithoutSpecifiedTarget(MethodLocator.ForInstrumentedMethod.INSTANCE);
    }

    public static MethodCall invokeSuper() {
        return invokeSelf().onSuper();
    }

    @Override // net.bytebuddy.implementation.Implementation.Composable
    public Implementation andThen(Implementation implementation) {
        return new Implementation.Compound(new MethodCall(this.methodLocator, this.targetHandler, this.argumentLoaders, this.methodInvoker, TerminationHandler.Simple.DROPPING, this.assigner, this.typing), implementation);
    }

    @Override // net.bytebuddy.implementation.Implementation
    public ByteCodeAppender appender(Implementation.Target target) {
        return new Appender(target, this.terminationHandler.make(target.getInstrumentedType()));
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            MethodCall methodCall = (MethodCall) obj;
            return this.typing.equals(methodCall.typing) && this.methodLocator.equals(methodCall.methodLocator) && this.targetHandler.equals(methodCall.targetHandler) && this.argumentLoaders.equals(methodCall.argumentLoaders) && this.methodInvoker.equals(methodCall.methodInvoker) && this.terminationHandler.equals(methodCall.terminationHandler) && this.assigner.equals(methodCall.assigner);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((getClass().hashCode() * 31) + this.methodLocator.hashCode()) * 31) + this.targetHandler.hashCode()) * 31) + this.argumentLoaders.hashCode()) * 31) + this.methodInvoker.hashCode()) * 31) + this.terminationHandler.hashCode()) * 31) + this.assigner.hashCode()) * 31) + this.typing.hashCode();
    }

    public FieldSetting setsField(Field field) {
        return setsField(new FieldDescription.ForLoadedField(field));
    }

    public MethodCall with(Object... objArr) {
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(ArgumentLoader.ForStackManipulation.m15059of(obj));
        }
        return with(arrayList);
    }

    public MethodCall withAllArguments() {
        return with(ArgumentLoader.ForMethodParameter.OfInstrumentedMethod.INSTANCE);
    }

    public MethodCall withArgumentArray() {
        return with(ArgumentLoader.ForMethodParameterArray.ForInstrumentedMethod.INSTANCE);
    }

    public MethodCall withArgumentArrayElements(int i) {
        if (i >= 0) {
            return with(new ArgumentLoader.ForMethodParameterArrayElement.OfInvokedMethod(i));
        }
        throw new IllegalArgumentException("A parameter index cannot be negative: " + i);
    }

    public Implementation.Composable withAssigner(Assigner assigner, Assigner.Typing typing) {
        return new MethodCall(this.methodLocator, this.targetHandler, this.argumentLoaders, this.methodInvoker, this.terminationHandler, assigner, typing);
    }

    public MethodCall withField(String... strArr) {
        return withField(FieldLocator.ForClassHierarchy.Factory.INSTANCE, strArr);
    }

    public MethodCall withMethodCall(MethodCall methodCall) {
        return with(new ArgumentLoader.ForMethodCall.Factory(methodCall));
    }

    public MethodCall withOwnType() {
        return with(ArgumentLoader.ForInstrumentedType.Factory.INSTANCE);
    }

    public MethodCall withThis() {
        return with(ArgumentLoader.ForThisReference.Factory.INSTANCE);
    }

    public static Implementation.Composable call(Callable<?> callable) {
        try {
            return invoke(Callable.class.getMethod("call", new Class[0])).m15057on((WithoutSpecifiedTarget) callable, (Class<? super WithoutSpecifiedTarget>) Callable.class).withAssigner(Assigner.DEFAULT, Assigner.Typing.DYNAMIC);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException("Could not locate Callable::call method", e);
        }
    }

    public static MethodCall construct(MethodDescription methodDescription) {
        if (methodDescription.isConstructor()) {
            return new MethodCall(new MethodLocator.ForExplicitMethod(methodDescription), TargetHandler.ForConstructingInvocation.Factory.INSTANCE, Collections.emptyList(), MethodInvoker.ForContextualInvocation.Factory.INSTANCE, TerminationHandler.Simple.RETURNING, Assigner.DEFAULT, Assigner.Typing.STATIC);
        }
        throw new IllegalArgumentException("Not a constructor: " + methodDescription);
    }

    public static WithoutSpecifiedTarget invoke(Constructor<?> constructor) {
        return invoke(new MethodDescription.ForLoadedConstructor(constructor));
    }

    public static Implementation.Composable run(Runnable runnable) {
        try {
            return invoke(Runnable.class.getMethod("run", new Class[0])).m15057on((WithoutSpecifiedTarget) runnable, (Class<? super WithoutSpecifiedTarget>) Runnable.class).withAssigner(Assigner.DEFAULT, Assigner.Typing.DYNAMIC);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException("Could not locate Runnable::run method", e);
        }
    }

    @Override // net.bytebuddy.implementation.Implementation.Composable
    public Implementation.Composable andThen(Implementation.Composable composable) {
        return new Implementation.Compound.Composable(new MethodCall(this.methodLocator, this.targetHandler, this.argumentLoaders, this.methodInvoker, TerminationHandler.Simple.DROPPING, this.assigner, this.typing), composable);
    }

    @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
    public InstrumentedType prepare(InstrumentedType instrumentedType) {
        for (ArgumentLoader.Factory factory : this.argumentLoaders) {
            instrumentedType = factory.prepare(instrumentedType);
        }
        return this.targetHandler.prepare(instrumentedType);
    }

    public FieldSetting setsField(FieldDescription fieldDescription) {
        return new FieldSetting(new MethodCall(this.methodLocator, this.targetHandler, this.argumentLoaders, this.methodInvoker, new TerminationHandler.FieldSetting.Explicit(fieldDescription), this.assigner, this.typing));
    }

    public MethodCall withArgument(int... iArr) {
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            if (i >= 0) {
                arrayList.add(new ArgumentLoader.ForMethodParameter.Factory(i));
            } else {
                throw new IllegalArgumentException("Negative index: " + i);
            }
        }
        return with(arrayList);
    }

    public MethodCall withField(FieldLocator.Factory factory, String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(new ArgumentLoader.ForField.Factory(str, factory));
        }
        return with(arrayList);
    }

    public MethodCall withReference(Object... objArr) {
        Object factory;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            if (obj == null) {
                factory = ArgumentLoader.ForNullConstant.INSTANCE;
            } else {
                factory = new ArgumentLoader.ForInstance.Factory(obj);
            }
            arrayList.add(factory);
        }
        return with(arrayList);
    }

    public MethodCall(MethodLocator.Factory factory, TargetHandler.Factory factory2, List<ArgumentLoader.Factory> list, MethodInvoker.Factory factory3, TerminationHandler.Factory factory4, Assigner assigner, Assigner.Typing typing) {
        this.methodLocator = factory;
        this.targetHandler = factory2;
        this.argumentLoaders = list;
        this.methodInvoker = factory3;
        this.terminationHandler = factory4;
        this.assigner = assigner;
        this.typing = typing;
    }

    public static WithoutSpecifiedTarget invoke(MethodDescription methodDescription) {
        return invoke(new MethodLocator.ForExplicitMethod(methodDescription));
    }

    public FieldSetting setsField(ElementMatcher<? super FieldDescription> elementMatcher) {
        return new FieldSetting(new MethodCall(this.methodLocator, this.targetHandler, this.argumentLoaders, this.methodInvoker, new TerminationHandler.FieldSetting.Implicit(elementMatcher), this.assigner, this.typing));
    }

    public MethodCall withArgumentArrayElements(int i, int i2) {
        return withArgumentArrayElements(i, 0, i2);
    }

    public static WithoutSpecifiedTarget invoke(ElementMatcher<? super MethodDescription> elementMatcher) {
        return invoke(elementMatcher, MethodGraph.Compiler.DEFAULT);
    }

    public MethodCall withArgumentArrayElements(int i, int i2, int i3) {
        if (i < 0) {
            throw new IllegalArgumentException("A parameter index cannot be negative: " + i);
        } else if (i2 < 0) {
            throw new IllegalArgumentException("An array index cannot be negative: " + i2);
        } else if (i3 == 0) {
            return this;
        } else {
            if (i3 >= 0) {
                ArrayList arrayList = new ArrayList(i3);
                for (int i4 = 0; i4 < i3; i4++) {
                    arrayList.add(new ArgumentLoader.ForMethodParameterArrayElement.OfParameter(i, i2 + i4));
                }
                return with(arrayList);
            }
            throw new IllegalArgumentException("Size cannot be negative: " + i3);
        }
    }

    public static WithoutSpecifiedTarget invoke(ElementMatcher<? super MethodDescription> elementMatcher, MethodGraph.Compiler compiler) {
        return invoke(new MethodLocator.ForElementMatcher.Factory(elementMatcher, compiler));
    }

    public MethodCall with(TypeDescription... typeDescriptionArr) {
        ArrayList arrayList = new ArrayList(typeDescriptionArr.length);
        for (TypeDescription typeDescription : typeDescriptionArr) {
            arrayList.add(new ArgumentLoader.ForStackManipulation(ClassConstant.m14958of(typeDescription), Class.class));
        }
        return with(arrayList);
    }

    public static WithoutSpecifiedTarget invoke(MethodLocator.Factory factory) {
        return new WithoutSpecifiedTarget(factory);
    }

    public MethodCall with(EnumerationDescription... enumerationDescriptionArr) {
        ArrayList arrayList = new ArrayList(enumerationDescriptionArr.length);
        for (EnumerationDescription enumerationDescription : enumerationDescriptionArr) {
            arrayList.add(new ArgumentLoader.ForStackManipulation(FieldAccess.forEnumeration(enumerationDescription), enumerationDescription.getEnumerationType()));
        }
        return with(arrayList);
    }

    public MethodCall with(JavaConstant... javaConstantArr) {
        ArrayList arrayList = new ArrayList(javaConstantArr.length);
        for (JavaConstant javaConstant : javaConstantArr) {
            arrayList.add(new ArgumentLoader.ForStackManipulation(new JavaConstantValue(javaConstant), javaConstant.getTypeDescription()));
        }
        return with(arrayList);
    }

    public MethodCall with(StackManipulation stackManipulation, Type type) {
        return with(stackManipulation, TypeDefinition.Sort.describe(type));
    }

    public MethodCall with(StackManipulation stackManipulation, TypeDefinition typeDefinition) {
        return with(new ArgumentLoader.ForStackManipulation(stackManipulation, typeDefinition));
    }

    public MethodCall with(ArgumentLoader.Factory... factoryArr) {
        return with(Arrays.asList(factoryArr));
    }

    public MethodCall with(List<? extends ArgumentLoader.Factory> list) {
        return new MethodCall(this.methodLocator, this.targetHandler, CompoundList.m14776of((List) this.argumentLoaders, (List) list), this.methodInvoker, this.terminationHandler, this.assigner, this.typing);
    }
}
