package p018b5;

import java.util.Iterator;
import java.util.Map;
/* renamed from: b5.z9 */
/* loaded from: classes2.dex */
public final class C0990z9 {
    /* renamed from: a */
    public static final int m24860a(int i, Object obj, Object obj2) {
        C0973y9 c0973y9 = (C0973y9) obj;
        C0939w9 c0939w9 = (C0939w9) obj2;
        if (!c0973y9.isEmpty()) {
            Iterator it = c0973y9.entrySet().iterator();
            if (!it.hasNext()) {
                return 0;
            }
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw null;
        }
        return 0;
    }

    /* renamed from: b */
    public static final Object m24859b(Object obj, Object obj2) {
        C0973y9 c0973y9 = (C0973y9) obj;
        C0973y9 c0973y92 = (C0973y9) obj2;
        if (!c0973y92.isEmpty()) {
            if (!c0973y9.m24908h()) {
                c0973y9 = c0973y9.m24911b();
            }
            c0973y9.m24909f(c0973y92);
        }
        return c0973y9;
    }
}
