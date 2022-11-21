package p168r4;

import java.security.GeneralSecurityException;
/* renamed from: r4.m93 */
/* loaded from: classes2.dex */
public final class m93 {
    /* renamed from: a */
    public static l93 m9458a(String str) {
        String str2;
        if (!ja3.m10356m().containsKey(str)) {
            if (str.length() != 0) {
                str2 = "cannot find key template: ".concat(str);
            } else {
                str2 = new String("cannot find key template: ");
            }
            throw new GeneralSecurityException(str2);
        }
        return ja3.m10356m().get(str);
    }
}
