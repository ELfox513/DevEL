package p209w0;

import android.os.Build;
import androidx.work.C0380b;
import androidx.work.ListenableWorker;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import p057f1.C3482p;
/* renamed from: w0.u */
/* loaded from: classes.dex */
public abstract class AbstractC7132u {

    /* renamed from: a */
    public UUID f36146a;

    /* renamed from: b */
    public C3482p f36147b;

    /* renamed from: c */
    public Set<String> f36148c;

    /* renamed from: w0.u$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC7133a<B extends AbstractC7133a<?, ?>, W extends AbstractC7132u> {

        /* renamed from: c */
        public C3482p f36151c;

        /* renamed from: e */
        public Class<? extends ListenableWorker> f36153e;

        /* renamed from: a */
        public boolean f36149a = false;

        /* renamed from: d */
        public Set<String> f36152d = new HashSet();

        /* renamed from: b */
        public UUID f36150b = UUID.randomUUID();

        /* renamed from: c */
        public abstract W mo2468c();

        /* renamed from: d */
        public abstract B mo2467d();

        /* renamed from: a */
        public final B m2470a(String str) {
            this.f36152d.add(str);
            return mo2467d();
        }

        /* renamed from: e */
        public final B m2466e(C7103b c7103b) {
            this.f36151c.f15930j = c7103b;
            return mo2467d();
        }

        /* renamed from: f */
        public B m2465f(long j, TimeUnit timeUnit) {
            this.f36151c.f15927g = timeUnit.toMillis(j);
            if (Long.MAX_VALUE - System.currentTimeMillis() > this.f36151c.f15927g) {
                return mo2467d();
            }
            throw new IllegalArgumentException("The given initial delay is too large and will cause an overflow!");
        }

        /* renamed from: g */
        public final B m2464g(C0380b c0380b) {
            this.f36151c.f15925e = c0380b;
            return mo2467d();
        }

        public AbstractC7133a(Class<? extends ListenableWorker> cls) {
            this.f36153e = cls;
            this.f36151c = new C3482p(this.f36150b.toString(), cls.getName());
            m2470a(cls.getName());
        }

        /* renamed from: b */
        public final W m2469b() {
            boolean z;
            W mo2468c = mo2468c();
            C7103b c7103b = this.f36151c.f15930j;
            int i = Build.VERSION.SDK_INT;
            if ((i < 24 || !c7103b.m2521e()) && !c7103b.m2520f() && !c7103b.m2519g() && (i < 23 || !c7103b.m2518h())) {
                z = false;
            } else {
                z = true;
            }
            C3482p c3482p = this.f36151c;
            if (c3482p.f15937q) {
                if (!z) {
                    if (c3482p.f15927g > 0) {
                        throw new IllegalArgumentException("Expedited jobs cannot be delayed");
                    }
                } else {
                    throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
                }
            }
            this.f36150b = UUID.randomUUID();
            C3482p c3482p2 = new C3482p(this.f36151c);
            this.f36151c = c3482p2;
            c3482p2.f15921a = this.f36150b.toString();
            return mo2468c;
        }
    }

    /* renamed from: a */
    public String m2473a() {
        return this.f36146a.toString();
    }

    /* renamed from: b */
    public Set<String> m2472b() {
        return this.f36148c;
    }

    /* renamed from: c */
    public C3482p m2471c() {
        return this.f36147b;
    }

    public AbstractC7132u(UUID uuid, C3482p c3482p, Set<String> set) {
        this.f36146a = uuid;
        this.f36147b = c3482p;
        this.f36148c = set;
    }
}
