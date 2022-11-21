package net.bytebuddy.implementation;

import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.dynamic.scaffold.InstrumentedType;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.ByteCodeAppender;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.constant.DefaultValue;
import net.bytebuddy.implementation.bytecode.member.MethodReturn;
import net.bytebuddy.jar.asm.MethodVisitor;
/* loaded from: classes.dex */
public enum StubMethod implements Implementation.Composable, ByteCodeAppender {
    INSTANCE;

    @Override // net.bytebuddy.implementation.Implementation.Composable
    public Implementation.Composable andThen(Implementation.Composable composable) {
        return composable;
    }

    @Override // net.bytebuddy.implementation.Implementation.Composable
    public Implementation andThen(Implementation implementation) {
        return implementation;
    }

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
        return new ByteCodeAppender.Size(new StackManipulation.Compound(DefaultValue.m14957of(methodDescription.getReturnType()), MethodReturn.m14940of(methodDescription.getReturnType())).apply(methodVisitor, context).getMaximalSize(), methodDescription.getStackSize());
    }
}
