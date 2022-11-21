package p168r4;

import android.os.Bundle;
import com.badlogic.gdx.Net;
/* renamed from: r4.uf2 */
/* loaded from: classes2.dex */
public final class uf2 implements dg2<Bundle> {

    /* renamed from: a */
    public final boolean f32266a;

    /* renamed from: b */
    public final boolean f32267b;

    /* renamed from: c */
    public final String f32268c;

    /* renamed from: d */
    public final boolean f32269d;

    /* renamed from: e */
    public final int f32270e;

    /* renamed from: f */
    public final int f32271f;

    /* renamed from: g */
    public final int f32272g;

    public uf2(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3) {
        this.f32266a = z;
        this.f32267b = z2;
        this.f32268c = str;
        this.f32269d = z3;
        this.f32270e = i;
        this.f32271f = i2;
        this.f32272g = i3;
    }

    @Override // p168r4.dg2
    /* renamed from: d */
    public final /* bridge */ /* synthetic */ void mo4299d(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("js", this.f32268c);
        bundle2.putBoolean("is_nonagon", true);
        bundle2.putString("extra_caps", (String) C5592av.m12935c().m8098c(C6225rz.f31020g2));
        bundle2.putInt("target_api", this.f32270e);
        bundle2.putInt("dv", this.f32271f);
        bundle2.putInt("lv", this.f32272g);
        Bundle m6400a = up2.m6400a(bundle2, "sdk_env");
        m6400a.putBoolean("mf", f10.f23242a.m6673e().booleanValue());
        m6400a.putBoolean("instant_app", this.f32266a);
        m6400a.putBoolean("lite", this.f32267b);
        m6400a.putBoolean("is_privileged_process", this.f32269d);
        bundle2.putBundle("sdk_env", m6400a);
        Bundle m6400a2 = up2.m6400a(m6400a, "build_meta");
        m6400a2.putString("cl", "407425155");
        m6400a2.putString("rapid_rc", "dev");
        m6400a2.putString("rapid_rollup", Net.HttpMethods.HEAD);
        m6400a.putBundle("build_meta", m6400a2);
    }
}
