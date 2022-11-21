package net.bytebuddy.jar.asm.commons;

import java.util.ArrayList;
import net.bytebuddy.jar.asm.Opcodes;
import net.bytebuddy.jar.asm.signature.SignatureVisitor;
/* loaded from: classes.dex */
public class SignatureRemapper extends SignatureVisitor {
    private ArrayList<String> classNames;
    private final Remapper remapper;
    private final SignatureVisitor signatureVisitor;

    public SignatureRemapper(SignatureVisitor signatureVisitor, Remapper remapper) {
        this(Opcodes.ASM9, signatureVisitor, remapper);
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public SignatureVisitor visitArrayType() {
        this.signatureVisitor.visitArrayType();
        return this;
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public void visitBaseType(char c) {
        this.signatureVisitor.visitBaseType(c);
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public SignatureVisitor visitClassBound() {
        this.signatureVisitor.visitClassBound();
        return this;
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public SignatureVisitor visitExceptionType() {
        this.signatureVisitor.visitExceptionType();
        return this;
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public void visitFormalTypeParameter(String str) {
        this.signatureVisitor.visitFormalTypeParameter(str);
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public SignatureVisitor visitInterface() {
        this.signatureVisitor.visitInterface();
        return this;
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public SignatureVisitor visitInterfaceBound() {
        this.signatureVisitor.visitInterfaceBound();
        return this;
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public SignatureVisitor visitParameterType() {
        this.signatureVisitor.visitParameterType();
        return this;
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public SignatureVisitor visitReturnType() {
        this.signatureVisitor.visitReturnType();
        return this;
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public SignatureVisitor visitSuperclass() {
        this.signatureVisitor.visitSuperclass();
        return this;
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public void visitTypeArgument() {
        this.signatureVisitor.visitTypeArgument();
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public void visitTypeVariable(String str) {
        this.signatureVisitor.visitTypeVariable(str);
    }

    public SignatureRemapper(int i, SignatureVisitor signatureVisitor, Remapper remapper) {
        super(i);
        this.classNames = new ArrayList<>();
        this.signatureVisitor = signatureVisitor;
        this.remapper = remapper;
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public void visitClassType(String str) {
        this.classNames.add(str);
        this.signatureVisitor.visitClassType(this.remapper.mapType(str));
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public void visitEnd() {
        this.signatureVisitor.visitEnd();
        ArrayList<String> arrayList = this.classNames;
        arrayList.remove(arrayList.size() - 1);
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public void visitInnerClassType(String str) {
        ArrayList<String> arrayList;
        String remove;
        int lastIndexOf;
        String str2 = this.classNames.remove(arrayList.size() - 1) + '$' + str;
        this.classNames.add(str2);
        String str3 = this.remapper.mapType(remove) + '$';
        String mapType = this.remapper.mapType(str2);
        if (mapType.startsWith(str3)) {
            lastIndexOf = str3.length();
        } else {
            lastIndexOf = mapType.lastIndexOf(36) + 1;
        }
        this.signatureVisitor.visitInnerClassType(mapType.substring(lastIndexOf));
    }

    @Override // net.bytebuddy.jar.asm.signature.SignatureVisitor
    public SignatureVisitor visitTypeArgument(char c) {
        this.signatureVisitor.visitTypeArgument(c);
        return this;
    }
}
