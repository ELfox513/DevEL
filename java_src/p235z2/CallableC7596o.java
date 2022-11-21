package p235z2;

import android.content.Context;
import java.util.concurrent.Callable;
import p168r4.C6263t;
import p168r4.C6300u;
import p168r4.im0;
/* renamed from: z2.o */
/* loaded from: classes.dex */
public final class CallableC7596o implements Callable<C6300u> {

    /* renamed from: a */
    public final /* synthetic */ BinderC7600s f37577a;

    public CallableC7596o(BinderC7600s binderC7600s) {
        this.f37577a = binderC7600s;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ C6300u call() {
        im0 im0Var;
        Context context;
        im0Var = this.f37577a.f37585a;
        String str = im0Var.f25171a;
        context = this.f37577a.f37588k;
        return new C6300u(C6263t.m6941v(str, context, false));
    }
}
