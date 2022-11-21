package p168r4;

import java.util.Collections;
import java.util.Set;
/* renamed from: r4.th1 */
/* loaded from: classes2.dex */
public final class th1 implements vr3<Set<String>> {

    /* renamed from: a */
    public final is3<pj1> f31862a;

    public th1(is3<pj1> is3Var) {
        this.f31862a = is3Var;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        Set emptySet;
        if (((ph1) this.f31862a).m8326b().m8306d() != null) {
            emptySet = Collections.singleton("banner");
        } else {
            emptySet = Collections.emptySet();
        }
        ds3.m11980b(emptySet);
        return emptySet;
    }
}
