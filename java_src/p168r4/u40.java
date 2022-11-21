package p168r4;

import java.util.Map;
/* renamed from: r4.u40 */
/* loaded from: classes2.dex */
public final class u40 implements u50<Object> {

    /* renamed from: a */
    public final v40 f32165a;

    public u40(v40 v40Var) {
        this.f32165a = v40Var;
    }

    @Override // p168r4.u50
    /* renamed from: a */
    public final void mo4240a(Object obj, Map<String, String> map) {
        String str = map.get("name");
        if (str == null) {
            cm0.m12437f("App event with no name parameter.");
        } else {
            this.f32165a.mo4162n0(str, map.get("info"));
        }
    }
}
