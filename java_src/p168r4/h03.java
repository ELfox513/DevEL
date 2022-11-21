package p168r4;
/* renamed from: r4.h03 */
/* loaded from: classes2.dex */
public final class h03 {
    /* renamed from: c */
    public static boolean m11016c(char c) {
        return c >= 'a' && c <= 'z';
    }

    /* renamed from: d */
    public static boolean m11015d(char c) {
        return c >= 'A' && c <= 'Z';
    }

    /* renamed from: f */
    public static int m11013f(char c) {
        return (char) ((c | ' ') - 97);
    }

    /* renamed from: e */
    public static boolean m11014e(CharSequence charSequence, CharSequence charSequence2) {
        int m11013f;
        int length = "content-length".length();
        if (charSequence2 == "content-length") {
            return true;
        }
        if (length != charSequence2.length()) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char charAt = "content-length".charAt(i);
            char charAt2 = charSequence2.charAt(i);
            if (charAt != charAt2 && ((m11013f = m11013f(charAt)) >= 26 || m11013f != m11013f(charAt2))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static String m11018a(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (m11015d(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c = charArray[i];
                    if (m11015d(c)) {
                        charArray[i] = (char) (c ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }

    /* renamed from: b */
    public static String m11017b(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            if (m11016c(str.charAt(i))) {
                char[] charArray = str.toCharArray();
                while (i < length) {
                    char c = charArray[i];
                    if (m11016c(c)) {
                        charArray[i] = (char) (c ^ ' ');
                    }
                    i++;
                }
                return String.valueOf(charArray);
            }
            i++;
        }
        return str;
    }
}
