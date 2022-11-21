package p168r4;

import java.util.concurrent.Callable;
import p016b3.AbstractC0467d0;
import p016b3.C0497k2;
import p235z2.C7601t;
/* renamed from: r4.hq0 */
/* loaded from: classes2.dex */
public final class hq0 extends AbstractC0467d0 {

    /* renamed from: c */
    public final po0 f24794c;

    /* renamed from: d */
    public final qq0 f24795d;

    /* renamed from: e */
    public final String f24796e;

    /* renamed from: f */
    public final String[] f24797f;

    /* renamed from: d */
    public final String m10832d() {
        return this.f24796e;
    }

    /* renamed from: e */
    public final /* synthetic */ Boolean m10831e() {
        return Boolean.valueOf(this.f24795d.mo4110g(this.f24796e, this.f24797f, this));
    }

    @Override // p016b3.AbstractC0467d0
    /* renamed from: a */
    public final void mo10004a() {
        try {
            this.f24795d.mo4111f(this.f24796e, this.f24797f);
        } finally {
            C0497k2.f1630i.post(new gq0(this));
        }
    }

    @Override // p016b3.AbstractC0467d0
    /* renamed from: c */
    public final h83<?> mo10833c() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31083o1)).booleanValue() && (this.f24795d instanceof zq0)) {
            return qm0.f30194e.mo8015c(new Callable(this) { // from class: r4.fq0

                /* renamed from: a */
                public final hq0 f23631a;

                {
                    this.f23631a = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f23631a.m10831e();
                }
            });
        }
        return super.mo10833c();
    }

    public hq0(po0 po0Var, qq0 qq0Var, String str, String[] strArr) {
        this.f24794c = po0Var;
        this.f24795d = qq0Var;
        this.f24796e = str;
        this.f24797f = strArr;
        C7601t.m917z().m10561g(this);
    }
}
