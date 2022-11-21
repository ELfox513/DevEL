package p168r4;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.concurrent.Callable;
/* renamed from: r4.dc2 */
/* loaded from: classes2.dex */
public final class dc2 implements eg2<ec2> {

    /* renamed from: a */
    public final i83 f22222a;

    /* renamed from: b */
    public final Context f22223b;

    public dc2(i83 i83Var, Context context) {
        this.f22222a = i83Var;
        this.f22223b = context;
    }

    @Override // p168r4.eg2
    public final h83<ec2> zza() {
        return this.f22222a.mo8015c(new Callable(this) { // from class: r4.bc2

            /* renamed from: a */
            public final dc2 f20977a;

            {
                this.f20977a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f20977a.m12169a();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ ec2 m12169a() {
        double d;
        Intent registerReceiver = this.f22223b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra("status", -1);
            double intExtra2 = registerReceiver.getIntExtra("level", -1);
            double intExtra3 = registerReceiver.getIntExtra("scale", -1);
            Double.isNaN(intExtra2);
            Double.isNaN(intExtra3);
            d = intExtra2 / intExtra3;
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
        } else {
            d = -1.0d;
        }
        return new ec2(d, z);
    }
}
