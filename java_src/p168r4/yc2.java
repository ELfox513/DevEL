package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.concurrent.Callable;
import p235z2.C7601t;
/* renamed from: r4.yc2 */
/* loaded from: classes2.dex */
public final class yc2 implements eg2<zc2> {

    /* renamed from: a */
    public final Context f34025a;

    /* renamed from: b */
    public final i83 f34026b;

    public yc2(Context context, i83 i83Var) {
        this.f34025a = context;
        this.f34026b = i83Var;
    }

    @Override // p168r4.eg2
    public final h83<zc2> zza() {
        return this.f34026b.mo8015c(new Callable(this) { // from class: r4.xc2

            /* renamed from: a */
            public final yc2 f33554a;

            {
                this.f33554a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                String mo26206d;
                String mo26201h;
                String str;
                C7601t.m939d();
                C6065nn mo26208a = C7601t.m935h().m9051p().mo26208a();
                Bundle bundle = null;
                if (mo26208a != null && (!C7601t.m935h().m9051p().mo26204e() || !C7601t.m935h().m9051p().mo26202f())) {
                    if (mo26208a.m9026h()) {
                        mo26208a.m9028f();
                    }
                    C5657cn m9029e = mo26208a.m9029e();
                    if (m9029e != null) {
                        mo26206d = m9029e.m12428b();
                        str = m9029e.m12427c();
                        mo26201h = m9029e.m12426d();
                        if (mo26206d != null) {
                            C7601t.m935h().m9051p().mo26225H(mo26206d);
                        }
                        if (mo26201h != null) {
                            C7601t.m935h().m9051p().mo26221P0(mo26201h);
                        }
                    } else {
                        mo26206d = C7601t.m935h().m9051p().mo26206d();
                        mo26201h = C7601t.m935h().m9051p().mo26201h();
                        str = null;
                    }
                    Bundle bundle2 = new Bundle(1);
                    if (!C7601t.m935h().m9051p().mo26202f()) {
                        if (mo26201h != null && !TextUtils.isEmpty(mo26201h)) {
                            bundle2.putString("v_fp_vertical", mo26201h);
                        } else {
                            bundle2.putString("v_fp_vertical", "no_hash");
                        }
                    }
                    if (mo26206d != null && !C7601t.m935h().m9051p().mo26204e()) {
                        bundle2.putString("fingerprint", mo26206d);
                        if (!mo26206d.equals(str)) {
                            bundle2.putString("v_fp", str);
                        }
                    }
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                }
                return new zc2(bundle);
            }
        });
    }
}
