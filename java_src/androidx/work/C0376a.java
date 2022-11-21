package androidx.work;

import android.os.Build;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import p209w0.AbstractC7112i;
import p209w0.AbstractC7134v;
import p209w0.InterfaceC7110g;
import p209w0.InterfaceC7128q;
import p217x0.C7190a;
/* renamed from: androidx.work.a */
/* loaded from: classes.dex */
public final class C0376a {

    /* renamed from: a */
    public final Executor f1338a;

    /* renamed from: b */
    public final Executor f1339b;

    /* renamed from: c */
    public final AbstractC7134v f1340c;

    /* renamed from: d */
    public final AbstractC7112i f1341d;

    /* renamed from: e */
    public final InterfaceC7128q f1342e;

    /* renamed from: f */
    public final InterfaceC7110g f1343f;

    /* renamed from: g */
    public final String f1344g;

    /* renamed from: h */
    public final int f1345h;

    /* renamed from: i */
    public final int f1346i;

    /* renamed from: j */
    public final int f1347j;

    /* renamed from: k */
    public final int f1348k;

    /* renamed from: l */
    public final boolean f1349l;

    /* renamed from: androidx.work.a$a */
    /* loaded from: classes.dex */
    public class ThreadFactoryC0377a implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f1350a = new AtomicInteger(0);

        /* renamed from: b */
        public final /* synthetic */ boolean f1351b;

        public ThreadFactoryC0377a(boolean z) {
            this.f1351b = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            String str;
            if (this.f1351b) {
                str = "WM.task-";
            } else {
                str = "androidx.work-";
            }
            return new Thread(runnable, str + this.f1350a.incrementAndGet());
        }
    }

    /* renamed from: androidx.work.a$b */
    /* loaded from: classes.dex */
    public static final class C0378b {

        /* renamed from: a */
        public Executor f1353a;

        /* renamed from: b */
        public AbstractC7134v f1354b;

        /* renamed from: c */
        public AbstractC7112i f1355c;

        /* renamed from: d */
        public Executor f1356d;

        /* renamed from: e */
        public InterfaceC7128q f1357e;

        /* renamed from: f */
        public InterfaceC7110g f1358f;

        /* renamed from: g */
        public String f1359g;

        /* renamed from: h */
        public int f1360h = 4;

        /* renamed from: i */
        public int f1361i = 0;

        /* renamed from: j */
        public int f1362j = Integer.MAX_VALUE;

        /* renamed from: k */
        public int f1363k = 20;

        /* renamed from: a */
        public C0376a m26669a() {
            return new C0376a(this);
        }
    }

    /* renamed from: androidx.work.a$c */
    /* loaded from: classes.dex */
    public interface InterfaceC0379c {
        /* renamed from: a */
        C0376a m26668a();
    }

    /* renamed from: b */
    public final ThreadFactory m26681b(boolean z) {
        return new ThreadFactoryC0377a(z);
    }

    /* renamed from: c */
    public String m26680c() {
        return this.f1344g;
    }

    /* renamed from: d */
    public InterfaceC7110g m26679d() {
        return this.f1343f;
    }

    /* renamed from: e */
    public Executor m26678e() {
        return this.f1338a;
    }

    /* renamed from: f */
    public AbstractC7112i m26677f() {
        return this.f1341d;
    }

    /* renamed from: g */
    public int m26676g() {
        return this.f1347j;
    }

    /* renamed from: i */
    public int m26674i() {
        return this.f1346i;
    }

    /* renamed from: j */
    public int m26673j() {
        return this.f1345h;
    }

    /* renamed from: k */
    public InterfaceC7128q m26672k() {
        return this.f1342e;
    }

    /* renamed from: l */
    public Executor m26671l() {
        return this.f1339b;
    }

    /* renamed from: m */
    public AbstractC7134v m26670m() {
        return this.f1340c;
    }

    /* renamed from: h */
    public int m26675h() {
        if (Build.VERSION.SDK_INT == 23) {
            return this.f1348k / 2;
        }
        return this.f1348k;
    }

    public C0376a(C0378b c0378b) {
        Executor executor = c0378b.f1353a;
        if (executor == null) {
            this.f1338a = m26682a(false);
        } else {
            this.f1338a = executor;
        }
        Executor executor2 = c0378b.f1356d;
        if (executor2 == null) {
            this.f1349l = true;
            this.f1339b = m26682a(true);
        } else {
            this.f1349l = false;
            this.f1339b = executor2;
        }
        AbstractC7134v abstractC7134v = c0378b.f1354b;
        if (abstractC7134v == null) {
            this.f1340c = AbstractC7134v.m2462c();
        } else {
            this.f1340c = abstractC7134v;
        }
        AbstractC7112i abstractC7112i = c0378b.f1355c;
        if (abstractC7112i == null) {
            this.f1341d = AbstractC7112i.m2493c();
        } else {
            this.f1341d = abstractC7112i;
        }
        InterfaceC7128q interfaceC7128q = c0378b.f1357e;
        if (interfaceC7128q == null) {
            this.f1342e = new C7190a();
        } else {
            this.f1342e = interfaceC7128q;
        }
        this.f1345h = c0378b.f1360h;
        this.f1346i = c0378b.f1361i;
        this.f1347j = c0378b.f1362j;
        this.f1348k = c0378b.f1363k;
        this.f1343f = c0378b.f1358f;
        this.f1344g = c0378b.f1359g;
    }

    /* renamed from: a */
    public final Executor m26682a(boolean z) {
        return Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), m26681b(z));
    }
}
