package p168r4;

import java.util.concurrent.Executor;
import p168r4.i31;
import p168r4.r61;
/* renamed from: r4.el2 */
/* loaded from: classes2.dex */
public final class el2<U extends r61<A>, A extends i31> implements pr2<U, A> {

    /* renamed from: a */
    public final zl2<U> f23072a;

    /* renamed from: b */
    public final bm2 f23073b;

    /* renamed from: c */
    public final C6293tt f23074c;

    /* renamed from: d */
    public final String f23075d;

    /* renamed from: e */
    public final Executor f23076e;

    /* renamed from: f */
    public final C5739eu f23077f;

    /* renamed from: g */
    public final er2 f23078g;

    public el2(zl2<U> zl2Var, bm2 bm2Var, C6293tt c6293tt, String str, Executor executor, C5739eu c5739eu, er2 er2Var) {
        this.f23072a = zl2Var;
        this.f23073b = bm2Var;
        this.f23074c = c6293tt;
        this.f23075d = str;
        this.f23076e = executor;
        this.f23077f = c5739eu;
        this.f23078g = er2Var;
    }

    @Override // p168r4.pr2
    /* renamed from: a */
    public final er2 mo8218a() {
        return this.f23078g;
    }

    @Override // p168r4.pr2
    public final Executor zza() {
        return this.f23076e;
    }
}
