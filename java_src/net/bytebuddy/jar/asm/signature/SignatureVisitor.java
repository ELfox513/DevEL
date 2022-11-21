package net.bytebuddy.jar.asm.signature;
/* loaded from: classes.dex */
public abstract class SignatureVisitor {
    public static final char EXTENDS = '+';
    public static final char INSTANCEOF = '=';
    public static final char SUPER = '-';
    public final int api;

    public SignatureVisitor visitArrayType() {
        return this;
    }

    public void visitBaseType(char c) {
    }

    public SignatureVisitor visitClassBound() {
        return this;
    }

    public void visitClassType(String str) {
    }

    public void visitEnd() {
    }

    public SignatureVisitor visitExceptionType() {
        return this;
    }

    public void visitFormalTypeParameter(String str) {
    }

    public void visitInnerClassType(String str) {
    }

    public SignatureVisitor visitInterface() {
        return this;
    }

    public SignatureVisitor visitInterfaceBound() {
        return this;
    }

    public SignatureVisitor visitParameterType() {
        return this;
    }

    public SignatureVisitor visitReturnType() {
        return this;
    }

    public SignatureVisitor visitSuperclass() {
        return this;
    }

    public SignatureVisitor visitTypeArgument(char c) {
        return this;
    }

    public void visitTypeArgument() {
    }

    public void visitTypeVariable(String str) {
    }

    public SignatureVisitor(int i) {
        if (i != 589824 && i != 524288 && i != 458752 && i != 393216 && i != 327680 && i != 262144 && i != 17432576) {
            throw new IllegalArgumentException("Unsupported api " + i);
        }
        this.api = i;
    }
}
