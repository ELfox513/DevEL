package p168r4;
/* renamed from: r4.a53 */
/* loaded from: classes2.dex */
public final class a53 {
    /* renamed from: a */
    public static Object[] m13046a(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            m13045b(objArr[i2], i2);
        }
        return objArr;
    }

    /* renamed from: b */
    public static Object m13045b(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        StringBuilder sb = new StringBuilder(20);
        sb.append("at index ");
        sb.append(i);
        throw new NullPointerException(sb.toString());
    }
}
