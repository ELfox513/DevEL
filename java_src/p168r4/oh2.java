package p168r4;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* renamed from: r4.oh2 */
/* loaded from: classes2.dex */
public final class oh2 implements eg2<ph2> {

    /* renamed from: a */
    public final i83 f28997a;

    /* renamed from: b */
    public final Context f28998b;

    /* renamed from: c */
    public final C6399wo f28999c;

    public oh2(C6399wo c6399wo, i83 i83Var, Context context, byte[] bArr) {
        this.f28999c = c6399wo;
        this.f28997a = i83Var;
        this.f28998b = context;
    }

    @Override // p168r4.eg2
    public final h83<ph2> zza() {
        return this.f28997a.mo8015c(new Callable(this) { // from class: r4.nh2

            /* renamed from: a */
            public final oh2 f28287a;

            {
                this.f28287a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new ph2(new JSONObject());
            }
        });
    }
}
