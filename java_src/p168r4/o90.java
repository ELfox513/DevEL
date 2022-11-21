package p168r4;

import p016b3.C0543w1;
import p016b3.InterfaceC0487i0;
import p220x3.C7297q;
/* renamed from: r4.o90 */
/* loaded from: classes2.dex */
public final class o90 extends cn0<j80> {

    /* renamed from: d */
    public final InterfaceC0487i0<j80> f28930d;

    /* renamed from: c */
    public final Object f28929c = new Object();

    /* renamed from: e */
    public boolean f28931e = false;

    /* renamed from: f */
    public int f28932f = 0;

    public o90(InterfaceC0487i0<j80> interfaceC0487i0) {
        this.f28930d = interfaceC0487i0;
    }

    /* renamed from: f */
    public final j90 m8865f() {
        boolean z;
        j90 j90Var = new j90(this);
        synchronized (this.f28929c) {
            m12411b(new k90(this, j90Var), new l90(this, j90Var));
            if (this.f28932f >= 0) {
                z = true;
            } else {
                z = false;
            }
            C7297q.m1880m(z);
            this.f28932f++;
        }
        return j90Var;
    }

    /* renamed from: g */
    public final void m8864g() {
        boolean z;
        synchronized (this.f28929c) {
            if (this.f28932f > 0) {
                z = true;
            } else {
                z = false;
            }
            C7297q.m1880m(z);
            C0543w1.m26251k("Releasing 1 reference for JS Engine");
            this.f28932f--;
            m8862i();
        }
    }

    /* renamed from: h */
    public final void m8863h() {
        boolean z;
        synchronized (this.f28929c) {
            if (this.f28932f >= 0) {
                z = true;
            } else {
                z = false;
            }
            C7297q.m1880m(z);
            C0543w1.m26251k("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.f28931e = true;
            m8862i();
        }
    }

    /* renamed from: i */
    public final void m8862i() {
        boolean z;
        synchronized (this.f28929c) {
            if (this.f28932f >= 0) {
                z = true;
            } else {
                z = false;
            }
            C7297q.m1880m(z);
            if (this.f28931e && this.f28932f == 0) {
                C0543w1.m26251k("No reference is left (including root). Cleaning up engine.");
                m12411b(new n90(this), new ym0());
            } else {
                C0543w1.m26251k("There are still references to the engine. Not destroying.");
            }
        }
    }
}
