package p168r4;

import android.content.Context;
import android.os.Looper;
import android.view.accessibility.CaptioningManager;
import java.util.Locale;
/* renamed from: r4.m74 */
/* loaded from: classes2.dex */
public class m74 {

    /* renamed from: a */
    public int f27527a;

    /* renamed from: b */
    public int f27528b;

    /* renamed from: c */
    public boolean f27529c;

    /* renamed from: d */
    public final o33<String> f27530d;

    /* renamed from: e */
    public final o33<String> f27531e;

    /* renamed from: f */
    public final o33<String> f27532f;

    /* renamed from: g */
    public o33<String> f27533g;

    /* renamed from: h */
    public int f27534h;

    /* renamed from: i */
    public final y33<Integer> f27535i;

    @Deprecated
    public m74() {
        this.f27527a = Integer.MAX_VALUE;
        this.f27528b = Integer.MAX_VALUE;
        this.f27529c = true;
        this.f27530d = o33.m8900q();
        this.f27531e = o33.m8900q();
        this.f27532f = o33.m8900q();
        this.f27533g = o33.m8900q();
        this.f27534h = 0;
        this.f27535i = y33.m4917o();
    }

    public m74(n84 n84Var) {
        this.f27527a = n84Var.f28213i;
        this.f27528b = n84Var.f28214j;
        this.f27529c = n84Var.f28215k;
        this.f27530d = n84Var.f28216l;
        this.f27531e = n84Var.f28217m;
        this.f27532f = n84Var.f28221q;
        this.f27533g = n84Var.f28222r;
        this.f27534h = n84Var.f28223s;
        this.f27535i = n84Var.f28227w;
    }

    /* renamed from: j */
    public m74 mo8115j(int i, int i2, boolean z) {
        this.f27527a = i;
        this.f27528b = i2;
        this.f27529c = true;
        return this;
    }

    /* renamed from: k */
    public final m74 m9459k(Context context) {
        CaptioningManager captioningManager;
        int i = C5979lc.f27164a;
        if (i >= 19 && ((i >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled())) {
            this.f27534h = 1088;
            Locale locale = captioningManager.getLocale();
            if (locale != null) {
                this.f27533g = o33.m8899r(C5979lc.m9716U(locale));
            }
        }
        return this;
    }
}
