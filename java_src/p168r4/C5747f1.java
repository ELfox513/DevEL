package p168r4;

import android.provider.Settings;
import java.lang.reflect.InvocationTargetException;
/* renamed from: r4.f1 */
/* loaded from: classes2.dex */
public final class C5747f1 extends AbstractCallableC5710e2 {
    public C5747f1(C6338v0 c6338v0, String str, String str2, za4 za4Var, int i, int i2) {
        super(c6338v0, "pECbn1i7ArZz8HseR71ZVkvFfTp84DNv2haWC1WmGQudMO74UcIxEa2NyELtzZhK", "LbaQh8VAFWEQeupBiMdSh8EgMse5yKT8p6jkCYTG+aQ=", za4Var, i, 49);
    }

    @Override // p168r4.AbstractCallableC5710e2
    /* renamed from: a */
    public final void mo4485a() {
        this.f22747e.m4375a0(3);
        try {
            int i = 1;
            boolean booleanValue = ((Boolean) this.f22748f.invoke(null, this.f22744b.m6283c())).booleanValue();
            za4 za4Var = this.f22747e;
            if (true == booleanValue) {
                i = 2;
            }
            za4Var.m4375a0(i);
        } catch (InvocationTargetException e) {
            if (e.getTargetException() instanceof Settings.SettingNotFoundException) {
                return;
            }
            throw e;
        }
    }
}
