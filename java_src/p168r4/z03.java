package p168r4;
/* renamed from: r4.z03 */
/* loaded from: classes2.dex */
public final class z03 {
    /* renamed from: a */
    public static void m4496a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException((String) obj);
        }
    }

    /* renamed from: b */
    public static void m4495b(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException((String) obj);
        }
    }

    /* renamed from: c */
    public static <T> T m4494c(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException((String) obj);
    }

    /* renamed from: d */
    public static <T> T m4493d(T t, String str, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(l13.m9808d(str, obj));
    }

    /* renamed from: f */
    public static int m4491f(int i, int i2, String str) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(m4489h(i, i2, "index"));
        }
        return i;
    }

    /* renamed from: h */
    public static String m4489h(int i, int i2, String str) {
        if (i < 0) {
            return l13.m9808d("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return l13.m9808d("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: e */
    public static int m4492e(int i, int i2, String str) {
        String m9808d;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i >= 0) {
            if (i2 < 0) {
                StringBuilder sb = new StringBuilder(26);
                sb.append("negative size: ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            }
            m9808d = l13.m9808d("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        } else {
            m9808d = l13.m9808d("%s (%s) must not be negative", "index", Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException(m9808d);
    }

    /* renamed from: g */
    public static void m4490g(int i, int i2, int i3) {
        String m4489h;
        if (i >= 0 && i2 >= i && i2 <= i3) {
            return;
        }
        if (i >= 0 && i <= i3) {
            if (i2 >= 0 && i2 <= i3) {
                m4489h = l13.m9808d("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i));
            } else {
                m4489h = m4489h(i2, i3, "end index");
            }
        } else {
            m4489h = m4489h(i, i3, "start index");
        }
        throw new IndexOutOfBoundsException(m4489h);
    }
}
