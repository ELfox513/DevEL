package p168r4;

import android.os.Bundle;
import p016b3.InterfaceC0549y1;
import p235z2.C7601t;
/* renamed from: r4.vb2 */
/* loaded from: classes2.dex */
public final class vb2 implements eg2 {

    /* renamed from: g */
    public static final Object f32673g = new Object();

    /* renamed from: a */
    public final String f32674a;

    /* renamed from: b */
    public final String f32675b;

    /* renamed from: c */
    public final w41 f32676c;

    /* renamed from: d */
    public final iq2 f32677d;

    /* renamed from: e */
    public final hp2 f32678e;

    /* renamed from: f */
    public final InterfaceC0549y1 f32679f = C7601t.m935h().m9051p();

    public vb2(String str, String str2, w41 w41Var, iq2 iq2Var, hp2 hp2Var) {
        this.f32674a = str;
        this.f32675b = str2;
        this.f32676c = w41Var;
        this.f32677d = iq2Var;
        this.f32678e = hp2Var;
    }

    /* renamed from: a */
    public final /* synthetic */ void m6176a(Bundle bundle, Bundle bundle2) {
        String str;
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30906S3)).booleanValue()) {
            bundle2.putBundle("quality_signals", bundle);
        } else {
            if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30898R3)).booleanValue()) {
                synchronized (f32673g) {
                    this.f32676c.m5885a(this.f32678e.f24779d);
                    bundle2.putBundle("quality_signals", this.f32677d.m10558b());
                }
            } else {
                this.f32676c.m5885a(this.f32678e.f24779d);
                bundle2.putBundle("quality_signals", this.f32677d.m10558b());
            }
        }
        bundle2.putString("seq_num", this.f32674a);
        if (this.f32679f.mo26190y()) {
            str = "";
        } else {
            str = this.f32675b;
        }
        bundle2.putString("session_id", str);
    }

    @Override // p168r4.eg2
    public final h83 zza() {
        final Bundle bundle = new Bundle();
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30906S3)).booleanValue()) {
            this.f32676c.m5885a(this.f32678e.f24779d);
            bundle.putAll(this.f32677d.m10558b());
        }
        return y73.m4814a(new dg2(this, bundle) { // from class: r4.ub2

            /* renamed from: a */
            public final vb2 f32241a;

            /* renamed from: b */
            public final Bundle f32242b;

            {
                this.f32241a = this;
                this.f32242b = bundle;
            }

            @Override // p168r4.dg2
            /* renamed from: d */
            public final void mo4299d(Object obj) {
                this.f32241a.m6176a(this.f32242b, (Bundle) obj);
            }
        });
    }
}
