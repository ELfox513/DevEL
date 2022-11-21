package p066g1;

import androidx.work.impl.WorkDatabase;
import java.util.LinkedList;
import java.util.UUID;
import p057f1.InterfaceC3460b;
import p057f1.InterfaceC3485q;
import p209w0.EnumC7130s;
import p209w0.InterfaceC7119m;
import p217x0.C7192c;
import p217x0.C7196f;
import p217x0.C7199i;
import p217x0.InterfaceC7195e;
/* renamed from: g1.a */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC3545a implements Runnable {

    /* renamed from: a */
    public final C7192c f16077a = new C7192c();

    /* renamed from: g1.a$a */
    /* loaded from: classes.dex */
    public class C3546a extends AbstractRunnableC3545a {

        /* renamed from: b */
        public final /* synthetic */ C7199i f16078b;

        /* renamed from: d */
        public final /* synthetic */ UUID f16079d;

        public C3546a(C7199i c7199i, UUID uuid) {
            this.f16078b = c7199i;
            this.f16079d = uuid;
        }

        @Override // p066g1.AbstractRunnableC3545a
        /* renamed from: h */
        public void mo18638h() {
            WorkDatabase m2159r = this.f16078b.m2159r();
            m2159r.m15828c();
            try {
                m18645a(this.f16078b, this.f16079d.toString());
                m2159r.m15813r();
                m2159r.m15824g();
                m18639g(this.f16078b);
            } catch (Throwable th) {
                m2159r.m15824g();
                throw th;
            }
        }
    }

    /* renamed from: g1.a$b */
    /* loaded from: classes.dex */
    public class C3547b extends AbstractRunnableC3545a {

        /* renamed from: b */
        public final /* synthetic */ C7199i f16080b;

        /* renamed from: d */
        public final /* synthetic */ String f16081d;

        public C3547b(C7199i c7199i, String str) {
            this.f16080b = c7199i;
            this.f16081d = str;
        }

        @Override // p066g1.AbstractRunnableC3545a
        /* renamed from: h */
        public void mo18638h() {
            WorkDatabase m2159r = this.f16080b.m2159r();
            m2159r.m15828c();
            try {
                for (String str : m2159r.mo26644B().mo18769p(this.f16081d)) {
                    m18645a(this.f16080b, str);
                }
                m2159r.m15813r();
                m2159r.m15824g();
                m18639g(this.f16080b);
            } catch (Throwable th) {
                m2159r.m15824g();
                throw th;
            }
        }
    }

    /* renamed from: g1.a$c */
    /* loaded from: classes.dex */
    public class C3548c extends AbstractRunnableC3545a {

        /* renamed from: b */
        public final /* synthetic */ C7199i f16082b;

        /* renamed from: d */
        public final /* synthetic */ String f16083d;

        /* renamed from: k */
        public final /* synthetic */ boolean f16084k;

        public C3548c(C7199i c7199i, String str, boolean z) {
            this.f16082b = c7199i;
            this.f16083d = str;
            this.f16084k = z;
        }

        @Override // p066g1.AbstractRunnableC3545a
        /* renamed from: h */
        public void mo18638h() {
            WorkDatabase m2159r = this.f16082b.m2159r();
            m2159r.m15828c();
            try {
                for (String str : m2159r.mo26644B().mo18774k(this.f16083d)) {
                    m18645a(this.f16082b, str);
                }
                m2159r.m15813r();
                m2159r.m15824g();
                if (this.f16084k) {
                    m18639g(this.f16082b);
                }
            } catch (Throwable th) {
                m2159r.m15824g();
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static AbstractRunnableC3545a m18644b(UUID uuid, C7199i c7199i) {
        return new C3546a(c7199i, uuid);
    }

    /* renamed from: c */
    public static AbstractRunnableC3545a m18643c(String str, C7199i c7199i, boolean z) {
        return new C3548c(c7199i, str, z);
    }

    /* renamed from: d */
    public static AbstractRunnableC3545a m18642d(String str, C7199i c7199i) {
        return new C3547b(c7199i, str);
    }

    /* renamed from: e */
    public InterfaceC7119m m18641e() {
        return this.f16077a;
    }

    /* renamed from: h */
    public abstract void mo18638h();

    /* renamed from: a */
    public void m18645a(C7199i c7199i, String str) {
        m18640f(c7199i.m2159r(), str);
        c7199i.m2161p().m2199l(str);
        for (InterfaceC7195e interfaceC7195e : c7199i.m2160q()) {
            interfaceC7195e.mo1288e(str);
        }
    }

    /* renamed from: f */
    public final void m18640f(WorkDatabase workDatabase, String str) {
        InterfaceC3485q mo26644B = workDatabase.mo26644B();
        InterfaceC3460b mo26631t = workDatabase.mo26631t();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            EnumC7130s mo18773l = mo26644B.mo18773l(str2);
            if (mo18773l != EnumC7130s.SUCCEEDED && mo18773l != EnumC7130s.FAILED) {
                mo26644B.mo18783b(EnumC7130s.CANCELLED, str2);
            }
            linkedList.addAll(mo26631t.mo18808a(str2));
        }
    }

    /* renamed from: g */
    public void m18639g(C7199i c7199i) {
        C7196f.m2194b(c7199i.m2165l(), c7199i.m2159r(), c7199i.m2160q());
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            mo18638h();
            this.f16077a.m2210a(InterfaceC7119m.f36132a);
        } catch (Throwable th) {
            this.f16077a.m2210a(new InterfaceC7119m.AbstractC7121b.C7122a(th));
        }
    }
}
