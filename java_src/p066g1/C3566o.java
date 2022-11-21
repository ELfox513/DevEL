package p066g1;

import android.content.Context;
import androidx.work.C0380b;
import androidx.work.impl.WorkDatabase;
import java.util.UUID;
import p057f1.C3476m;
import p057f1.C3482p;
import p075h1.C3944d;
import p084i1.InterfaceC4086a;
import p115l5.InterfaceFutureC4566a;
import p209w0.AbstractC7114j;
import p209w0.EnumC7130s;
import p209w0.InterfaceC7126o;
/* renamed from: g1.o */
/* loaded from: classes.dex */
public class C3566o implements InterfaceC7126o {

    /* renamed from: c */
    public static final String f16127c = AbstractC7114j.m2489f("WorkProgressUpdater");

    /* renamed from: a */
    public final WorkDatabase f16128a;

    /* renamed from: b */
    public final InterfaceC4086a f16129b;

    /* renamed from: g1.o$a */
    /* loaded from: classes.dex */
    public class RunnableC3567a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ UUID f16130a;

        /* renamed from: b */
        public final /* synthetic */ C0380b f16131b;

        /* renamed from: d */
        public final /* synthetic */ C3944d f16132d;

        public RunnableC3567a(UUID uuid, C0380b c0380b, C3944d c3944d) {
            this.f16130a = uuid;
            this.f16131b = c0380b;
            this.f16132d = c3944d;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3482p mo18772m;
            String uuid = this.f16130a.toString();
            AbstractC7114j m2491c = AbstractC7114j.m2491c();
            String str = C3566o.f16127c;
            m2491c.mo2488a(str, String.format("Updating progress for %s (%s)", this.f16130a, this.f16131b), new Throwable[0]);
            C3566o.this.f16128a.m15828c();
            try {
                mo18772m = C3566o.this.f16128a.mo26644B().mo18772m(uuid);
            } finally {
                try {
                    return;
                } finally {
                }
            }
            if (mo18772m != null) {
                if (mo18772m.f15922b == EnumC7130s.RUNNING) {
                    C3566o.this.f16128a.mo26645A().mo18791b(new C3476m(uuid, this.f16131b));
                } else {
                    AbstractC7114j.m2491c().mo2484h(str, String.format("Ignoring setProgressAsync(...). WorkSpec (%s) is not in a RUNNING state.", uuid), new Throwable[0]);
                }
                this.f16132d.mo17694q(null);
                C3566o.this.f16128a.m15813r();
                return;
            }
            throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
        }
    }

    public C3566o(WorkDatabase workDatabase, InterfaceC4086a interfaceC4086a) {
        this.f16128a = workDatabase;
        this.f16129b = interfaceC4086a;
    }

    @Override // p209w0.InterfaceC7126o
    /* renamed from: a */
    public InterfaceFutureC4566a<Void> mo2479a(Context context, UUID uuid, C0380b c0380b) {
        C3944d m17691u = C3944d.m17691u();
        this.f16129b.mo17407b(new RunnableC3567a(uuid, c0380b, m17691u));
        return m17691u;
    }
}
