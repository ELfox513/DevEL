package p168r4;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: r4.iq0 */
/* loaded from: classes2.dex */
public final class iq0 implements Iterable<hq0> {

    /* renamed from: a */
    public final List<hq0> f25251a = new ArrayList();

    /* renamed from: g */
    public final void m10561g(hq0 hq0Var) {
        this.f25251a.add(hq0Var);
    }

    /* renamed from: i */
    public final void m10560i(hq0 hq0Var) {
        this.f25251a.remove(hq0Var);
    }

    @Override // java.lang.Iterable
    public final Iterator<hq0> iterator() {
        return this.f25251a.iterator();
    }

    /* renamed from: d */
    public final boolean m10563d(po0 po0Var) {
        ArrayList<hq0> arrayList = new ArrayList();
        Iterator<hq0> it = iterator();
        while (it.hasNext()) {
            hq0 next = it.next();
            if (next.f24794c == po0Var) {
                arrayList.add(next);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        for (hq0 hq0Var : arrayList) {
            hq0Var.f24795d.mo4105m();
        }
        return true;
    }

    /* renamed from: e */
    public final hq0 m10562e(po0 po0Var) {
        Iterator<hq0> it = iterator();
        while (it.hasNext()) {
            hq0 next = it.next();
            if (next.f24794c == po0Var) {
                return next;
            }
        }
        return null;
    }
}
