package p077h3;

import android.util.Pair;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import p168r4.C5592av;
import p168r4.C6225rz;
import p235z2.C7601t;
/* renamed from: h3.m */
/* loaded from: classes.dex */
public final class C4008m {

    /* renamed from: a */
    public final int f17486a = ((Integer) C5592av.m12935c().m8098c(C6225rz.f31047j5)).intValue();

    /* renamed from: b */
    public final long f17487b = ((Long) C5592av.m12935c().m8098c(C6225rz.f31055k5)).longValue();

    /* renamed from: c */
    public final Map<String, Pair<Long, String>> f17488c = Collections.synchronizedMap(new C3987b(this));

    /* renamed from: b */
    public final synchronized void m17560b(String str, String str2) {
        this.f17488c.put(str, new Pair<>(Long.valueOf(C7601t.m932k().mo24763a()), str2));
        m17557e();
    }

    /* renamed from: c */
    public final synchronized String m17559c(String str) {
        Pair<Long, String> pair = this.f17488c.get(str);
        if (pair != null) {
            String str2 = (String) pair.second;
            this.f17488c.remove(str);
            return str2;
        }
        return null;
    }

    /* renamed from: d */
    public final synchronized void m17558d(String str) {
        this.f17488c.remove(str);
    }

    /* renamed from: e */
    public final void m17557e() {
        long mo24763a = C7601t.m932k().mo24763a();
        try {
            Iterator<Map.Entry<String, Pair<Long, String>>> it = this.f17488c.entrySet().iterator();
            while (it.hasNext() && mo24763a - ((Long) it.next().getValue().first).longValue() > this.f17487b) {
                it.remove();
            }
        } catch (ConcurrentModificationException e) {
            C7601t.m935h().m9056k(e, "QueryJsonMap.removeExpiredEntries");
        }
    }
}
