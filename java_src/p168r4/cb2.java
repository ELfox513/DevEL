package p168r4;

import android.os.Bundle;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* renamed from: r4.cb2 */
/* loaded from: classes2.dex */
public final class cb2 implements eg2<db2> {

    /* renamed from: a */
    public final i83 f21466a;

    /* renamed from: b */
    public final gq1 f21467b;

    /* renamed from: c */
    public final pu1 f21468c;

    /* renamed from: d */
    public final eb2 f21469d;

    public cb2(i83 i83Var, gq1 gq1Var, pu1 pu1Var, eb2 eb2Var) {
        this.f21466a = i83Var;
        this.f21467b = gq1Var;
        this.f21468c = pu1Var;
        this.f21469d = eb2Var;
    }

    /* renamed from: a */
    public final /* synthetic */ db2 m12498a() {
        List<String> asList = Arrays.asList(((String) C5592av.m12935c().m8098c(C6225rz.f30935W0)).split(";"));
        Bundle bundle = new Bundle();
        for (String str : asList) {
            try {
                zp2 m11063b = this.f21467b.m11063b(str, new JSONObject());
                m11063b.m4127q();
                Bundle bundle2 = new Bundle();
                try {
                    rd0 m4143a = m11063b.m4143a();
                    if (m4143a != null) {
                        bundle2.putString("sdk_version", m4143a.toString());
                    }
                } catch (mp2 unused) {
                }
                try {
                    rd0 m4144C = m11063b.m4144C();
                    if (m4144C != null) {
                        bundle2.putString("adapter_version", m4144C.toString());
                    }
                } catch (mp2 unused2) {
                }
                bundle.putBundle(str, bundle2);
            } catch (mp2 unused3) {
            }
        }
        return new db2(bundle, null);
    }

    @Override // p168r4.eg2
    public final h83<db2> zza() {
        if (!l13.m9809c((String) C5592av.m12935c().m8098c(C6225rz.f30935W0)) && !this.f21469d.m11828b() && this.f21468c.m8194m()) {
            this.f21469d.m11829a(true);
            return this.f21466a.mo8015c(new Callable(this) { // from class: r4.xa2

                /* renamed from: a */
                public final cb2 f33535a;

                {
                    this.f33535a = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f33535a.m12498a();
                }
            });
        }
        return y73.m4814a(new db2(new Bundle(), null));
    }
}
