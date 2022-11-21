package net.bytebuddy.jar.asm.signature;
/* loaded from: classes.dex */
public class SignatureReader {
    private final String signatureValue;

    public void acceptType(SignatureVisitor signatureVisitor) {
        parseType(this.signatureValue, 0, signatureVisitor);
    }

    private static int parseType(String str, int i, SignatureVisitor signatureVisitor) {
        int i2 = i + 1;
        char charAt = str.charAt(i);
        if (charAt != 'F') {
            if (charAt != 'L') {
                if (charAt != 'V' && charAt != 'I' && charAt != 'J' && charAt != 'S') {
                    if (charAt != 'T') {
                        if (charAt != 'Z') {
                            if (charAt != '[') {
                                switch (charAt) {
                                    case 'B':
                                    case 'C':
                                    case 'D':
                                        break;
                                    default:
                                        throw new IllegalArgumentException();
                                }
                            } else {
                                return parseType(str, i2, signatureVisitor.visitArrayType());
                            }
                        }
                    } else {
                        int indexOf = str.indexOf(59, i2);
                        signatureVisitor.visitTypeVariable(str.substring(i2, indexOf));
                        return indexOf + 1;
                    }
                }
            } else {
                int i3 = i2;
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    int i4 = i2 + 1;
                    char charAt2 = str.charAt(i2);
                    if (charAt2 != '.' && charAt2 != ';') {
                        if (charAt2 == '<') {
                            String substring = str.substring(i3, i4 - 1);
                            if (z2) {
                                signatureVisitor.visitInnerClassType(substring);
                            } else {
                                signatureVisitor.visitClassType(substring);
                            }
                            i2 = i4;
                            while (true) {
                                char charAt3 = str.charAt(i2);
                                if (charAt3 == '>') {
                                    break;
                                } else if (charAt3 != '*') {
                                    if (charAt3 != '+' && charAt3 != '-') {
                                        i2 = parseType(str, i2, signatureVisitor.visitTypeArgument(SignatureVisitor.INSTANCEOF));
                                    } else {
                                        i2 = parseType(str, i2 + 1, signatureVisitor.visitTypeArgument(charAt3));
                                    }
                                } else {
                                    i2++;
                                    signatureVisitor.visitTypeArgument();
                                }
                            }
                            z = true;
                        } else {
                            i2 = i4;
                        }
                    } else {
                        if (!z) {
                            String substring2 = str.substring(i3, i4 - 1);
                            if (z2) {
                                signatureVisitor.visitInnerClassType(substring2);
                            } else {
                                signatureVisitor.visitClassType(substring2);
                            }
                        }
                        if (charAt2 == ';') {
                            signatureVisitor.visitEnd();
                            return i4;
                        }
                        i2 = i4;
                        i3 = i2;
                        z = false;
                        z2 = true;
                    }
                }
            }
        }
        signatureVisitor.visitBaseType(charAt);
        return i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void accept(net.bytebuddy.jar.asm.signature.SignatureVisitor r7) {
        /*
            r6 = this;
            java.lang.String r0 = r6.signatureValue
            int r1 = r0.length()
            r2 = 0
            char r3 = r0.charAt(r2)
            r4 = 60
            if (r3 != r4) goto L4e
            r2 = 2
        L10:
            r3 = 58
            int r4 = r0.indexOf(r3, r2)
            int r2 = r2 + (-1)
            java.lang.String r2 = r0.substring(r2, r4)
            r7.visitFormalTypeParameter(r2)
            int r4 = r4 + 1
            char r2 = r0.charAt(r4)
            r5 = 76
            if (r2 == r5) goto L31
            r5 = 91
            if (r2 == r5) goto L31
            r5 = 84
            if (r2 != r5) goto L39
        L31:
            net.bytebuddy.jar.asm.signature.SignatureVisitor r2 = r7.visitClassBound()
            int r4 = parseType(r0, r4, r2)
        L39:
            int r2 = r4 + 1
            char r4 = r0.charAt(r4)
            if (r4 != r3) goto L4a
            net.bytebuddy.jar.asm.signature.SignatureVisitor r4 = r7.visitInterfaceBound()
            int r4 = parseType(r0, r2, r4)
            goto L39
        L4a:
            r3 = 62
            if (r4 != r3) goto L10
        L4e:
            char r3 = r0.charAt(r2)
            r4 = 40
            if (r3 != r4) goto L80
            int r2 = r2 + 1
        L58:
            char r3 = r0.charAt(r2)
            r4 = 41
            if (r3 == r4) goto L69
            net.bytebuddy.jar.asm.signature.SignatureVisitor r3 = r7.visitParameterType()
            int r2 = parseType(r0, r2, r3)
            goto L58
        L69:
            int r2 = r2 + 1
            net.bytebuddy.jar.asm.signature.SignatureVisitor r3 = r7.visitReturnType()
            int r2 = parseType(r0, r2, r3)
        L73:
            if (r2 >= r1) goto L93
            int r2 = r2 + 1
            net.bytebuddy.jar.asm.signature.SignatureVisitor r3 = r7.visitExceptionType()
            int r2 = parseType(r0, r2, r3)
            goto L73
        L80:
            net.bytebuddy.jar.asm.signature.SignatureVisitor r3 = r7.visitSuperclass()
            int r2 = parseType(r0, r2, r3)
        L88:
            if (r2 >= r1) goto L93
            net.bytebuddy.jar.asm.signature.SignatureVisitor r3 = r7.visitInterface()
            int r2 = parseType(r0, r2, r3)
            goto L88
        L93:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.bytebuddy.jar.asm.signature.SignatureReader.accept(net.bytebuddy.jar.asm.signature.SignatureVisitor):void");
    }

    public SignatureReader(String str) {
        this.signatureValue = str;
    }
}
