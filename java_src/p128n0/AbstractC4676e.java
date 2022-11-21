package p128n0;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.room.C0351c;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p100k.C4386a;
import p137o0.AbstractC5062a;
import p155q0.InterfaceC5382b;
import p155q0.InterfaceC5383c;
import p155q0.InterfaceC5389e;
import p155q0.InterfaceC5390f;
import p164r0.C5521c;
/* renamed from: n0.e */
/* loaded from: classes.dex */
public abstract class AbstractC4676e {
    @Deprecated

    /* renamed from: a */
    public volatile InterfaceC5382b f18758a;

    /* renamed from: b */
    public Executor f18759b;

    /* renamed from: c */
    public Executor f18760c;

    /* renamed from: d */
    public InterfaceC5383c f18761d;

    /* renamed from: f */
    public boolean f18763f;

    /* renamed from: g */
    public boolean f18764g;
    @Deprecated

    /* renamed from: h */
    public List<AbstractC4678b> f18765h;

    /* renamed from: i */
    public final ReentrantReadWriteLock f18766i = new ReentrantReadWriteLock();

    /* renamed from: j */
    public final ThreadLocal<Integer> f18767j = new ThreadLocal<>();

    /* renamed from: k */
    public final Map<String, Object> f18768k = new ConcurrentHashMap();

    /* renamed from: e */
    public final C0351c f18762e = mo15826e();

    /* renamed from: n0.e$a */
    /* loaded from: classes.dex */
    public static class C4677a<T extends AbstractC4676e> {

        /* renamed from: a */
        public final Class<T> f18769a;

        /* renamed from: b */
        public final String f18770b;

        /* renamed from: c */
        public final Context f18771c;

        /* renamed from: d */
        public ArrayList<AbstractC4678b> f18772d;

        /* renamed from: e */
        public Executor f18773e;

        /* renamed from: f */
        public Executor f18774f;

        /* renamed from: g */
        public InterfaceC5383c.InterfaceC5387c f18775g;

        /* renamed from: h */
        public boolean f18776h;

        /* renamed from: j */
        public boolean f18778j;

        /* renamed from: l */
        public boolean f18780l;

        /* renamed from: n */
        public Set<Integer> f18782n;

        /* renamed from: o */
        public Set<Integer> f18783o;

        /* renamed from: p */
        public String f18784p;

        /* renamed from: q */
        public File f18785q;

        /* renamed from: i */
        public EnumC4679c f18777i = EnumC4679c.AUTOMATIC;

        /* renamed from: k */
        public boolean f18779k = true;

        /* renamed from: m */
        public final C4680d f18781m = new C4680d();

        /* renamed from: c */
        public C4677a<T> m15810c() {
            this.f18776h = true;
            return this;
        }

        /* renamed from: e */
        public C4677a<T> m15808e() {
            this.f18779k = false;
            this.f18780l = true;
            return this;
        }

        /* renamed from: f */
        public C4677a<T> m15807f(InterfaceC5383c.InterfaceC5387c interfaceC5387c) {
            this.f18775g = interfaceC5387c;
            return this;
        }

        /* renamed from: g */
        public C4677a<T> m15806g(Executor executor) {
            this.f18773e = executor;
            return this;
        }

        /* renamed from: a */
        public C4677a<T> m15812a(AbstractC4678b abstractC4678b) {
            if (this.f18772d == null) {
                this.f18772d = new ArrayList<>();
            }
            this.f18772d.add(abstractC4678b);
            return this;
        }

        /* renamed from: b */
        public C4677a<T> m15811b(AbstractC5062a... abstractC5062aArr) {
            if (this.f18783o == null) {
                this.f18783o = new HashSet();
            }
            for (AbstractC5062a abstractC5062a : abstractC5062aArr) {
                this.f18783o.add(Integer.valueOf(abstractC5062a.f19282a));
                this.f18783o.add(Integer.valueOf(abstractC5062a.f19283b));
            }
            this.f18781m.m15799b(abstractC5062aArr);
            return this;
        }

