package p168r4;

import android.content.Context;
import java.util.concurrent.Callable;
/* renamed from: r4.pf2 */
/* loaded from: classes2.dex */
public final class pf2 implements eg2<qf2> {

    /* renamed from: a */
    public final ik0 f29452a;

    /* renamed from: b */
    public final i83 f29453b;

    /* renamed from: c */
    public final Context f29454c;

    public pf2(ik0 ik0Var, i83 i83Var, Context context) {
        this.f29452a = ik0Var;
        this.f29453b = i83Var;
        this.f29454c = context;
    }

    @Override // p168r4.eg2
    public final h83<qf2> zza() {
        return this.f29453b.mo8015c(new Callable(this) { // from class: r4.of2

            /* renamed from: a */
            public final pf2 f28977a;

            {
                this.f28977a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f28977a.m8330a();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ qf2 m8330a() {
        String str;
        String str2;
        String str3;
        String str4;
        Long l;
        if (!this.f29452a.m10622g(this.f29454c)) {
            return new qf2(null, null, null, null, null);
        }
        String m10614o = this.f29452a.m10614o(this.f29454c);
        if (m10614o == null) {
            str = "";
        } else {
            str = m10614o;
        }
        String m10613p = this.f29452a.m10613p(this.f29454c);
        if (m10613p == null) {
            str2 = "";
        } else {
            str2 = m10613p;
        }
        String m10612q = this.f29452a.m10612q(this.f29454c);
        if (m10612q == null) {
            str3 = "";
        } else {
            str3 = m10612q;
        }
        String m10611r = this.f29452a.m10611r(this.f29454c);
        if (m10611r == null) {
            str4 = "";
        } else {
            str4 = m10611r;
        }
        if ("TIME_OUT".equals(str2)) {
            l = (Long) C5592av.m12935c().m8098c(C6225rz.f30967a0);
        } else {
            l = null;
        }
        return new qf2(str, str2, str3, str4, l);
    }
}
