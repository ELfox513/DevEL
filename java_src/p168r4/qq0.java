package p168r4;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Map;
import p194u3.InterfaceC6907j;
import p235z2.C7601t;
/* renamed from: r4.qq0 */
/* loaded from: classes2.dex */
public abstract class qq0 implements InterfaceC6907j {

    /* renamed from: a */
    public final Context f30286a;

    /* renamed from: b */
    public final String f30287b;

    /* renamed from: d */
    public final WeakReference<po0> f30288d;

    /* renamed from: e */
    public abstract boolean mo4112e(String str);

    /* renamed from: f */
    public boolean mo4111f(String str, String[] strArr) {
        return mo4112e(str);
    }

    /* renamed from: g */
    public boolean mo4110g(String str, String[] strArr, hq0 hq0Var) {
        return mo4112e(str);
    }

    /* renamed from: h */
    public void mo4109h(int i) {
    }

    /* renamed from: i */
    public void mo4108i(int i) {
    }

    /* renamed from: j */
    public void mo4107j(int i) {
    }

    /* renamed from: k */
    public void mo4106k(int i) {
    }

    /* renamed from: m */
    public abstract void mo4105m();

    /* renamed from: n */
    public final void m7704n(String str, String str2, long j, long j2, boolean z, long j3, long j4, long j5, int i, int i2) {
        vl0.f32748b.post(new kq0(this, str, str2, j, j2, j3, j4, j5, z, i, i2));
    }

    /* renamed from: o */
    public final void m7703o(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        vl0.f32748b.post(new lq0(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    /* renamed from: p */
    public final void m7702p(String str, String str2, int i) {
        vl0.f32748b.post(new mq0(this, str, str2, i));
    }

    /* renamed from: q */
    public final void m7701q(String str, String str2, long j) {
        vl0.f32748b.post(new nq0(this, str, str2, j));
    }

    /* renamed from: r */
    public final void m7700r(String str, String str2, String str3, String str4) {
        vl0.f32748b.post(new oq0(this, str, str2, str3, str4));
    }

    @Override // p194u3.InterfaceC6907j
    public void release() {
    }

    /* renamed from: s */
    public static /* synthetic */ void m7699s(qq0 qq0Var, String str, Map map) {
        po0 po0Var = qq0Var.f30288d.get();
        if (po0Var != null) {
            po0Var.mo5125H0("onPrecacheEvent", map);
        }
    }

    public qq0(po0 po0Var) {
        Context context = po0Var.getContext();
        this.f30286a = context;
        this.f30287b = C7601t.m939d().m26339P(context, po0Var.mo5061n().f25171a);
        this.f30288d = new WeakReference<>(po0Var);
    }
}
