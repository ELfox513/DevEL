package net.bytebuddy.implementation.bytecode.constant;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import net.bytebuddy.build.HashCodeAndEqualsPlugin;
import net.bytebuddy.description.method.MethodDescription;
import net.bytebuddy.description.type.TypeDescription;
import net.bytebuddy.implementation.Implementation;
import net.bytebuddy.implementation.bytecode.Duplication;
import net.bytebuddy.implementation.bytecode.StackManipulation;
import net.bytebuddy.implementation.bytecode.TypeCreation;
import net.bytebuddy.implementation.bytecode.member.MethodInvocation;
import net.bytebuddy.jar.asm.MethodVisitor;
import net.bytebuddy.utility.nullability.MaybeNull;
@HashCodeAndEqualsPlugin.Enhance
/* loaded from: classes.dex */
public class SerializedConstant extends StackManipulation.AbstractBase {
    private static final String CHARSET = "ISO-8859-1";
    private final String serialization;

    public boolean equals(@MaybeNull Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.serialization.equals(((SerializedConstant) obj).serialization);
    }

    public int hashCode() {
        return (getClass().hashCode() * 31) + this.serialization.hashCode();
    }

    /* renamed from: of */
    public static StackManipulation m14951of(@MaybeNull Serializable serializable) {
        if (serializable == null) {
            return NullConstant.INSTANCE;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            return new SerializedConstant(byteArrayOutputStream.toString(CHARSET));
        } catch (IOException e) {
            throw new IllegalStateException("Cannot serialize " + serializable, e);
        }
    }

    @Override // net.bytebuddy.implementation.bytecode.StackManipulation
    public StackManipulation.Size apply(MethodVisitor methodVisitor, Implementation.Context context) {
        try {
            Duplication duplication = Duplication.SINGLE;
            return new StackManipulation.Compound(TypeCreation.m14974of(TypeDescription.ForLoadedType.m15196of(ObjectInputStream.class)), duplication, TypeCreation.m14974of(TypeDescription.ForLoadedType.m15196of(ByteArrayInputStream.class)), duplication, new TextConstant(this.serialization), new TextConstant(CHARSET), MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.ForLoadedMethod(String.class.getMethod("getBytes", String.class))), MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.ForLoadedConstructor(ByteArrayInputStream.class.getConstructor(byte[].class))), MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.ForLoadedConstructor(ObjectInputStream.class.getConstructor(InputStream.class))), MethodInvocation.invoke((MethodDescription.InDefinedShape) new MethodDescription.ForLoadedMethod(ObjectInputStream.class.getMethod("readObject", new Class[0])))).apply(methodVisitor, context);
        } catch (NoSuchMethodException e) {
            throw new IllegalStateException("Could not locate Java API method", e);
        }
    }

    public SerializedConstant(String str) {
        this.serialization = str;
    }
}
