package p168r4;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: r4.t93 */
/* loaded from: classes2.dex */
public final class t93 {

    /* renamed from: a */
    public static final CopyOnWriteArrayList<s93> f31749a = new CopyOnWriteArrayList<>();

    /* renamed from: a */
    public static s93 m6895a(String str) {
        String str2;
        Iterator<s93> it = f31749a.iterator();
        while (it.hasNext()) {
            s93 next = it.next();
            if (next.zza()) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "No KMS client does support: ".concat(valueOf);
        } else {
            str2 = new String("No KMS client does support: ");
        }
        throw new GeneralSecurityException(str2);
    }
}
