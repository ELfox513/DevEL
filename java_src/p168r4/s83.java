package p168r4;

import java.util.concurrent.TimeoutException;
/* renamed from: r4.s83 */
/* loaded from: classes2.dex */
public final class s83 extends TimeoutException {
    public /* synthetic */ s83(String str, r83 r83Var) {
        super(str);
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
