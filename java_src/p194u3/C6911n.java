package p194u3;

import androidx.annotation.RecentlyNonNull;
import p185t3.C6738d;
/* renamed from: u3.n */
/* loaded from: classes.dex */
public final class C6911n extends UnsupportedOperationException {

    /* renamed from: a */
    public final C6738d f35769a;

    public C6911n(@RecentlyNonNull C6738d c6738d) {
        this.f35769a = c6738d;
    }

    @Override // java.lang.Throwable
    @RecentlyNonNull
    public String getMessage() {
        String valueOf = String.valueOf(this.f35769a);
        StringBuilder sb = new StringBuilder(valueOf.length() + 8);
        sb.append("Missing ");
        sb.append(valueOf);
        return sb.toString();
    }
}
