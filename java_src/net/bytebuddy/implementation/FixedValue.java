package net.bytebuddy.implementation;

import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.field.FieldDescription;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.method.ParameterDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.assign.Assigner;
import net.bytebuddy.implementation.bytecode.constant.ClassConstant;
import net.bytebuddy.implementation.bytecode.constant.DoubleConstant;
import net.bytebuddy.implementation.bytecode.constant.FloatConstant;
import net.bytebuddy.implementation.bytecode.constant.IntegerConstant;
import net.bytebuddy.implementation.bytecode.constant.JavaConstantValue;
import net.bytebuddy.implementation.bytecode.constant.LongConstant;
import net.bytebuddy.implementation.bytecode.constant.NullConstant;
import net.bytebuddy.implementation.bytecode.constant.TextConstant;
import net.bytebuddy.implementation.bytecode.member.FieldAccess;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.implementation.bytecode.member.MethodVariableAccess;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.matcher.ElementMatchers;
import net.bytebuddy.utility.JavaConstant;
import net.bytebuddy.utility.JavaType;
import net.bytebuddy.utility.RandomString;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public abstract class FixedValue implements Implementation {
    public final Assigner assigner;
    public final Assigner.Typing typing;

    /* loaded from: classes.dex */
    public interface AssignerConfigurable extends Implementation {
        Implementation withAssigner(Assigner assigner, Assigner.Typing typing);
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForArgument extends FixedValue implements AssignerConfigurable, ByteCodeAppender {
        private final int index;

        public ForArgument(int i) {
            this(Assigner.DEFAULT, Assigner.Typing.STATIC, i);
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return this;
        }

        @Override // net.bytebuddy.implementation.FixedValue
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.index == ((ForArgument) obj).index;
            }
            return false;
        }

        @Override // net.bytebuddy.implementation.FixedValue
        public int hashCode() {
            return (super.hashCode() * 31) + this.index;
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType;
        }

        @Override // net.bytebuddy.implementation.FixedValue.AssignerConfigurable
        public Implementation withAssigner(Assigner assigner, Assigner.Typing typing) {
            return new ForArgument(assigner, typing, this.index);
        }

        private ForArgument(Assigner assigner, Assigner.Typing typing, int i) {
            super(assigner, typing);
            this.index = i;
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            if (methodDescription.getParameters().size() > this.index) {
                ParameterDescription parameterDescription = (ParameterDescription) methodDescription.getParameters().get(this.index);
                StackManipulation.Compound compound = new StackManipulation.Compound(MethodVariableAccess.load(parameterDescription), this.assigner.assign(parameterDescription.getType(), methodDescription.getReturnType(), this.typing), MethodReturn.m14940of(methodDescription.getReturnType()));
                if (compound.isValid()) {
                    return new ByteCodeAppender.Size(compound.apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
                }
                throw new IllegalStateException("Cannot assign " + methodDescription.getReturnType() + " to " + parameterDescription);
            }
            throw new IllegalStateException(methodDescription + " does not define a parameter with index " + this.index);
        }
    }

    /* loaded from: classes.dex */
    public static class ForOriginType extends FixedValue implements AssignerConfigurable {

        @HashCodeAndEqualsPlugin.Enhance(includeSyntheticFields = true)
        /* loaded from: classes.dex */
        public class Appender implements ByteCodeAppender {
            private final TypeDescription originType;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    Appender appender = (Appender) obj;
                    return this.originType.equals(appender.originType) && ForOriginType.this.equals(ForOriginType.this);
                }
                return false;
            }

            public int hashCode() {
                return (((getClass().hashCode() * 31) + this.originType.hashCode()) * 31) + ForOriginType.this.hashCode();
            }

            public Appender(TypeDescription typeDescription) {
                this.originType = typeDescription;
            }

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                return ForOriginType.this.apply(methodVisitor, context, methodDescription, TypeDescription.CLASS.asGenericType(), ClassConstant.m14958of(this.originType));
            }
        }

        public ForOriginType() {
            this(Assigner.DEFAULT, Assigner.Typing.STATIC);
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return new Appender(target.getOriginType().asErasure());
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType;
        }

        @Override // net.bytebuddy.implementation.FixedValue.AssignerConfigurable
        public Implementation withAssigner(Assigner assigner, Assigner.Typing typing) {
            return new ForOriginType(assigner, typing);
        }

        private ForOriginType(Assigner assigner, Assigner.Typing typing) {
            super(assigner, typing);
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForPoolValue extends FixedValue implements AssignerConfigurable, ByteCodeAppender {
        private final TypeDescription loadedType;
        private final StackManipulation valueLoadInstruction;

        public ForPoolValue(StackManipulation stackManipulation, Class<?> cls) {
            this(stackManipulation, TypeDescription.ForLoadedType.m15196of(cls));
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return this;
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            return apply(methodVisitor, context, methodDescription, this.loadedType.asGenericType(), this.valueLoadInstruction);
        }

        @Override // net.bytebuddy.implementation.FixedValue
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForPoolValue forPoolValue = (ForPoolValue) obj;
                    return this.valueLoadInstruction.equals(forPoolValue.valueLoadInstruction) && this.loadedType.equals(forPoolValue.loadedType);
                }
                return false;
            }
            return false;
        }

        @Override // net.bytebuddy.implementation.FixedValue
        public int hashCode() {
            return (((super.hashCode() * 31) + this.valueLoadInstruction.hashCode()) * 31) + this.loadedType.hashCode();
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType;
        }

        @Override // net.bytebuddy.implementation.FixedValue.AssignerConfigurable
        public Implementation withAssigner(Assigner assigner, Assigner.Typing typing) {
            return new ForPoolValue(assigner, typing, this.valueLoadInstruction, this.loadedType);
        }

        public ForPoolValue(StackManipulation stackManipulation, TypeDescription typeDescription) {
            this(Assigner.DEFAULT, Assigner.Typing.STATIC, stackManipulation, typeDescription);
        }

        private ForPoolValue(Assigner assigner, Assigner.Typing typing, StackManipulation stackManipulation, TypeDescription typeDescription) {
            super(assigner, typing);
            this.valueLoadInstruction = stackManipulation;
            this.loadedType = typeDescription;
        }
    }

    /* loaded from: classes.dex */
    public static class ForThisValue extends FixedValue implements AssignerConfigurable {
        public ForThisValue() {
            super(Assigner.DEFAULT, Assigner.Typing.STATIC);
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return new Appender(target.getInstrumentedType());
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType;
        }

        @Override // net.bytebuddy.implementation.FixedValue.AssignerConfigurable
        public Implementation withAssigner(Assigner assigner, Assigner.Typing typing) {
            return new ForThisValue(assigner, typing);
        }

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public static class Appender implements ByteCodeAppender {
            private final TypeDescription instrumentedType;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.instrumentedType.equals(((Appender) obj).instrumentedType);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.instrumentedType.hashCode();
            }

            public Appender(TypeDescription typeDescription) {
                this.instrumentedType = typeDescription;
            }

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                if (!methodDescription.isStatic() && this.instrumentedType.isAssignableTo(methodDescription.getReturnType().asErasure())) {
                    return new ByteCodeAppender.Simple(MethodVariableAccess.loadThis(), MethodReturn.REFERENCE).apply(methodVisitor, context, methodDescription);
                }
                throw new IllegalStateException("Cannot return 'this' from " + methodDescription);
            }
        }

        private ForThisValue(Assigner assigner, Assigner.Typing typing) {
            super(assigner, typing);
        }
    }

    @HashCodeAndEqualsPlugin.Enhance
    /* loaded from: classes.dex */
    public static class ForValue extends FixedValue implements AssignerConfigurable {
        private static final String PREFIX = "value";
        private final String name;
        private final Object value;

        @HashCodeAndEqualsPlugin.Enhance
        /* loaded from: classes.dex */
        public class StaticFieldByteCodeAppender implements ByteCodeAppender {
            private final StackManipulation fieldGetAccess;

            public boolean equals(@MaybeNull Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && getClass() == obj.getClass() && this.fieldGetAccess.equals(((StaticFieldByteCodeAppender) obj).fieldGetAccess);
            }

            public int hashCode() {
                return (getClass().hashCode() * 31) + this.fieldGetAccess.hashCode();
            }

            private StaticFieldByteCodeAppender(TypeDescription typeDescription) {
                this.fieldGetAccess = FieldAccess.forField((FieldDescription.InDefinedShape) typeDescription.getDeclaredFields().filter(ElementMatchers.named(ForValue.this.name)).getOnly()).read();
            }

            @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
            public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
                ForValue forValue = ForValue.this;
                return forValue.apply(methodVisitor, context, methodDescription, TypeDescription.Generic.OfNonGenericType.ForLoadedType.m15189of(forValue.value.getClass()), this.fieldGetAccess);
            }
        }

        public ForValue(Object obj, String str) {
            this(Assigner.DEFAULT, Assigner.Typing.STATIC, obj, str);
        }

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return new StaticFieldByteCodeAppender(target.getInstrumentedType());
        }

        @Override // net.bytebuddy.implementation.FixedValue
        public boolean equals(@MaybeNull Object obj) {
            if (super.equals(obj)) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && getClass() == obj.getClass()) {
                    ForValue forValue = (ForValue) obj;
                    return this.name.equals(forValue.name) && this.value.equals(forValue.value);
                }
                return false;
            }
            return false;
        }

        @Override // net.bytebuddy.implementation.FixedValue
        public int hashCode() {
            return (((super.hashCode() * 31) + this.name.hashCode()) * 31) + this.value.hashCode();
        }

        @Override // net.bytebuddy.implementation.FixedValue.AssignerConfigurable
        public Implementation withAssigner(Assigner assigner, Assigner.Typing typing) {
            return new ForValue(assigner, typing, this.value, this.name);
        }

        private ForValue(Assigner assigner, Assigner.Typing typing, Object obj, String str) {
            super(assigner, typing);
            this.name = str;
            this.value = obj;
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType.withAuxiliaryField(new FieldDescription.Token(this.name, 4169, TypeDescription.Generic.OfNonGenericType.ForLoadedType.m15189of(this.value.getClass())), this.value);
        }
    }

    public static Implementation nullValue() {
        return ForNullValue.INSTANCE;
    }

    public static AssignerConfigurable originType() {
        return new ForOriginType();
    }

    public static AssignerConfigurable reference(Object obj) {
        return reference(obj, "value$" + RandomString.hashOf(obj));
    }

    public static AssignerConfigurable self() {
        return new ForThisValue();
    }

    public static AssignerConfigurable value(Object obj) {
        if (obj instanceof JavaConstant) {
            return value((JavaConstant) obj);
        }
        if (obj instanceof TypeDescription) {
            return value((TypeDescription) obj);
        }
        Class<?> cls = obj.getClass();
        if (cls == String.class) {
            return new ForPoolValue(new TextConstant((String) obj), TypeDescription.STRING);
        }
        if (cls == Class.class) {
            return new ForPoolValue(ClassConstant.m14958of(TypeDescription.ForLoadedType.m15196of((Class) obj)), TypeDescription.CLASS);
        }
        if (cls == Boolean.class) {
            return new ForPoolValue(IntegerConstant.forValue(((Boolean) obj).booleanValue()), Boolean.TYPE);
        }
        if (cls == Byte.class) {
            return new ForPoolValue(IntegerConstant.forValue(((Byte) obj).byteValue()), Byte.TYPE);
        }
        if (cls == Short.class) {
            return new ForPoolValue(IntegerConstant.forValue(((Short) obj).shortValue()), Short.TYPE);
        }
        if (cls == Character.class) {
            return new ForPoolValue(IntegerConstant.forValue(((Character) obj).charValue()), Character.TYPE);
        }
        if (cls == Integer.class) {
            return new ForPoolValue(IntegerConstant.forValue(((Integer) obj).intValue()), Integer.TYPE);
        }
        if (cls == Long.class) {
            return new ForPoolValue(LongConstant.forValue(((Long) obj).longValue()), Long.TYPE);
        }
        if (cls == Float.class) {
            return new ForPoolValue(FloatConstant.forValue(((Float) obj).floatValue()), Float.TYPE);
        }
        if (cls == Double.class) {
            return new ForPoolValue(DoubleConstant.forValue(((Double) obj).doubleValue()), Double.TYPE);
        }
        if (JavaType.METHOD_HANDLE.getTypeStub().isAssignableFrom(cls)) {
            return new ForPoolValue(new JavaConstantValue(JavaConstant.MethodHandle.ofLoaded(obj)), cls);
        }
        if (JavaType.METHOD_TYPE.getTypeStub().represents(cls)) {
            return new ForPoolValue(new JavaConstantValue(JavaConstant.MethodType.ofLoaded(obj)), cls);
        }
        return reference(obj);
    }

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            FixedValue fixedValue = (FixedValue) obj;
            return this.typing.equals(fixedValue.typing) && this.assigner.equals(fixedValue.assigner);
        }
        return false;
    }

    public int hashCode() {
        return (((getClass().hashCode() * 31) + this.assigner.hashCode()) * 31) + this.typing.hashCode();
    }

    /* loaded from: classes.dex */
    public enum ForNullValue implements Implementation, ByteCodeAppender {
        INSTANCE;

        @Override // net.bytebuddy.implementation.Implementation
        public ByteCodeAppender appender(Implementation.Target target) {
            return this;
        }

        @Override // net.bytebuddy.dynamic.scaffold.InstrumentedType.Prepareable
        public InstrumentedType prepare(InstrumentedType instrumentedType) {
            return instrumentedType;
        }

        @Override // net.bytebuddy.implementation.bytecode.ByteCodeAppender
        public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription) {
            if (!methodDescription.getReturnType().isPrimitive()) {
                return new ByteCodeAppender.Simple(NullConstant.INSTANCE, MethodReturn.REFERENCE).apply(methodVisitor, context, methodDescription);
            }
            throw new IllegalStateException("Cannot return null from " + methodDescription);
        }
    }

    public static AssignerConfigurable argument(int i) {
        if (i >= 0) {
            return new ForArgument(i);
        }
        throw new IllegalArgumentException("Argument index cannot be negative: " + i);
    }

    public static AssignerConfigurable reference(Object obj, String str) {
        return new ForValue(obj, str);
    }

    public ByteCodeAppender.Size apply(MethodVisitor methodVisitor, Implementation.Context context, MethodDescription methodDescription, TypeDescription.Generic generic, StackManipulation stackManipulation) {
        StackManipulation assign = this.assigner.assign(generic, methodDescription.getReturnType(), this.typing);
        if (assign.isValid()) {
            return new ByteCodeAppender.Size(new StackManipulation.Compound(stackManipulation, assign, MethodReturn.m14940of(methodDescription.getReturnType())).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
        }
        throw new IllegalArgumentException("Cannot return value of type " + generic + " for " + methodDescription);
    }

    public FixedValue(Assigner assigner, Assigner.Typing typing) {
        this.assigner = assigner;
        this.typing = typing;
    }

    public static AssignerConfigurable value(TypeDescription typeDescription) {
        return new ForPoolValue(ClassConstant.m14958of(typeDescription), TypeDescription.CLASS);
    }

    public static AssignerConfigurable value(JavaConstant javaConstant) {
        return new ForPoolValue(new JavaConstantValue(javaConstant), javaConstant.getTypeDescription());
    }
}
