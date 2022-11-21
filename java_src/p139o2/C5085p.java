package p139o2;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import p085i2.AbstractC4113m;
import p094j2.AbstractC4315f;
import p094j2.AbstractC4317g;
import p094j2.InterfaceC4314e;
import p094j2.InterfaceC4325m;
import p112l2.C4560a;
import p148p2.AbstractC5338i;
import p148p2.InterfaceC5321c;
import p157q2.C5407a;
import p157q2.InterfaceC5408b;
import p166r2.InterfaceC5525a;
/* renamed from: o2.p */
/* loaded from: classes.dex */
public class C5085p {

    /* renamed from: a */
    public final Context f19334a;

    /* renamed from: b */
    public final InterfaceC4314e f19335b;

    /* renamed from: c */
    public final InterfaceC5321c f19336c;

    /* renamed from: d */
    public final InterfaceC5091v f19337d;

    /* renamed from: e */
    public final Executor f19338e;

    /* renamed from: f */
    public final InterfaceC5408b f19339f;

    /* renamed from: g */
    public final InterfaceC5525a f19340g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ Boolean m14694i(AbstractC4113m abstractC4113m) {
        return Boolean.valueOf(this.f19336c.mo13470d0(abstractC4113m));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ Iterable m14693j(AbstractC4113m abstractC4113m) {
        return this.f19336c.mo13472U(abstractC4113m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public /* synthetic */ Object m14691l(Iterable iterable) {
        this.f19336c.mo13466z(iterable);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ Object m14689n(AbstractC4113m abstractC4113m, int i) {
        this.f19337d.mo14673b(abstractC4113m, i + 1);
        return null;
    }

    /* renamed from: q */
    public void m14686q(final AbstractC4113m abstractC4113m, final int i, final Runnable runnable) {
        this.f19338e.execute(new Runnable() { // from class: o2.h
            @Override // java.lang.Runnable
            public final void run() {
                C5085p.this.m14688o(abstractC4113m, i, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public /* synthetic */ Object m14692k(Iterable iterable, AbstractC4113m abstractC4113m, long j) {
        this.f19336c.mo13474K0(iterable);
        this.f19336c.mo13469h0(abstractC4113m, this.f19340g.getTime() + j);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ Object m14690m(AbstractC4113m abstractC4113m, long j) {
        this.f19336c.mo13469h0(abstractC4113m, this.f19340g.getTime() + j);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m14688o(final AbstractC4113m abstractC4113m, final int i, Runnable runnable) {
        try {
            try {
                InterfaceC5408b interfaceC5408b = this.f19339f;
                final InterfaceC5321c interfaceC5321c = this.f19336c;
                interfaceC5321c.getClass();
                interfaceC5408b.mo13329c(new InterfaceC5408b.InterfaceC5409a() { // from class: o2.i
                    @Override // p157q2.InterfaceC5408b.InterfaceC5409a
                    /* renamed from: d */
                    public final Object mo13328d() {
                        return Integer.valueOf(InterfaceC5321c.this.mo13468v());
                    }
                });
                if (!m14695h()) {
                    this.f19339f.mo13329c(new InterfaceC5408b.InterfaceC5409a() { // from class: o2.j
                        @Override // p157q2.InterfaceC5408b.InterfaceC5409a
                        /* renamed from: d */
                        public final Object mo13328d() {
                            Object m14689n;
                            m14689n = C5085p.this.m14689n(abstractC4113m, i);
                            return m14689n;
                        }
                    });
                } else {
                    m14687p(abstractC4113m, i);
                }
            } catch (C5407a unused) {
                this.f19337d.mo14673b(abstractC4113m, i + 1);
            }
        } finally {
            runnable.run();
        }
    }

    /* renamed from: h */
    public boolean m14695h() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f19334a.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    /* renamed from: p */
    public void m14687p(final AbstractC4113m abstractC4113m, int i) {
        AbstractC4317g mo16812b;
        InterfaceC4325m mo16821a = this.f19335b.mo16821a(abstractC4113m.mo17356b());
        long j = 0;
        while (true) {
            final long j2 = j;
            while (((Boolean) this.f19339f.mo13329c(new InterfaceC5408b.InterfaceC5409a() { // from class: o2.k
                @Override // p157q2.InterfaceC5408b.InterfaceC5409a
                /* renamed from: d */
                public final Object mo13328d() {
                    Boolean m14694i;
                    m14694i = C5085p.this.m14694i(abstractC4113m);
                    return m14694i;
                }
            })).booleanValue()) {
                final Iterable<AbstractC5338i> iterable = (Iterable) this.f19339f.mo13329c(new InterfaceC5408b.InterfaceC5409a() { // from class: o2.l
                    @Override // p157q2.InterfaceC5408b.InterfaceC5409a
                    /* renamed from: d */
                    public final Object mo13328d() {
                        Iterable m14693j;
                        m14693j = C5085p.this.m14693j(abstractC4113m);
                        return m14693j;
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return;
                }
                if (mo16821a == null) {
                    C4560a.m16005a("Uploader", "Unknown backend for %s, deleting event batch for it...", abstractC4113m);
                    mo16812b = AbstractC4317g.m16835a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    for (AbstractC5338i abstractC5338i : iterable) {
                        arrayList.add(abstractC5338i.mo13422b());
                    }
                    mo16812b = mo16821a.mo16812b(AbstractC4315f.m16841a().mo16837b(arrayList).mo16836c(abstractC4113m.mo17355c()).mo16838a());
                }
                if (mo16812b.mo16833c() == AbstractC4317g.EnumC4318a.TRANSIENT_ERROR) {
                    this.f19339f.mo13329c(new InterfaceC5408b.InterfaceC5409a() { // from class: o2.m
                        @Override // p157q2.InterfaceC5408b.InterfaceC5409a
                        /* renamed from: d */
                        public final Object mo13328d() {
                            Object m14692k;
                            m14692k = C5085p.this.m14692k(iterable, abstractC4113m, j2);
                            return m14692k;
                        }
                    });
                    this.f19337d.mo14674a(abstractC4113m, i + 1, true);
                    return;
                }
                this.f19339f.mo13329c(new InterfaceC5408b.InterfaceC5409a() { // from class: o2.n
                    @Override // p157q2.InterfaceC5408b.InterfaceC5409a
                    /* renamed from: d */
                    public final Object mo13328d() {
                        Object m14691l;
                        m14691l = C5085p.this.m14691l(iterable);
                        return m14691l;
                    }
                });
                if (mo16812b.mo16833c() == AbstractC4317g.EnumC4318a.OK) {
                    break;
                }
            }
            this.f19339f.mo13329c(new InterfaceC5408b.InterfaceC5409a() { // from class: o2.o
                @Override // p157q2.InterfaceC5408b.InterfaceC5409a
                /* renamed from: d */
                public final Object mo13328d() {
                    Object m14690m;
                    m14690m = C5085p.this.m14690m(abstractC4113m, j2);
                    return m14690m;
                }
            });
            return;
            j = Math.max(j2, mo16812b.mo16834b());
        }
    }

    public C5085p(Context context, InterfaceC4314e interfaceC4314e, InterfaceC5321c interfaceC5321c, InterfaceC5091v interfaceC5091v, Executor executor, InterfaceC5408b interfaceC5408b, InterfaceC5525a interfaceC5525a) {
        this.f19334a = context;
        this.f19335b = interfaceC4314e;
        this.f19336c = interfaceC5321c;
        this.f19337d = interfaceC5091v;
        this.f19338e = executor;
        this.f19339f = interfaceC5408b;
        this.f19340g = interfaceC5525a;
    }
}
