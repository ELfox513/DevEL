package p168r4;
/* renamed from: r4.al */
/* loaded from: classes2.dex */
public final class C5582al {
    /* renamed from: a */
    public static boolean m13004a(String str) {
        return "audio".equals(m13002c(str));
    }

    /* renamed from: b */
    public static boolean m13003b(String str) {
        return "video".equals(m13002c(str));
    }

    /* renamed from: c */
    public static String m13002c(String str) {
        String str2;
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(47);
        if (indexOf == -1) {
            if (str.length() != 0) {
                str2 = "Invalid mime type: ".concat(str);
            } else {
                str2 = new String("Invalid mime type: ");
            }
            throw new IllegalArgumentException(str2);
        }
        return str.substring(0, indexOf);
    }
}
