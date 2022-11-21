package p168r4;

import android.text.TextUtils;
/* renamed from: r4.b00 */
/* loaded from: classes2.dex */
public final class b00 extends c00 {
    /* renamed from: b */
    public static final String m12896b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i2 < str.length() && str.charAt(i2) == ',') {
            i2++;
        }
        while (length > 0) {
            int i3 = length - 1;
            if (str.charAt(i3) != ',') {
                break;
            }
            length = i3;
        }
        if (length < i2) {
            return null;
        }
        if (i2 == 0) {
            if (length == str.length()) {
                return str;
            }
        } else {
            i = i2;
        }
        return str.substring(i, length);
    }

    @Override // p168r4.c00
    /* renamed from: a */
    public final String mo4018a(String str, String str2) {
        String m12896b = m12896b(str);
        String m12896b2 = m12896b(str2);
        if (TextUtils.isEmpty(m12896b)) {
            return m12896b2;
        }
        if (TextUtils.isEmpty(m12896b2)) {
            return m12896b;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(m12896b).length() + 1 + String.valueOf(m12896b2).length());
        sb.append(m12896b);
        sb.append(",");
        sb.append(m12896b2);
        return sb.toString();
    }
}
