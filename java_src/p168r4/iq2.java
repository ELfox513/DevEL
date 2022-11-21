package p168r4;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
/* renamed from: r4.iq2 */
/* loaded from: classes2.dex */
public final class iq2 implements m71 {

    /* renamed from: a */
    public final HashSet<gl0> f25253a = new HashSet<>();

    /* renamed from: b */
    public final Context f25254b;

    /* renamed from: d */
    public final rl0 f25255d;

    public iq2(Context context, rl0 rl0Var) {
        this.f25254b = context;
        this.f25255d = rl0Var;
    }

    @Override // p168r4.m71
    /* renamed from: B */
    public final synchronized void mo5143B(C5996lt c5996lt) {
        if (c5996lt.f27361a != 3) {
            this.f25255d.m7473b(this.f25253a);
        }
    }

    /* renamed from: a */
    public final synchronized void m10559a(HashSet<gl0> hashSet) {
        this.f25253a.clear();
        this.f25253a.addAll(hashSet);
    }

    /* renamed from: b */
    public final Bundle m10558b() {
        return this.f25255d.m7465j(this.f25254b, this);
    }
}
