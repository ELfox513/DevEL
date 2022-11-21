package p168r4;

import android.content.Context;
import android.os.Handler;
/* renamed from: r4.uv2 */
/* loaded from: classes2.dex */
public final class uv2 {

    /* renamed from: f */
    public static uv2 f32450f;

    /* renamed from: a */
    public float f32451a = 0.0f;

    /* renamed from: b */
    public final mv2 f32452b;

    /* renamed from: c */
    public final kv2 f32453c;

    /* renamed from: d */
    public lv2 f32454d;

    /* renamed from: e */
    public nv2 f32455e;

    public uv2(mv2 mv2Var, kv2 kv2Var) {
        this.f32452b = mv2Var;
        this.f32453c = kv2Var;
    }

    /* renamed from: a */
    public static uv2 m6337a() {
        if (f32450f == null) {
            f32450f = new uv2(new mv2(), new kv2());
        }
        return f32450f;
    }

    /* renamed from: f */
    public final float m6332f() {
        return this.f32451a;
    }

    /* renamed from: b */
    public final void m6336b(Context context) {
        this.f32454d = new lv2(new Handler(), context, new jv2(), this, null);
    }

    /* renamed from: e */
    public final void m6333e(float f) {
        this.f32451a = f;
        if (this.f32455e == null) {
            this.f32455e = nv2.m8988a();
        }
        for (cv2 cv2Var : this.f32455e.m8983f()) {
            cv2Var.m12342g().m12290j(f);
        }
    }

    /* renamed from: c */
    public final void m6335c() {
        pv2.m8123a().m8117g(this);
        pv2.m8123a().m8121c();
        if (pv2.m8123a().m8119e()) {
            sw2.m6982f().m6981g();
        }
        this.f32454d.m9559a();
    }

    /* renamed from: d */
    public final void m6334d() {
        sw2.m6982f().m6980h();
        pv2.m8123a().m8120d();
        this.f32454d.m9558b();
    }
}
