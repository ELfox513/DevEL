package p168r4;

import java.util.UUID;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.mi1 */
/* loaded from: classes2.dex */
public final class mi1 implements vr3<C5879im> {

    /* renamed from: a */
    public final is3<im0> f27739a;

    /* renamed from: b */
    public final is3<String> f27740b;

    public mi1(is3<im0> is3Var, is3<String> is3Var2) {
        this.f27739a = is3Var;
        this.f27740b = is3Var2;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        im0 m8207b = ((pu0) this.f27739a).m8207b();
        C7601t.m939d();
        return new C5879im(UUID.randomUUID().toString(), m8207b, "native", new JSONObject(), false, true);
    }
}
