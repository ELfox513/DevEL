package net.bytebuddy.jar.asm;
/* loaded from: classes.dex */
public class Attribute {

    /* renamed from: a */
    public Attribute f19172a;
    private byte[] content;
    public final String type;

    /* loaded from: classes.dex */
    public static final class Set {
        private static final int SIZE_INCREMENT = 6;
        private Attribute[] data = new Attribute[6];
        private int size;

        private boolean contains(Attribute attribute) {
            for (int i = 0; i < this.size; i++) {
                if (this.data[i].type.equals(attribute.type)) {
                    return true;
                }
            }
            return false;
        }

        private void add(Attribute attribute) {
            int i = this.size;
            Attribute[] attributeArr = this.data;
            if (i >= attributeArr.length) {
                Attribute[] attributeArr2 = new Attribute[attributeArr.length + 6];
                System.arraycopy(attributeArr, 0, attributeArr2, 0, i);
                this.data = attributeArr2;
            }
            Attribute[] attributeArr3 = this.data;
            int i2 = this.size;
            this.size = i2 + 1;
            attributeArr3[i2] = attribute;
        }

        /* renamed from: a */
        public void m14920a(Attribute attribute) {
            while (attribute != null) {
                if (!contains(attribute)) {
                    add(attribute);
                }
                attribute = attribute.f19172a;
            }
        }

        /* renamed from: b */
        public Attribute[] m14919b() {
            int i = this.size;
            Attribute[] attributeArr = new Attribute[i];
            System.arraycopy(this.data, 0, attributeArr, 0, i);
            return attributeArr;
        }
    }

    /* renamed from: a */
    public final int m14927a(SymbolTable symbolTable) {
        return m14925c(symbolTable, null, 0, -1, -1);
    }

    /* renamed from: d */
    public final int m14924d() {
        int i = 0;
        for (Attribute attribute = this; attribute != null; attribute = attribute.f19172a) {
            i++;
        }
        return i;
    }

    /* renamed from: f */
    public final void m14922f(SymbolTable symbolTable, ByteVector byteVector) {
        m14921g(symbolTable, null, 0, -1, -1, byteVector);
    }

    public Label[] getLabels() {
        return new Label[0];
    }

    public boolean isCodeAttribute() {
        return false;
    }

    public boolean isUnknown() {
        return true;
    }

    public ByteVector write(ClassWriter classWriter, byte[] bArr, int i, int i2, int i3) {
        return new ByteVector(this.content);
    }

    /* renamed from: b */
    public static int m14926b(SymbolTable symbolTable, int i, int i2) {
        int i3;
        if ((i & 4096) != 0 && symbolTable.m14836z() < 49) {
            symbolTable.m14844r("Synthetic");
            i3 = 6;
        } else {
            i3 = 0;
        }
        if (i2 != 0) {
            symbolTable.m14844r("Signature");
            i3 += 8;
        }
        if ((i & 131072) != 0) {
            symbolTable.m14844r("Deprecated");
            return i3 + 6;
        }
        return i3;
    }

    /* renamed from: e */
    public static void m14923e(SymbolTable symbolTable, int i, int i2, ByteVector byteVector) {
        if ((i & 4096) != 0 && symbolTable.m14836z() < 49) {
            byteVector.putShort(symbolTable.m14844r("Synthetic")).putInt(0);
        }
        if (i2 != 0) {
            byteVector.putShort(symbolTable.m14844r("Signature")).putInt(2).putShort(i2);
        }
        if ((i & 131072) != 0) {
            byteVector.putShort(symbolTable.m14844r("Deprecated")).putInt(0);
        }
    }

    /* renamed from: c */
    public final int m14925c(SymbolTable symbolTable, byte[] bArr, int i, int i2, int i3) {
        ClassWriter classWriter = symbolTable.f19231a;
        int i4 = 0;
        for (Attribute attribute = this; attribute != null; attribute = attribute.f19172a) {
            symbolTable.m14844r(attribute.type);
            i4 += attribute.write(classWriter, bArr, i, i2, i3).f19174b + 6;
        }
        return i4;
    }

    /* renamed from: g */
    public final void m14921g(SymbolTable symbolTable, byte[] bArr, int i, int i2, int i3, ByteVector byteVector) {
        ClassWriter classWriter = symbolTable.f19231a;
        for (Attribute attribute = this; attribute != null; attribute = attribute.f19172a) {
            ByteVector write = attribute.write(classWriter, bArr, i, i2, i3);
            byteVector.putShort(symbolTable.m14844r(attribute.type)).putInt(write.f19174b);
            byteVector.putByteArray(write.f19173a, 0, write.f19174b);
        }
    }

    public Attribute read(ClassReader classReader, int i, int i2, char[] cArr, int i3, Label[] labelArr) {
        Attribute attribute = new Attribute(this.type);
        byte[] bArr = new byte[i2];
        attribute.content = bArr;
        System.arraycopy(classReader.f19175a, i, bArr, 0, i2);
        return attribute;
    }

    public Attribute(String str) {
        this.type = str;
    }
}
