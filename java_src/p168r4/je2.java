package p168r4;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.Callable;
import p235z2.C7601t;
/* renamed from: r4.je2 */
/* loaded from: classes2.dex */
public final class je2 implements eg2<ke2> {

    /* renamed from: a */
    public final i83 f26012a;

    /* renamed from: b */
    public final Context f26013b;

    /* renamed from: c */
    public final Set<String> f26014c;

    public je2(i83 i83Var, Context context, Set<String> set) {
        this.f26012a = i83Var;
        this.f26013b = context;
        this.f26014c = set;
    }

    @Override // p168r4.eg2
    public final h83<ke2> zza() {
        return this.f26012a.mo8015c(new Callable(this) { // from class: r4.ie2

            /* renamed from: a */
            public final je2 f25081a;

            {
                this.f25081a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f25081a.m10299a();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ ke2 m10299a() {
        if (((Boolean) C5592av.m12935c().m8098c(C6225rz.f31133u3)).booleanValue()) {
            Set<String> set = this.f26014c;
            if (set.contains("rewarded") || set.contains("interstitial") || set.contains("native") || set.contains("banner")) {
                return new ke2(C7601t.m924s().mo7879a(this.f26013b));
            }
        }
        return new ke2(null);
    }
}
