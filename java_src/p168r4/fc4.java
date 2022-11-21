package p168r4;

import android.util.Base64;
/* renamed from: r4.fc4 */
/* loaded from: classes2.dex */
public final class fc4 {
    /* renamed from: a */
    public static String m11575a(byte[] bArr, boolean z) {
        return Base64.encodeToString(bArr, true != z ? 2 : 11);
    }

    /* renamed from: b */
    public static byte[] m11574b(String str, boolean z) {
        int i;
        String str2;
        if (true != z) {
            i = 2;
        } else {
            i = 11;
        }
        byte[] decode = Base64.decode(str, i);
        if (decode.length == 0 && str.length() > 0) {
            if (str.length() != 0) {
                str2 = "Unable to decode ".concat(str);
            } else {
                str2 = new String("Unable to decode ");
            }
            throw new IllegalArgumentException(str2);
        }
        return decode;
    }
}
