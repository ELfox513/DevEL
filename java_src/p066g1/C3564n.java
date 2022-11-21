package p066g1;

import android.content.Context;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.C0407a;
import java.util.UUID;
import p048e1.InterfaceC3359a;
import p057f1.InterfaceC3485q;
import p075h1.C3944d;
import p084i1.InterfaceC4086a;
import p115l5.InterfaceFutureC4566a;
import p209w0.AbstractC7114j;
import p209w0.C7108e;
import p209w0.EnumC7130s;
import p209w0.InterfaceC7109f;
/* renamed from: g1.n */
/* loaded from: classes.dex */
public class C3564n implements InterfaceC7109f {

    /* renamed from: d */
    public static final String f16118d = AbstractC7114j.m2489f("WMFgUpdater");

    /* renamed from: a */
    public final InterfaceC4086a f16119a;

    /* renamed from: b */
    public final InterfaceC3359a f16120b;

    /* renamed from: c */
    public final InterfaceC3485q f16121c;

    /* renamed from: g1.n$a */
    /* loaded from: classes.dex */
    public class RunnableC3565a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C3944d f16122a;

        /* renamed from: b */
        public final /* synthetic */ UUID f16123b;

        /* renamed from: d */
        public final /* synthetic */ C7108e f16124d;

        /* renamed from: k */
        public final /* synthetic */ Context f16125k;

        public RunnableC3565a(C3944d c3944d, UUID uuid, C7108e c7108e, Context context) {
            this.f16122a = c3944d;
            this.f16123b = uuid;
            this.f16124d = c7108e;
            this.f16125k = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!this.f16122a.isCancelled()) {
                    String uuid = this.f16123b.toString();
                    EnumC7130s mo18773l = C3564n.this.f16121c.mo18773l(uuid);
                    if (mo18773l != null && !mo18773l.m2478c()) {
                        C3564n.this.f16120b.mo2209a(uuid, this.f16124d);
                        this.f16125k.startService(C0407a.m26590a(this.f16125k, uuid, this.f16124d));
                    } else {
                        throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                    }
                }
                this.f16122a.mo17694q(null);
            } catch (Throwable th) {
                this.f16122a.mo17693r(th);
            }
        }
    }

    public C3564n(WorkDatabase workDatabase, InterfaceC3359a interfaceC3359a, InterfaceC4086a interfaceC4086a) {
        this.f16120b = interfaceC3359a;
        this.f16119a = interfaceC4086a;
        this.f16121c = workDatabase.mo26644B();
    }

    @Override // p209w0.InterfaceC7109f
    /* renamed from: a */
    public InterfaceFutureC4566a<Void> mo2498a(Context context, UUID uuid, C7108e c7108e) {
        C3944d m17691u = C3944d.m17691u();
        this.f16119a.mo17407b(new RunnableC3565a(m17691u, uuid, c7108e, context));
        return m17691u;
    }
}