        @SuppressLint({"RestrictedApi"})
        /* renamed from: d */
        public T m15809d() {
            Executor executor;
            if (this.f18771c != null) {
                if (this.f18769a != null) {
                    Executor executor2 = this.f18773e;
                    if (executor2 == null && this.f18774f == null) {
                        Executor m16719d = C4386a.m16719d();
                        this.f18774f = m16719d;
                        this.f18773e = m16719d;
                    } else if (executor2 != null && this.f18774f == null) {
                        this.f18774f = executor2;
                    } else if (executor2 == null && (executor = this.f18774f) != null) {
                        this.f18773e = executor;
                    }
                    Set<Integer> set = this.f18783o;
                    if (set != null && this.f18782n != null) {
                        for (Integer num : set) {
                            if (this.f18782n.contains(num)) {
                                throw new IllegalArgumentException("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + num);
                            }
                        }
                    }
                    if (this.f18775g == null) {
                        this.f18775g = new C5521c();
                    }
                    String str = this.f18784p;
                    if (str != null || this.f18785q != null) {
                        if (this.f18770b != null) {
                            if (str != null && this.f18785q != null) {
                                throw new IllegalArgumentException("Both createFromAsset() and createFromFile() was called on this Builder but the database can only be created using one of the two configurations.");
                            }
                            this.f18775g = new C4688k(str, this.f18785q, this.f18775g);
                        } else {
                            throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                        }
                    }
                    Context context = this.f18771c;
                    C4672a c4672a = new C4672a(context, this.f18770b, this.f18775g, this.f18781m, this.f18772d, this.f18776h, this.f18777i.m15801d(context), this.f18773e, this.f18774f, this.f18778j, this.f18779k, this.f18780l, this.f18782n, this.f18784p, this.f18785q);
                    T t = (T) C4675d.m15832b(this.f18769a, "_Impl");
                    t.m15819l(c4672a);
                    return t;
                }
                throw new IllegalArgumentException("Must provide an abstract class that extends RoomDatabase");
            }
            throw new IllegalArgumentException("Cannot provide null context for the database.");
        }

        public C4677a(Context context, Class<T> cls, String str) {
            this.f18771c = context;
            this.f18769a = cls;
            this.f18770b = str;
        }
    }

    /* renamed from: n0.e$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractC4678b {
        /* renamed from: a */
        public void m15805a(InterfaceC5382b interfaceC5382b) {
        }

        /* renamed from: b */
        public void m15804b(InterfaceC5382b interfaceC5382b) {
        }

        /* renamed from: c */
        public void mo15803c(InterfaceC5382b interfaceC5382b) {
        }
    }

    /* renamed from: n0.e$c */
    /* loaded from: classes.dex */
    public enum EnumC4679c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        /* renamed from: c */
        public static boolean m15802c(ActivityManager activityManager) {
            boolean isLowRamDevice;
            if (Build.VERSION.SDK_INT >= 19) {
                isLowRamDevice = activityManager.isLowRamDevice();
                return isLowRamDevice;
            }
            return false;
        }

