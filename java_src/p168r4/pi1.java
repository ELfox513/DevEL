package p168r4;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
/* renamed from: r4.pi1 */
/* loaded from: classes2.dex */
public final class pi1 extends l20 {

    /* renamed from: a */
    public final ej1 f29470a;

    /* renamed from: b */
    public InterfaceC3512a f29471b;

    public pi1(ej1 ej1Var) {
        this.f29470a = ej1Var;
    }

    /* renamed from: f7 */
    public static float m8317f7(InterfaceC3512a interfaceC3512a) {
        Drawable drawable;
        if (interfaceC3512a == null || (drawable = (Drawable) BinderC3514b.m18740t0(interfaceC3512a)) == null || drawable.getIntrinsicWidth() == -1 || drawable.getIntrinsicHeight() == -1) {
            return 0.0f;
        }
        return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
    }

    @Override // p168r4.m20
    public final void zzf(InterfaceC3512a interfaceC3512a) {
        this.f29471b = interfaceC3512a;
    }

    @Override // p168r4.m20
    /* renamed from: H4 */
    public final void mo8320H4(u30 u30Var) {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f30771B4)).booleanValue() && (this.f29470a.m11760e0() instanceof at0)) {
            ((at0) this.f29470a.m11760e0()).m12943l7(u30Var);
        }
    }

    @Override // p168r4.m20
    /* renamed from: c */
    public final float mo8319c() {
        float f;
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30763A4)).booleanValue()) {
            return 0.0f;
        }
        if (this.f29470a.m11739w() != 0.0f) {
            return this.f29470a.m11739w();
        }
        if (this.f29470a.m11760e0() != null) {
            try {
                return this.f29470a.m11760e0().mo6182l();
            } catch (RemoteException e) {
                cm0.m12439d("Remote exception getting video controller aspect ratio.", e);
                return 0.0f;
            }
        }
        InterfaceC3512a interfaceC3512a = this.f29471b;
        if (interfaceC3512a != null) {
            return m8317f7(interfaceC3512a);
        }
        p20 m11767b = this.f29470a.m11767b();
        if (m11767b == null) {
            return 0.0f;
        }
        if (m11767b.mo4482c() != -1 && m11767b.mo4481d() != -1) {
            f = m11767b.mo4482c() / m11767b.mo4481d();
        } else {
            f = 0.0f;
        }
        if (f == 0.0f) {
            return m8317f7(m11767b.mo4484a());
        }
        return f;
    }

    @Override // p168r4.m20
    /* renamed from: f */
    public final float mo8318f() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30771B4)).booleanValue() || this.f29470a.m11760e0() == null) {
            return 0.0f;
        }
        return this.f29470a.m11760e0().mo6185h();
    }

    @Override // p168r4.m20
    /* renamed from: g */
    public final InterfaceC3512a mo8316g() {
        InterfaceC3512a interfaceC3512a = this.f29471b;
        if (interfaceC3512a != null) {
            return interfaceC3512a;
        }
        p20 m11767b = this.f29470a.m11767b();
        if (m11767b == null) {
            return null;
        }
        return m11767b.mo4484a();
    }

    @Override // p168r4.m20
    /* renamed from: h */
    public final InterfaceC6000lx mo8315h() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30771B4)).booleanValue()) {
            return null;
        }
        return this.f29470a.m11760e0();
    }

    @Override // p168r4.m20
    /* renamed from: i */
    public final boolean mo8314i() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30771B4)).booleanValue() || this.f29470a.m11760e0() == null) {
            return false;
        }
        return true;
    }

    @Override // p168r4.m20
    /* renamed from: j */
    public final float mo8313j() {
        if (!((Boolean) C5592av.m12935c().m8098c(C6225rz.f30771B4)).booleanValue() || this.f29470a.m11760e0() == null) {
            return 0.0f;
        }
        return this.f29470a.m11760e0().mo6184i();
    }
}
