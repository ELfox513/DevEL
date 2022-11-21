package p168r4;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: r4.g1 */
/* loaded from: classes2.dex */
public final class C5784g1 extends AbstractCallableC5710e2 {

    /* renamed from: j */
    public static final C5785g2<String> f23820j = new C5785g2<>();

    /* renamed from: i */
    public final Context f23821i;

    public C5784g1(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2, Context context) {
        super(c6338v0, "Cm/m2hUfCdldkdMMT3yEm1sAGuFpKVfLQblDoR20XcK7ttTDkHIz3fwaKTv7az9S", "aEm/NgN//tNFhysboe/lIhu1ib9P4g8tTm8w79YCsSs=", za4Var, i, 29);
        this.f23821i = context;
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        this.f22747e.m4355u0("E");
        AtomicReference<String> m11311a = f23820j.m11311a(this.f23821i.getPackageName());
        if (m11311a.get() == null) {
            synchronized (m11311a) {
                if (m11311a.get() == null) {
                    m11311a.set((String) this.f22748f.invoke(null, this.f23821i));
                }
            }
        }
        String str = m11311a.get();
        synchronized (this.f22747e) {
            this.f22747e.m4355u0(fc4.m11575a(str.getBytes(), true));
        }
    }
}
