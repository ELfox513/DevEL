package p168r4;
/* renamed from: r4.la */
/* loaded from: classes2.dex */
public final class C5977la {

    /* renamed from: a */
    public static final byte[] f27145a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final String[] f27146b = {"", "A", "B", "C"};

    /* renamed from: a */
    public static String m9760a(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    /* renamed from: b */
    public static String m9759b(C6460yb c6460yb) {
        char c;
        c6460yb.m4790c(24);
        int m4788e = c6460yb.m4788e(2);
        boolean m4789d = c6460yb.m4789d();
        int m4788e2 = c6460yb.m4788e(5);
        int i = 0;
        for (int i2 = 0; i2 < 32; i2++) {
            if (c6460yb.m4789d()) {
                i |= 1 << i2;
            }
        }
        int i3 = 6;
        int[] iArr = new int[6];
        for (int i4 = 0; i4 < 6; i4++) {
            iArr[i4] = c6460yb.m4788e(8);
        }
        int m4788e3 = c6460yb.m4788e(8);
        Object[] objArr = new Object[5];
        objArr[0] = f27146b[m4788e];
        objArr[1] = Integer.valueOf(m4788e2);
        objArr[2] = Integer.valueOf(i);
        if (true != m4789d) {
            c = 'L';
        } else {
            c = 'H';
        }
        objArr[3] = Character.valueOf(c);
        objArr[4] = Integer.valueOf(m4788e3);
        StringBuilder sb = new StringBuilder(C5979lc.m9709a0("hvc1.%s%d.%X.%c%d", objArr));
        while (i3 > 0) {
            int i5 = i3 - 1;
            if (iArr[i5] != 0) {
                break;
            }
            i3 = i5;
        }
        for (int i6 = 0; i6 < i3; i6++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i6])));
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static byte[] m9758c(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 + 4];
        System.arraycopy(f27145a, 0, bArr2, 0, 4);
        System.arraycopy(bArr, i, bArr2, 4, i2);
        return bArr2;
    }
}
