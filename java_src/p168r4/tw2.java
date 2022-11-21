package p168r4;

import java.util.Collection;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: r4.tw2 */
/* loaded from: classes2.dex */
public abstract class tw2 extends uw2 {

    /* renamed from: c */
    public final HashSet<String> f32046c;

    /* renamed from: d */
    public final JSONObject f32047d;

    /* renamed from: e */
    public final long f32048e;

    /* JADX WARN: Multi-variable type inference failed */
    public tw2(mw2 mw2Var, mw2 mw2Var2, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(mw2Var, null);
        this.f32046c = new HashSet<>((Collection<? extends String>) mw2Var2);
        this.f32047d = hashSet;
        this.f32048e = jSONObject;
    }
}
