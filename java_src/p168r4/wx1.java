package p168r4;

import java.util.Map;
/* renamed from: r4.wx1 */
/* loaded from: classes2.dex */
public final class wx1 implements vr3<vx1> {

    /* renamed from: a */
    public final is3<Map<String, is3<xx1>>> f33353a;

    /* renamed from: b */
    public final is3<i83> f33354b;

    /* renamed from: c */
    public final is3<ea1> f33355c;

    public wx1(is3<Map<String, is3<xx1>>> is3Var, is3<i83> is3Var2, is3<ea1> is3Var3) {
        this.f33353a = is3Var;
        this.f33354b = is3Var2;
        this.f33355c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: b */
    public final vx1 mo4079a() {
        Map m12365d = ((cs3) this.f33353a).m12365d();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        return new vx1(m12365d, i83Var, ((fa1) this.f33355c).mo4079a());
    }
}
