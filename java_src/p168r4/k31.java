package p168r4;

import java.util.Map;
/* renamed from: r4.k31 */
/* loaded from: classes2.dex */
public final class k31<AdT> implements l31<AdT> {

    /* renamed from: a */
    public final Map<String, q12<AdT>> f26272a;

    public k31(Map<String, q12<AdT>> map) {
        this.f26272a = map;
    }

    @Override // p168r4.l31
    /* renamed from: f0 */
    public final q12<AdT> mo9803f0(int i, String str) {
        return this.f26272a.get(str);
    }
}
