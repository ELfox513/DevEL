package p168r4;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p016b3.InterfaceC0549y1;
import p026c4.InterfaceC1045f;
import p235z2.C7601t;
/* renamed from: r4.rl0 */
/* loaded from: classes2.dex */
public final class rl0 implements InterfaceC5806gn {

    /* renamed from: b */
    public final InterfaceC0549y1 f30614b;

    /* renamed from: d */
    public final ol0 f30616d;

    /* renamed from: a */
    public final Object f30613a = new Object();

    /* renamed from: e */
    public final HashSet<gl0> f30617e = new HashSet<>();

    /* renamed from: f */
    public final HashSet<ql0> f30618f = new HashSet<>();

    /* renamed from: g */
    public boolean f30619g = false;

    /* renamed from: c */
    public final pl0 f30615c = new pl0();

    /* renamed from: h */
    public final gl0 m7467h(InterfaceC1045f interfaceC1045f, String str) {
        return new gl0(interfaceC1045f, this, this.f30615c.m8283a(), str);
    }

    /* renamed from: i */
    public final boolean m7466i() {
        return this.f30619g;
    }

    /* renamed from: a */
    public final void m7474a(gl0 gl0Var) {
        synchronized (this.f30613a) {
            this.f30617e.add(gl0Var);
        }
    }

    /* renamed from: b */
    public final void m7473b(HashSet<gl0> hashSet) {
        synchronized (this.f30613a) {
            this.f30617e.addAll(hashSet);
        }
    }

    /* renamed from: c */
    public final void m7472c() {
        synchronized (this.f30613a) {
            this.f30616d.m8779a();
        }
    }

    /* renamed from: d */
    public final void m7471d() {
        synchronized (this.f30613a) {
            this.f30616d.m8778b();
        }
    }

    /* renamed from: e */
    public final void m7470e(C6293tt c6293tt, long j) {
        synchronized (this.f30613a) {
            this.f30616d.m8777c(c6293tt, j);
        }
    }

    /* renamed from: f */
    public final void m7469f() {
        synchronized (this.f30613a) {
            this.f30616d.m8776d();
        }
    }

    /* renamed from: g */
    public final void m7468g() {
        synchronized (this.f30613a) {
            this.f30616d.m8775e();
        }
    }

    /* renamed from: j */
    public final Bundle m7465j(Context context, iq2 iq2Var) {
        HashSet<gl0> hashSet = new HashSet<>();
        synchronized (this.f30613a) {
            hashSet.addAll(this.f30617e);
            this.f30617e.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle("app", this.f30616d.m8774f(context, this.f30615c.m8282b()));
        Bundle bundle2 = new Bundle();
        Iterator<ql0> it = this.f30618f.iterator();
        if (!it.hasNext()) {
            bundle.putBundle("slots", bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<gl0> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().m11120j());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            iq2Var.m10559a(hashSet);
            return bundle;
        }
        it.next();
        throw null;
    }

    public rl0(String str, InterfaceC0549y1 interfaceC0549y1) {
        this.f30616d = new ol0(str, interfaceC0549y1);
        this.f30614b = interfaceC0549y1;
    }

    @Override // p168r4.InterfaceC5806gn
    /* renamed from: R */
    public final void mo7475R(boolean z) {
        long mo24763a = C7601t.m932k().mo24763a();
        if (z) {
            if (mo24763a - this.f30614b.mo26191w() > ((Long) C5592av.m12935c().m8098c(C6225rz.f30791E0)).longValue()) {
                this.f30616d.f29045d = -1;
            } else {
                this.f30616d.f29045d = this.f30614b.mo26197n();
            }
            this.f30619g = true;
            return;
        }
        this.f30614b.mo26211X0(mo24763a);
        this.f30614b.mo26205d0(this.f30616d.f29045d);
    }
}
