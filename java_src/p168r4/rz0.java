package p168r4;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* renamed from: r4.rz0 */
/* loaded from: classes2.dex */
public final class rz0 implements vr3<Set<ve1<d81>>> {

    /* renamed from: a */
    public final is3<oz0> f31177a;

    /* renamed from: b */
    public final is3<Executor> f31178b;

    /* renamed from: c */
    public final is3<JSONObject> f31179c;

    public rz0(is3<oz0> is3Var, is3<Executor> is3Var2, is3<JSONObject> is3Var3) {
        this.f31177a = is3Var;
        this.f31178b = is3Var2;
        this.f31179c = is3Var3;
    }

    @Override // p168r4.is3
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo4079a() {
        Set singleton;
        oz0 mo4079a = this.f31177a.mo4079a();
        i83 i83Var = qm0.f30190a;
        ds3.m11980b(i83Var);
        if (this.f31179c.mo4079a() == null) {
            singleton = Collections.emptySet();
        } else {
            singleton = Collections.singleton(new ve1(mo4079a, i83Var));
        }
        ds3.m11980b(singleton);
        return singleton;
    }
}
