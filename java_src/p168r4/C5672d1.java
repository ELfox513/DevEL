package p168r4;

import android.app.Activity;
import android.view.View;
/* renamed from: r4.d1 */
/* loaded from: classes2.dex */
public final class C5672d1 extends AbstractCallableC5710e2 {

    /* renamed from: i */
    public final Activity f22018i;

    /* renamed from: j */
    public final View f22019j;

    public C5672d1(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2, View view, Activity activity) {
        super(c6338v0, "h8EVC95dwYnFQkP2MhkDIC/tXo0ux4wCcOlQmWH2MzSwaPfcZ/24kCQO32wp6PV0", "0H2C2EeQe84lGZgr+dAw2Fmmx+KWvzkBWNdP/wQOLp8=", za4Var, i, 62);
        this.f22019j = view;
        this.f22018i = activity;
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        if (this.f22019j == null) {
            return;
        }
        boolean booleanValue = ((Boolean) C5592av.m12935c().m8098c(C6225rz.f30832J1)).booleanValue();
        Object[] objArr = (Object[]) this.f22748f.invoke(null, this.f22019j, this.f22018i, Boolean.valueOf(booleanValue));
        synchronized (this.f22747e) {
            this.f22747e.m4382T(((Long) objArr[0]).longValue());
            this.f22747e.m4381U(((Long) objArr[1]).longValue());
            if (booleanValue) {
                this.f22747e.m4380V((String) objArr[2]);
            }
        }
    }
}
