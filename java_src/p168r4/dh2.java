package p168r4;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* renamed from: r4.dh2 */
/* loaded from: classes2.dex */
public final class dh2 implements eg2<eh2> {

    /* renamed from: a */
    public final Context f22256a;

    /* renamed from: b */
    public final String f22257b;

    /* renamed from: c */
    public final i83 f22258c;

    public dh2(qg0 qg0Var, Context context, String str, i83 i83Var) {
        this.f22256a = context;
        this.f22257b = str;
        this.f22258c = i83Var;
    }

    @Override // p168r4.eg2
    public final h83<eh2> zza() {
        return this.f22258c.mo8015c(new Callable(this) { // from class: r4.ch2

            /* renamed from: a */
            public final dh2 f21536a;

            {
                this.f21536a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new eh2(new JSONObject());
            }
        });
    }
}
