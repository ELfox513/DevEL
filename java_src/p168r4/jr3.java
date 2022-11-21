package p168r4;

import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: r4.jr3 */
/* loaded from: classes2.dex */
public final class jr3 extends mr3 {

    /* renamed from: a */
    public final Logger f26107a;

    public jr3(String str) {
        this.f26107a = Logger.getLogger(str);
    }

    @Override // p168r4.mr3
    /* renamed from: a */
    public final void mo9277a(String str) {
        this.f26107a.logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
    }
}