        @SuppressLint({"NewApi"})
        /* renamed from: d */
        public EnumC4679c m15801d(Context context) {
            if (this != AUTOMATIC) {
                return this;
            }
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager != null && !m15802c(activityManager)) {
                return WRITE_AHEAD_LOGGING;
            }
            return TRUNCATE;
        }
    }

    /* renamed from: n0.e$d */
    /* loaded from: classes.dex */
    public static class C4680d {

        /* renamed from: a */
        public HashMap<Integer, TreeMap<Integer, AbstractC5062a>> f18790a = new HashMap<>();

        /* renamed from: b */
        public void m15799b(AbstractC5062a... abstractC5062aArr) {
            for (AbstractC5062a abstractC5062a : abstractC5062aArr) {
                m15800a(abstractC5062a);
            }
        }

        /* renamed from: a */
        public final void m15800a(AbstractC5062a abstractC5062a) {
            int i = abstractC5062a.f19282a;
            int i2 = abstractC5062a.f19283b;
            TreeMap<Integer, AbstractC5062a> treeMap = this.f18790a.get(Integer.valueOf(i));
            if (treeMap == null) {
                treeMap = new TreeMap<>();
                this.f18790a.put(Integer.valueOf(i), treeMap);
            }
            AbstractC5062a abstractC5062a2 = treeMap.get(Integer.valueOf(i2));
            if (abstractC5062a2 != null) {
                Log.w("ROOM", "Overriding migration " + abstractC5062a2 + " with " + abstractC5062a);
            }
            treeMap.put(Integer.valueOf(i2), abstractC5062a);
        }

        /* renamed from: c */
        public List<AbstractC5062a> m15798c(int i, int i2) {
            boolean z;
            if (i == i2) {
                return Collections.emptyList();
            }
            if (i2 > i) {
                z = true;
            } else {
                z = false;
            }
            return m15797d(new ArrayList(), z, i, i2);
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0016 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0017  */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.List<p137o0.AbstractC5062a> m15797d(java.util.List<p137o0.AbstractC5062a> r7, boolean r8, int r9, int r10) {
            /*
                r6 = this;
            L0:
                if (r8 == 0) goto L5
                if (r9 >= r10) goto L58
                goto L7
            L5:
                if (r9 <= r10) goto L58
            L7:
                java.util.HashMap<java.lang.Integer, java.util.TreeMap<java.lang.Integer, o0.a>> r0 = r6.f18790a
                java.lang.Integer r1 = java.lang.Integer.valueOf(r9)
                java.lang.Object r0 = r0.get(r1)
                java.util.TreeMap r0 = (java.util.TreeMap) r0
                r1 = 0
                if (r0 != 0) goto L17
                return r1
            L17:
                if (r8 == 0) goto L1e
                java.util.NavigableSet r2 = r0.descendingKeySet()
                goto L22
            L1e:
                java.util.Set r2 = r0.keySet()
            L22:
                java.util.Iterator r2 = r2.iterator()
            L26:
                boolean r3 = r2.hasNext()
                r4 = 1
                r5 = 0
                if (r3 == 0) goto L54
                java.lang.Object r3 = r2.next()
                java.lang.Integer r3 = (java.lang.Integer) r3
                int r3 = r3.intValue()
                if (r8 == 0) goto L40
                if (r3 > r10) goto L45
                if (r3 <= r9) goto L45
            L3e:
                r5 = 1
                goto L45
            L40:
                if (r3 < r10) goto L45
                if (r3 >= r9) goto L45
                goto L3e
            L45:
                if (r5 == 0) goto L26
                java.lang.Integer r9 = java.lang.Integer.valueOf(r3)
                java.lang.Object r9 = r0.get(r9)
                r7.add(r9)
                r9 = r3
                goto L55
            L54:
                r4 = 0
            L55:
                if (r4 != 0) goto L0
                return r1
            L58:
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: p128n0.AbstractC4676e.C4680d.m15797d(java.util.List, boolean, int, int):java.util.List");
        }
    }

    /* renamed from: n */
    public static boolean m15817n() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    /* renamed from: e */
    public abstract C0351c mo15826e();

    /* renamed from: f */
    public abstract InterfaceC5383c mo15825f(C4672a c4672a);

    /* renamed from: h */
    public Lock m15823h() {
        return this.f18766i.readLock();
    }

    /* renamed from: i */
    public InterfaceC5383c m15822i() {
        return this.f18761d;
    }

    /* renamed from: j */
    public Executor m15821j() {
        return this.f18759b;
    }

    /* renamed from: k */
    public boolean m15820k() {
        return this.f18761d.mo13127n0().mo13137E0();
    }

    /* renamed from: m */
    public void m15818m(InterfaceC5382b interfaceC5382b) {
        this.f18762e.m26738d(interfaceC5382b);
    }

    /* renamed from: p */
    public Cursor m15815p(InterfaceC5389e interfaceC5389e) {
        return m15814q(interfaceC5389e, null);
    }

    @Deprecated
    /* renamed from: r */
    public void m15813r() {
        this.f18761d.mo13127n0().mo13134e0();
    }

    /* renamed from: a */
    public void m15830a() {
        if (this.f18763f || !m15817n()) {
            return;
        }
        throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
    }

    @Deprecated
    /* renamed from: g */
    public void m15824g() {
        this.f18761d.mo13127n0().mo13131s0();
        if (!m15820k()) {
            this.f18762e.m26736f();
        }
    }

    /* renamed from: o */
    public boolean m15816o() {
        InterfaceC5382b interfaceC5382b = this.f18758a;
        if (interfaceC5382b != null && interfaceC5382b.isOpen()) {
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public void m15829b() {
        if (!m15820k() && this.f18767j.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated
    /* renamed from: c */
    public void m15828c() {
        m15830a();
        InterfaceC5382b mo13127n0 = this.f18761d.mo13127n0();
        this.f18762e.m26729m(mo13127n0);
        mo13127n0.mo13130u();
    }

    /* renamed from: d */
    public InterfaceC5390f m15827d(String str) {
        m15830a();
        m15829b();
        return this.f18761d.mo13127n0().mo13136K(str);
    }

    /* renamed from: l */
    public void m15819l(C4672a c4672a) {
        boolean z;
        InterfaceC5383c mo15825f = mo15825f(c4672a);
        this.f18761d = mo15825f;
        if (mo15825f instanceof C4687j) {
            ((C4687j) mo15825f).m15777d(c4672a);
        }
        if (c4672a.f18747g == EnumC4679c.WRITE_AHEAD_LOGGING) {
            z = true;
        } else {
            z = false;
        }
        this.f18761d.setWriteAheadLoggingEnabled(z);
        this.f18765h = c4672a.f18745e;
        this.f18759b = c4672a.f18748h;
        this.f18760c = new ExecutorC4690m(c4672a.f18749i);
        this.f18763f = c4672a.f18746f;
        this.f18764g = z;
        if (c4672a.f18750j) {
            this.f18762e.m26733i(c4672a.f18742b, c4672a.f18743c);
        }
    }

    /* renamed from: q */
    public Cursor m15814q(InterfaceC5389e interfaceC5389e, CancellationSignal cancellationSignal) {
        m15830a();
        m15829b();
        if (cancellationSignal != null) {
            return this.f18761d.mo13127n0().mo13129y0(interfaceC5389e, cancellationSignal);
        }
        return this.f18761d.mo13127n0().mo13139C0(interfaceC5389e);
    }
}
