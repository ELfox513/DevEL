package p168r4;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.bytebuddy.description.method.MethodDescription;
/* renamed from: r4.c73 */
/* loaded from: classes2.dex */
public abstract class c73<OutputT> extends l63<OutputT> {

    /* renamed from: u */
    public static final y63 f21432u;

    /* renamed from: v */
    public static final Logger f21433v = Logger.getLogger(c73.class.getName());

    /* renamed from: s */
    public volatile Set<Throwable> f21434s = null;

    /* renamed from: t */
    public volatile int f21435t;

    public c73(int i) {
        this.f21435t = i;
    }

    /* renamed from: J */
    public final int m12515J() {
        return f21432u.mo4828b(this);
    }

    /* renamed from: K */
    public final void m12514K() {
        this.f21434s = null;
    }

    /* renamed from: L */
    public abstract void mo5472L(Set<Throwable> set);

    static {
        Throwable th;
        y63 b73Var;
        try {
            b73Var = new a73(AtomicReferenceFieldUpdater.newUpdater(c73.class, Set.class, C6226s.f31189J), AtomicIntegerFieldUpdater.newUpdater(c73.class, "t"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            b73Var = new b73(null);
        }
        f21432u = b73Var;
        if (th != null) {
            f21433v.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", MethodDescription.TYPE_INITIALIZER_INTERNAL_NAME, "SafeAtomicHelper is broken!", th);
        }
    }

    /* renamed from: I */
    public final Set<Throwable> m12516I() {
        Set<Throwable> set = this.f21434s;
        if (set == null) {
            Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            mo5472L(newSetFromMap);
            f21432u.mo4829a(this, null, newSetFromMap);
            Set<Throwable> set2 = this.f21434s;
            set2.getClass();
            return set2;
        }
        return set;
    }
}
