package p168r4;

import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p235z2.C7582a;
/* renamed from: r4.do1 */
/* loaded from: classes2.dex */
public final class do1 implements Callable<fo1> {

    /* renamed from: a */
    public final C7582a f22363a;

    /* renamed from: b */
    public final os0 f22364b;

    /* renamed from: c */
    public final Context f22365c;

    /* renamed from: d */
    public final ls1 f22366d;

    /* renamed from: e */
    public final xt2 f22367e;

    /* renamed from: f */
    public final c12 f22368f;

    /* renamed from: g */
    public final Executor f22369g;

    /* renamed from: h */
    public final C6300u f22370h;

    /* renamed from: i */
    public final im0 f22371i;

    /* renamed from: j */
    public final pu2 f22372j;

    public do1(Context context, Executor executor, C6300u c6300u, im0 im0Var, C7582a c7582a, os0 os0Var, c12 c12Var, pu2 pu2Var, ls1 ls1Var, xt2 xt2Var) {
        this.f22365c = context;
        this.f22369g = executor;
        this.f22370h = c6300u;
        this.f22371i = im0Var;
        this.f22363a = c7582a;
        this.f22364b = os0Var;
        this.f22368f = c12Var;
        this.f22372j = pu2Var;
        this.f22366d = ls1Var;
        this.f22367e = xt2Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ fo1 call() {
        fo1 fo1Var = new fo1(this);
        fo1Var.m11455b();
        return fo1Var;
    }
}
