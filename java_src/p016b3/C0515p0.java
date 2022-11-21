package p016b3;

import java.util.Collections;
import java.util.Map;
import p168r4.bm0;
import p168r4.u84;
import p168r4.v84;
import p168r4.w94;
/* renamed from: b3.p0 */
/* loaded from: classes.dex */
public final class C0515p0 extends w94 {

    /* renamed from: A */
    public final /* synthetic */ Map f1665A;

    /* renamed from: B */
    public final /* synthetic */ bm0 f1666B;

    /* renamed from: z */
    public final /* synthetic */ byte[] f1667z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0515p0(C0539v0 c0539v0, int i, String str, v84 v84Var, u84 u84Var, byte[] bArr, Map map, bm0 bm0Var) {
        super(i, str, v84Var, u84Var);
        this.f1667z = bArr;
        this.f1665A = map;
        this.f1666B = bm0Var;
    }

    @Override // p168r4.q84
    /* renamed from: B */
    public final Map<String, String> mo7952B() {
        Map<String, String> map = this.f1665A;
        return map == null ? Collections.emptyMap() : map;
    }

    @Override // p168r4.q84
    /* renamed from: C */
    public final byte[] mo7951C() {
        byte[] bArr = this.f1667z;
        if (bArr == null) {
            return null;
        }
        return bArr;
    }

    @Override // p168r4.q84
    /* renamed from: I */
    public final /* bridge */ /* synthetic */ void mo7947I(String str) {
        mo5794O(str);
    }

    @Override // p168r4.w94
    /* renamed from: O */
    public final void mo5794O(String str) {
        this.f1666B.m12761e(str);
        super.mo5794O(str);
    }
}
