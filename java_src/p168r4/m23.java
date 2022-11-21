package p168r4;
/* renamed from: r4.m23 */
/* loaded from: classes2.dex */
public final class m23 {
    /* renamed from: b */
    public static int m9513b(int i, String str) {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(str.length() + 40);
        sb.append(str);
        sb.append(" cannot be negative but was: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public static void m9514a(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 != null) {
                return;
            }
            String obj3 = obj.toString();
            StringBuilder sb = new StringBuilder(obj3.length() + 26);
            sb.append("null value in entry: ");
            sb.append(obj3);
            sb.append("=null");
            throw new NullPointerException(sb.toString());
        }
        throw new NullPointerException("null key in entry: null=".concat(String.valueOf(obj2)));
    }
}
