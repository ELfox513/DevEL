package p121m2;
/* renamed from: m2.b */
/* loaded from: classes.dex */
public final class C4625b {
    /* renamed from: a */
    public static <TInput, TResult, TException extends Throwable> TResult m15913a(int i, TInput tinput, InterfaceC4624a<TInput, TResult, TException> interfaceC4624a, InterfaceC4626c<TInput, TResult> interfaceC4626c) {
        TResult apply;
        if (i < 1) {
            return interfaceC4624a.apply(tinput);
        }
        do {
            apply = interfaceC4624a.apply(tinput);
            tinput = interfaceC4626c.mo15912a(tinput, apply);
            if (tinput == null) {
                break;
            }
            i--;
        } while (i >= 1);
        return apply;
    }
}
