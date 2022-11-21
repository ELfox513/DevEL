package net.bytebuddy.implementation;

import java.lang.reflect.InvocationHandler;
import java.util.ArrayList;
import java.util.List;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.description.type.TypeList;
import net.bytebuddy.dynamic.scaffold.FieldLocator;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.LoadedTypeInitializer;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.Removal;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.collection.ArrayFactory;
import net.bytebuddy.implementation.bytecode.constant.MethodConstant;
import net.bytebuddy.implementation.bytecode.constant.NullConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public abstract class InvocationHandlerAdapter implements Implementation.Composable {
    private static final boolean CACHED = true;
    private static final boolean DROPPING = false;
    private static final TypeDescription.Generic INVOCATION_HANDLER_TYPE = TypeDescription.Generic.OfNonGenericType.ForLoadedType.m15189of(InvocationHandler.class);
    private static final boolean PRIVILEGED = true;
    private static final boolean RETURNING = true;
    private static final boolean UNCACHED = false;
    private static final boolean UNPRIVILEGED = false;
    public final Assigner assigner;
    public final boolean cached;
    public final String fieldName;
    public final boolean privileged;
    public final boolean returning;

    /* loaded from: classes.dex */
    public interface AssignerConfigurable extends Implementation.Composable {
        Implementation.Composable withAssigner(Assigner assigner);
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForField extends InvocationHandlerAdapter implements WithoutPrivilegeConfiguration {
        private final FieldLocator.Factory fieldLocatorFactory;

        @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
        /* loaded from: classes.dex */
        public class Appender implements ByteCodeAppender {
            private final FieldDescription fieldDescription;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Appender appender = (Appender) obj;
                    return this.fieldDescription.equals(appender.fieldDescription) && ForField.this.equals(ForField.this);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.fieldDescription.hashCode()) * 31) + ForField.this.hashCode();
            }

            public Appender(FieldDescription fieldDescription) {
                this.fieldDescription = fieldDescription;
            }

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                StackManipulation loadThis;
                ForField forField = ForField.this;
                if (this.fieldDescription.isStatic()) {
                    loadThis = StackManipulation.Trivial.INSTANCE;
                } else {
                    loadThis = MethodVariableAccess.loadThis();
                }
                return forField.apply(methodVisitor, context, methodDescription, loadThis, this.fieldDescription);
            }
        }

        @Override // net.bytebuddy.implementation.Implementation.Composable
        public Implementation andThen(Implementation implementation) {
            return new Implementation.Compound(new ForField(this.fieldName, this.cached, this.privileged, false, this.assigner, this.fieldLocatorFactory), implementation);
        }

        @Override // net.bytebuddy.implementation.InvocationHandlerAdapter
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.fieldLocatorFactory.equals(((ForField) obj).fieldLocatorFactory);
            }
            return false;
        }

        @Override // net.bytebuddy.implementation.InvocationHandlerAdapter
        public int hashCode() {
            return (super.hashCode() * 31) + this.fieldLocatorFactory.hashCode();
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType;
        }

        @Override // net.bytebuddy.implementation.InvocationHandlerAdapter, net.bytebuddy.implementation.InvocationHandlerAdapter.WithoutPrivilegeConfiguration
        public AssignerConfigurable withPrivilegedLookup() {
            return new ForField(this.fieldName, this.cached, true, this.returning, this.assigner, this.fieldLocatorFactory);
        }

        @Override // net.bytebuddy.implementation.InvocationHandlerAdapter
        public WithoutPrivilegeConfiguration withoutMethodCache() {
            return new ForField(this.fieldName, false, this.privileged, this.returning, this.assigner, this.fieldLocatorFactory);
        }

        @Override // net.bytebuddy.implementation.Implementation.Composable
        public Implementation.Composable andThen(Implementation.Composable composable) {
            return new Implementation.Compound.Composable(new ForField(this.fieldName, this.cached, this.privileged, false, this.assigner, this.fieldLocatorFactory), composable);
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            FieldLocator.Resolution locate = this.fieldLocatorFactory.make(target.getInstrumentedType()).locate(this.fieldName);
            if (locate.isResolved()) {
                if (locate.getField().getType().asErasure().isAssignableTo(InvocationHandler.class)) {
                    return new Appender(locate.getField());
                }
                throw new IllegalStateException("Field " + locate.getField() + " does not declare a type that is assignable to invocation handler");
            }
            throw new IllegalStateException("Could not find a field named '" + this.fieldName + "' for " + target.getInstrumentedType());
        }

        @Override // net.bytebuddy.implementation.InvocationHandlerAdapter, net.bytebuddy.implementation.InvocationHandlerAdapter.AssignerConfigurable
        public Implementation.Composable withAssigner(Assigner assigner) {
            return new ForField(this.fieldName, this.cached, this.privileged, this.returning, assigner, this.fieldLocatorFactory);
        }

        public ForField(String str, boolean z, boolean z2, boolean z3, Assigner assigner, FieldLocator.Factory factory) {
            super(str, z, z2, z3, assigner);
            this.fieldLocatorFactory = factory;
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForInstance extends InvocationHandlerAdapter implements WithoutPrivilegeConfiguration {
        private static final String PREFIX = "invocationHandler";
        public final InvocationHandler invocationHandler;

        @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
        /* loaded from: classes.dex */
        public class Appender implements ByteCodeAppender {
            private final TypeDescription instrumentedType;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Appender appender = (Appender) obj;
                    return this.instrumentedType.equals(appender.instrumentedType) && ForInstance.this.equals(ForInstance.this);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.instrumentedType.hashCode()) * 31) + ForInstance.this.hashCode();
            }

            public Appender(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                return ForInstance.this.apply(methodVisitor, context, methodDescription, StackManipulation.Trivial.INSTANCE, (FieldDescription) this.instrumentedType.getDeclaredFields().filter(ElementMatchers.named(ForInstance.this.fieldName).and(ElementMatchers.genericFieldType(InvocationHandlerAdapter.INVOCATION_HANDLER_TYPE))).getOnly());
            }
        }

        @Override // net.bytebuddy.implementation.Implementation.Composable
        public Implementation andThen(Implementation implementation) {
            return new Implementation.Compound(new ForInstance(this.fieldName, this.cached, this.privileged, false, this.assigner, this.invocationHandler), implementation);
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return new Appender(target.getInstrumentedType());
        }

        @Override // net.bytebuddy.implementation.InvocationHandlerAdapter
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.invocationHandler.equals(((ForInstance) obj).invocationHandler);
            }
            return false;
        }

        @Override // net.bytebuddy.implementation.InvocationHandlerAdapter
        public int hashCode() {
            return (super.hashCode() * 31) + this.invocationHandler.hashCode();
        }

        @Override // net.bytebuddy.implementation.InvocationHandlerAdapter, net.bytebuddy.implementation.InvocationHandlerAdapter.WithoutPrivilegeConfiguration
        public AssignerConfigurable withPrivilegedLookup() {
            return new ForInstance(this.fieldName, this.cached, true, this.returning, this.assigner, this.invocationHandler);
        }

        @Override // net.bytebuddy.implementation.InvocationHandlerAdapter
        public WithoutPrivilegeConfiguration withoutMethodCache() {
            return new ForInstance(this.fieldName, false, this.privileged, this.returning, this.assigner, this.invocationHandler);
        }

        @Override // net.bytebuddy.implementation.Implementation.Composable
        public Implementation.Composable andThen(Implementation.Composable composable) {
            return new Implementation.Compound.Composable(new ForInstance(this.fieldName, this.cached, this.privileged, false, this.assigner, this.invocationHandler), composable);
        }

        @Override // net.bytebuddy.implementation.InvocationHandlerAdapter, net.bytebuddy.implementation.InvocationHandlerAdapter.AssignerConfigurable
        public Implementation.Composable withAssigner(Assigner assigner) {
            return new ForInstance(this.fieldName, this.cached, this.privileged, this.returning, assigner, this.invocationHandler);
        }

        public ForInstance(String str, boolean z, boolean z2, boolean z3, Assigner assigner, InvocationHandler invocationHandler) {
            super(str, z, z2, z3, assigner);
            this.invocationHandler = invocationHandler;
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            if (instrumentedType.getDeclaredFields().filter(ElementMatchers.named(this.fieldName).and(ElementMatchers.fieldType(InvocationHandlerAdapter.INVOCATION_HANDLER_TYPE.asErasure()))).isEmpty()) {
                return instrumentedType.withField(new FieldDescription.Token(this.fieldName, 4169, InvocationHandlerAdapter.INVOCATION_HANDLER_TYPE)).withInitializer(new LoadedTypeInitializer.ForStaticField(this.fieldName, this.invocationHandler));
            }
            throw new IllegalStateException("Field with name " + this.fieldName + " and type " + InvocationHandlerAdapter.INVOCATION_HANDLER_TYPE.asErasure() + " already declared by " + instrumentedType);
        }
    }

    /* loaded from: classes.dex */
    public interface WithoutPrivilegeConfiguration extends AssignerConfigurable {
        AssignerConfigurable withPrivilegedLookup();
    }

    /* renamed from: of */
    public static InvocationHandlerAdapter m15068of(InvocationHandler invocationHandler) {
        return m15067of(invocationHandler, "invocationHandler$" + RandomString.hashOf(invocationHandler));
    }

    public static InvocationHandlerAdapter toField(String str) {
        return toField(str, FieldLocator.ForClassHierarchy.Factory.INSTANCE);
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            InvocationHandlerAdapter invocationHandlerAdapter = (InvocationHandlerAdapter) obj;
            return this.cached == invocationHandlerAdapter.cached && this.privileged == invocationHandlerAdapter.privileged && this.returning == invocationHandlerAdapter.returning && this.fieldName.equals(invocationHandlerAdapter.fieldName) && this.assigner.equals(invocationHandlerAdapter.assigner);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((getClass().hashCode() * 31) + this.fieldName.hashCode()) * 31) + (this.cached ? 1 : 0)) * 31) + (this.privileged ? 1 : 0)) * 31) + (this.returning ? 1 : 0)) * 31) + this.assigner.hashCode();
    }

    public abstract Implementation withAssigner(Assigner assigner);

    public abstract AssignerConfigurable withPrivilegedLookup();

    public abstract WithoutPrivilegeConfiguration withoutMethodCache();

    /* renamed from: of */
    public static InvocationHandlerAdapter m15067of(InvocationHandler invocationHandler, String str) {
        return new ForInstance(str, true, false, true, Assigner.DEFAULT, invocationHandler);
    }

    public static InvocationHandlerAdapter toField(String str, FieldLocator.Factory factory) {
        return new ForField(str, true, false, true, Assigner.DEFAULT, factory);
    }

    public InvocationHandlerAdapter(String str, boolean z, boolean z2, boolean z3, Assigner assigner) {
        this.fieldName = str;
        this.cached = z;
        this.privileged = z2;
        this.returning = z3;
        this.assigner = assigner;
    }

    private List<StackManipulation> argumentValuesOf(MethodDescription methodDescription) {
        TypeList.Generic asTypeList = methodDescription.getParameters().asTypeList();
        ArrayList arrayList = new ArrayList(asTypeList.size());
        int i = 1;
        for (TypeDescription.Generic generic : asTypeList) {
            arrayList.add(new StackManipulation.Compound(MethodVariableAccess.m14936of(generic).loadFrom(i), this.assigner.assign(generic, TypeDescription.Generic.OBJECT, Assigner.Typing.STATIC)));
            i += generic.getStackSize().getSize();
        }
        return arrayList;
    }

    public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription, StackManipulation stackManipulation, FieldDescription fieldDescription) {
        MethodConstant.CanCache canCache;
        StackManipulation withValues;
        StackManipulation stackManipulation2;
        if (!methodDescription.isStatic() && !methodDescription.isConstructor()) {
            if (this.privileged) {
                canCache = MethodConstant.ofPrivileged(methodDescription.asDefined());
            } else {
                canCache = MethodConstant.m14952of(methodDescription.asDefined());
            }
            StackManipulation[] stackManipulationArr = new StackManipulation[7];
            stackManipulationArr[0] = stackManipulation;
            stackManipulationArr[1] = FieldAccess.forField(fieldDescription).read();
            stackManipulationArr[2] = MethodVariableAccess.loadThis();
            StackManipulation stackManipulation3 = canCache;
            if (this.cached) {
                stackManipulation3 = canCache.cached();
            }
            stackManipulationArr[3] = stackManipulation3;
            if (methodDescription.getParameters().isEmpty()) {
                withValues = NullConstant.INSTANCE;
            } else {
                withValues = ArrayFactory.forType(TypeDescription.Generic.OBJECT).withValues(argumentValuesOf(methodDescription));
            }
            stackManipulationArr[4] = withValues;
            stackManipulationArr[5] = MethodInvocation.invoke((MethodDescription) INVOCATION_HANDLER_TYPE.getDeclaredMethods().filter(ElementMatchers.isAbstract()).getOnly());
            if (this.returning) {
                stackManipulation2 = new StackManipulation.Compound(this.assigner.assign(TypeDescription.Generic.OBJECT, methodDescription.getReturnType(), Assigner.Typing.DYNAMIC), MethodReturn.m14940of(methodDescription.getReturnType()));
            } else {
                stackManipulation2 = Removal.SINGLE;
            }
            stackManipulationArr[6] = stackManipulation2;
            return new ByteCodeAppender.Size(new StackManipulation.Compound(stackManipulationArr).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
        }
        throw new IllegalStateException("It is not possible to apply an invocation handler onto the static method or constructor " + methodDescription);
    }
}
