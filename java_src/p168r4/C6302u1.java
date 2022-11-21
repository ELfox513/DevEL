package p168r4;

import java.util.List;
/* renamed from: r4.u1 */
/* loaded from: classes2.dex */
public final class C6302u1 extends AbstractCallableC5710e2 {

    /* renamed from: i */
    public List<Long> f32117i;

    public C6302u1(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2) {
        super(c6338v0, "6LxD9DBfXSlooSx7/LozL06rdHrjyh7Q8PNFejLJXxiRhvgA5vOTtEhIRp3pKXIi", "yXdkchwXd7KBwiPBiUydLTG3hsBC8U5EW7urXPkQrKc=", za4Var, i, 31);
        this.f32117i = null;
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        this.f22747e.m4353v0(-1L);
        this.f22747e.m4352w0(-1L);
        if (this.f32117i == null) {
            this.f32117i = (List) this.f22748f.invoke(null, this.f22744b.m6283c());
        }
        List<Long> list = this.f32117i;
        if (list != null && list.size() == 2) {
            synchronized (this.f22747e) {
                this.f22747e.m4353v0(this.f32117i.get(0).longValue());
                this.f22747e.m4352w0(this.f32117i.get(1).longValue());
            }
        }
    }
}
