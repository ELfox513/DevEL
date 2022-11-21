package p168r4;

import java.util.UUID;
import org.json.JSONObject;
import p235z2.C7601t;
/* renamed from: r4.sz0 */
/* loaded from: classes2.dex */
public final class sz0 implements vr3<C5879im> {

    /* renamed from: a */
    public final is3<no2> f31592a;

    /* renamed from: b */
    public final is3<im0> f31593b;

    /* renamed from: c */
    public final is3<JSONObject> f31594c;

    /* renamed from: d */
    public final is3<String> f31595d;

    public sz0(is3<no2> is3Var, is3<im0> is3Var2, is3<JSONObject> is3Var3, is3<String> is3Var4) {
        this.f31592a = is3Var;
        this.f31593b = is3Var2;
        this.f31594c = is3Var3;
        this.f31595d = is3Var4;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        ((y31) this.f31592a).m4921b();
        im0 m8207b = ((pu0) this.f31593b).m8207b();
        JSONObject mo4079a = this.f31594c.mo4079a();
        String mo4079a2 = this.f31595d.mo4079a();
        boolean equals = "native".equals(mo4079a2);
        C7601t.m939d();
        return new C5879im(UUID.randomUUID().toString(), m8207b, mo4079a2, mo4079a, false, equals);
    }
}
