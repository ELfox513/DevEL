package p168r4;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: r4.po2 */
/* loaded from: classes2.dex */
public final class po2 {

    /* renamed from: a */
    public final int f29543a;

    /* renamed from: b */
    public final ft3 f29544b;

    /* renamed from: c */
    public final CopyOnWriteArrayList<nn2> f29545c;

    public po2() {
        this(new CopyOnWriteArrayList(), 0, null);
    }

    public po2(CopyOnWriteArrayList<nn2> copyOnWriteArrayList, int i, ft3 ft3Var) {
        this.f29545c = copyOnWriteArrayList;
        this.f29543a = i;
        this.f29544b = ft3Var;
    }

    /* renamed from: a */
    public final po2 m8232a(int i, ft3 ft3Var) {
        return new po2(this.f29545c, i, ft3Var);
    }

    /* renamed from: b */
    public final void m8231b(Handler handler, qp2 qp2Var) {
        this.f29545c.add(new nn2(handler, qp2Var));
    }

    /* renamed from: c */
    public final void m8230c(qp2 qp2Var) {
        Iterator<nn2> it = this.f29545c.iterator();
        while (it.hasNext()) {
            nn2 next = it.next();
            if (next.f28373b == qp2Var) {
                this.f29545c.remove(next);
            }
        }
    }
}
