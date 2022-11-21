package net.bytebuddy.jar.asm;

import net.bytebuddy.pool.TypePool;
/* loaded from: classes.dex */
public final class TypePath {
    public static final int ARRAY_ELEMENT = 0;
    public static final int INNER_TYPE = 1;
    public static final int TYPE_ARGUMENT = 3;
    public static final int WILDCARD_BOUND = 2;
    private final byte[] typePathContainer;
    private final int typePathOffset;

    public int getLength() {
        return this.typePathContainer[this.typePathOffset];
    }

    public int getStep(int i) {
        return this.typePathContainer[this.typePathOffset + (i * 2) + 1];
    }

    public int getStepArgument(int i) {
        return this.typePathContainer[this.typePathOffset + (i * 2) + 2];
    }

    /* renamed from: a */
    public static void m14834a(TypePath typePath, ByteVector byteVector) {
        if (typePath == null) {
            byteVector.putByte(0);
            return;
        }
        byte[] bArr = typePath.typePathContainer;
        int i = typePath.typePathOffset;
        byteVector.putByteArray(bArr, i, (bArr[i] * 2) + 1);
    }

    public static TypePath fromString(String str) {
        if (str != null && str.length() != 0) {
            int length = str.length();
            ByteVector byteVector = new ByteVector(length);
            byteVector.putByte(0);
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                char charAt = str.charAt(i);
                if (charAt == '[') {
                    byteVector.m14917b(0, 0);
                } else if (charAt == '.') {
                    byteVector.m14917b(1, 0);
                } else if (charAt == '*') {
                    byteVector.m14917b(2, 0);
                } else if (charAt >= '0' && charAt <= '9') {
                    int i3 = charAt - '0';
                    while (i2 < length) {
                        int i4 = i2 + 1;
                        char charAt2 = str.charAt(i2);
                        if (charAt2 >= '0' && charAt2 <= '9') {
                            i3 = ((i3 * 10) + charAt2) - 48;
                            i2 = i4;
                        } else if (charAt2 == ';') {
                            i2 = i4;
                            byteVector.m14917b(3, i3);
                        } else {
                            throw new IllegalArgumentException();
                        }
                    }
                    byteVector.m14917b(3, i3);
                } else {
                    throw new IllegalArgumentException();
                }
                i = i2;
            }
            byte[] bArr = byteVector.f19173a;
            bArr[0] = (byte) (byteVector.f19174b / 2);
            return new TypePath(bArr, 0);
        }
        return null;
    }

    public TypePath(byte[] bArr, int i) {
        this.typePathContainer = bArr;
        this.typePathOffset = i;
    }

    public String toString() {
        int length = getLength();
        StringBuilder sb = new StringBuilder(length * 2);
        for (int i = 0; i < length; i++) {
            int step = getStep(i);
            if (step != 0) {
                if (step != 1) {
                    if (step != 2) {
                        if (step == 3) {
                            sb.append(getStepArgument(i));
                            sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INDEXED_TYPE_DELIMITER);
                        } else {
                            throw new AssertionError();
                        }
                    } else {
                        sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.WILDCARD_TYPE_PATH);
                    }
                } else {
                    sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.INNER_CLASS_PATH);
                }
            } else {
                sb.append(TypePool.Default.LazyTypeDescription.GenericTypeToken.COMPONENT_TYPE_PATH);
            }
        }
        return sb.toString();
    }
}
