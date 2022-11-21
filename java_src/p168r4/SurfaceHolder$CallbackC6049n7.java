package p168r4;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import android.view.TextureView;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: r4.n7 */
/* loaded from: classes2.dex */
public final class SurfaceHolder$CallbackC6049n7 implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, zy3, wm1, InterfaceC5830ha, InterfaceC5938k8, InterfaceC6488z2, InterfaceC6340v2, InterfaceC6197r7, InterfaceC6307u6, InterfaceC6119p3 {

    /* renamed from: a */
    public final /* synthetic */ C6160q7 f28187a;

    public /* synthetic */ SurfaceHolder$CallbackC6049n7(C6160q7 c6160q7, C6123p7 c6123p7) {
        this.f28187a = c6160q7;
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: A0 */
    public final void mo6629A0(boolean z) {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: B0 */
    public final void mo6628B0() {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: C0 */
    public final void mo6627C0(C6159q6 c6159q6) {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: D0 */
    public final void mo6626D0(boolean z) {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: E0 */
    public final void mo6625E0(C6492z6 c6492z6, C6492z6 c6492z62, int i) {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: F0 */
    public final void mo6624F0(C6306u5 c6306u5, int i) {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: G0 */
    public final void mo6623G0(boolean z, int i) {
        C6160q7.m8006H(this.f28187a);
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: H0 */
    public final void mo6622H0(C6047n6 c6047n6) {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: I0 */
    public final void mo6621I0(C6270t6 c6270t6) {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: J0 */
    public final void mo6620J0(int i) {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: K0 */
    public final void mo6619K0(boolean z, int i) {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: L0 */
    public final void mo6618L0(C6454y5 c6454y5) {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: M0 */
    public final void mo6617M0(AbstractC5717e8 abstractC5717e8, int i) {
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: N0 */
    public final void mo6616N0(int i) {
        C6160q7.m8006H(this.f28187a);
    }

    @Override // p168r4.InterfaceC6307u6
    /* renamed from: O0 */
    public final void mo6615O0(j44 j44Var, k54 k54Var) {
    }

    @Override // p168r4.InterfaceC6119p3
    /* renamed from: R */
    public final void mo8496R(boolean z) {
    }

    @Override // p168r4.zy3
    /* renamed from: b */
    public final void mo4027b(long j, int i) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo4027b(j, i);
    }

    @Override // p168r4.wm1
    /* renamed from: d */
    public final void mo5646d(String str) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo5646d(str);
    }

    @Override // p168r4.zy3
    /* renamed from: f */
    public final void mo4025f(Exception exc) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo4025f(exc);
    }

    @Override // p168r4.wm1
    /* renamed from: i */
    public final void mo5644i(int i, long j, long j2) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo5644i(i, j, j2);
    }

    @Override // p168r4.zy3
    /* renamed from: n */
    public final void mo4022n(String str, long j, long j2) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo4022n(str, j, j2);
    }

    @Override // p168r4.wm1
    /* renamed from: o */
    public final void mo5642o(String str, long j, long j2) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo5642o(str, j, j2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f28187a.m8001M(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.f28187a.m8001M(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.f28187a.m8001M(0, 0);
    }

    @Override // p168r4.wm1
    /* renamed from: v */
    public final void mo5640v(Exception exc) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo5640v(exc);
    }

    @Override // p168r4.wm1
    /* renamed from: w */
    public final void mo5639w(long j) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo5639w(j);
    }

    @Override // p168r4.wm1
    /* renamed from: x */
    public final void mo5638x(Exception exc) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo5638x(exc);
    }

    @Override // p168r4.zy3
    /* renamed from: x0 */
    public final void mo4020x0(String str) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo4020x0(str);
    }

    @Override // p168r4.zy3
    /* renamed from: z */
    public final void mo4019z(int i, long j) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo4019z(i, j);
    }

    @Override // p168r4.InterfaceC6119p3
    /* renamed from: z0 */
    public final void mo8495z0(boolean z) {
        C6160q7.m8006H(this.f28187a);
    }

    @Override // p168r4.wm1
    /* renamed from: A */
    public final void mo5647A(C5808gp c5808gp) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo5647A(c5808gp);
        this.f28187a.f30017p = null;
        this.f28187a.f30025x = null;
    }

    @Override // p168r4.zy3
    /* renamed from: C */
    public final void mo4028C(C5808gp c5808gp) {
        c41 c41Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo4028C(c5808gp);
        this.f28187a.f30016o = null;
        this.f28187a.f30024w = null;
    }

    @Override // p168r4.zy3
    /* renamed from: c */
    public final void mo4026c(C5713e5 c5713e5, C5883iq c5883iq) {
        c41 c41Var;
        this.f28187a.f30016o = c5713e5;
        c41Var = this.f28187a.f30010i;
        c41Var.mo4026c(c5713e5, c5883iq);
    }

    @Override // p168r4.wm1
    /* renamed from: e */
    public final void mo5645e(C5808gp c5808gp) {
        c41 c41Var;
        this.f28187a.f30025x = c5808gp;
        c41Var = this.f28187a.f30010i;
        c41Var.mo5645e(c5808gp);
    }

    @Override // p168r4.wm1
    /* renamed from: j */
    public final void mo5643j(C5713e5 c5713e5, C5883iq c5883iq) {
        c41 c41Var;
        this.f28187a.f30017p = c5713e5;
        c41Var = this.f28187a.f30010i;
        c41Var.mo5643j(c5713e5, c5883iq);
    }

    @Override // p168r4.zy3
    /* renamed from: l */
    public final void mo4024l(Object obj, long j) {
        c41 c41Var;
        Object obj2;
        CopyOnWriteArraySet copyOnWriteArraySet;
        c41Var = this.f28187a.f30010i;
        c41Var.mo4024l(obj, j);
        obj2 = this.f28187a.f30019r;
        if (obj2 == obj) {
            copyOnWriteArraySet = this.f28187a.f30009h;
            Iterator it = copyOnWriteArraySet.iterator();
            while (it.hasNext()) {
                ((InterfaceC6381w6) it.next()).mo5829s();
            }
        }
    }

    @Override // p168r4.zy3
    /* renamed from: m */
    public final void mo4023m(C5808gp c5808gp) {
        c41 c41Var;
        this.f28187a.f30024w = c5808gp;
        c41Var = this.f28187a.f30010i;
        c41Var.mo4023m(c5808gp);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        C6160q7.m7959x(this.f28187a, surfaceTexture);
        this.f28187a.m8001M(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.f28187a.m8003K(null);
        this.f28187a.m8001M(0, 0);
        return true;
    }

    @Override // p168r4.wm1
    /* renamed from: p */
    public final void mo5641p(boolean z) {
        boolean z2;
        z2 = this.f28187a.f29997B;
        if (z2 == z) {
            return;
        }
        this.f28187a.f29997B = z;
        C6160q7.m8010D(this.f28187a);
    }

    @Override // p168r4.zy3
    /* renamed from: q */
    public final void mo4021q(pa4 pa4Var) {
        c41 c41Var;
        CopyOnWriteArraySet copyOnWriteArraySet;
        this.f28187a.f30002G = pa4Var;
        c41Var = this.f28187a.f30010i;
        c41Var.mo4021q(pa4Var);
        copyOnWriteArraySet = this.f28187a.f30009h;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((InterfaceC6381w6) it.next()).mo4021q(pa4Var);
        }
    }
}
