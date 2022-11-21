package p168r4;

import android.os.RemoteException;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: r4.s72 */
/* loaded from: classes2.dex */
public final class s72 {

    /* renamed from: a */
    public final ConcurrentHashMap<String, ed0> f31279a = new ConcurrentHashMap<>();

    /* renamed from: b */
    public final gq1 f31280b;

    public s72(gq1 gq1Var) {
        this.f31280b = gq1Var;
    }

    /* renamed from: a */
    public final void m7192a(String str) {
        try {
            this.f31279a.put(str, this.f31280b.m11062c(str));
        } catch (RemoteException e) {
            cm0.m12439d("Couldn't create RTB adapter : ", e);
        }
    }

    /* renamed from: b */
    public final ed0 m7191b(String str) {
        if (this.f31279a.containsKey(str)) {
            return this.f31279a.get(str);
        }
        return null;
    }
}
