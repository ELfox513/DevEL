package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
/* renamed from: r4.x23 */
/* loaded from: classes2.dex */
public final class x23 {
    /* renamed from: a */
    public static Object m5520a(int i) {
        if (i >= 2 && i <= 1073741824 && Integer.highestOneBit(i) == i) {
            if (i <= 256) {
                return new byte[i];
            }
            if (i <= 65536) {
                return new short[i];
            }
            return new int[i];
        }
        StringBuilder sb = new StringBuilder(52);
        sb.append("must be power of 2 between 2^1 and 2^30: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: d */
    public static int m5517d(int i) {
        return (i < 32 ? 4 : 2) * (i + 1);
    }

    /* renamed from: b */
    public static int m5519b(Object obj, int i) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i] & DefaultClassResolver.NAME;
        }
        if (obj instanceof short[]) {
            return (char) ((short[]) obj)[i];
        }
        return ((int[]) obj)[i];
    }

    /* renamed from: c */
    public static void m5518c(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002a, code lost:
        r9 = r6 & r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002c, code lost:
        if (r5 != (-1)) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
        m5518c(r12, r1, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
        r13[r5] = (r9 & r11) | (r13[r5] & r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
        return r2;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m5516e(java.lang.Object r9, java.lang.Object r10, int r11, java.lang.Object r12, int[] r13, java.lang.Object[] r14, java.lang.Object[] r15) {
        /*
            int r0 = p168r4.g33.m11297b(r9)
            r1 = r0 & r11
            int r2 = m5519b(r12, r1)
            r3 = -1
            if (r2 == 0) goto L42
            r4 = r11 ^ (-1)
            r0 = r0 & r4
            r5 = -1
        L11:
            int r2 = r2 + r3
            r6 = r13[r2]
            r7 = r6 & r4
            if (r7 != r0) goto L3a
            r7 = r14[r2]
            boolean r7 = p168r4.v03.m6257a(r9, r7)
            if (r7 == 0) goto L3a
            if (r15 == 0) goto L2a
            r7 = r15[r2]
            boolean r7 = p168r4.v03.m6257a(r10, r7)
            if (r7 == 0) goto L3a
        L2a:
            r9 = r6 & r11
            if (r5 != r3) goto L32
            m5518c(r12, r1, r9)
            goto L39
        L32:
            r10 = r13[r5]
            r10 = r10 & r4
            r9 = r9 & r11
            r9 = r9 | r10
            r13[r5] = r9
        L39:
            return r2
        L3a:
            r5 = r6 & r11
            if (r5 == 0) goto L42
            r8 = r5
            r5 = r2
            r2 = r8
            goto L11
        L42:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.x23.m5516e(java.lang.Object, java.lang.Object, int, java.lang.Object, int[], java.lang.Object[], java.lang.Object[]):int");
    }
}
