package p168r4;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import p235z2.C7601t;
/* renamed from: r4.ug0 */
/* loaded from: classes2.dex */
public final class ug0 implements Callable<tg0> {

    /* renamed from: a */
    public final /* synthetic */ Context f32277a;

    /* renamed from: b */
    public final /* synthetic */ wg0 f32278b;

    public ug0(wg0 wg0Var, Context context) {
        this.f32278b = wg0Var;
        this.f32277a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ tg0 call() {
        WeakHashMap weakHashMap;
        tg0 m7168a;
        WeakHashMap weakHashMap2;
        weakHashMap = this.f32278b.f33186a;
        vg0 vg0Var = (vg0) weakHashMap.get(this.f32277a);
        if (vg0Var != null && vg0Var.f32716a + x00.f33400a.m6673e().longValue() >= C7601t.m932k().mo24763a()) {
            m7168a = new sg0(this.f32277a, vg0Var.f32717b).m7168a();
        } else {
            m7168a = new sg0(this.f32277a).m7168a();
        }
        weakHashMap2 = this.f32278b.f33186a;
        weakHashMap2.put(this.f32277a, new vg0(this.f32278b, m7168a));
        return m7168a;
    }
}
