package p168r4;

import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.h6 */
/* loaded from: classes2.dex */
public final class C5826h6 implements InterfaceC5677d6 {

    /* renamed from: a */
    public final bt3 f24474a;

    /* renamed from: d */
    public int f24477d;

    /* renamed from: e */
    public boolean f24478e;

    /* renamed from: c */
    public final List<ft3> f24476c = new ArrayList();

    /* renamed from: b */
    public final Object f24475b = new Object();

    @Override // p168r4.InterfaceC5677d6
    /* renamed from: a */
    public final Object mo9507a() {
        return this.f24475b;
    }

    @Override // p168r4.InterfaceC5677d6
    /* renamed from: b */
    public final AbstractC5717e8 mo9506b() {
        return this.f24474a.m12696F();
    }

    /* renamed from: c */
    public final void m10973c(int i) {
        this.f24477d = i;
        this.f24478e = false;
        this.f24476c.clear();
    }

    public C5826h6(ht3 ht3Var, boolean z) {
        this.f24474a = new bt3(ht3Var, z);
    }
}
