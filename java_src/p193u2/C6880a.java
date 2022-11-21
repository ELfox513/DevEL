package p193u2;

import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import p184t2.AbstractC6714k;
import p184t2.C6710g;
import p184t2.C6726v;
import p184t2.C6728w;
/* renamed from: u2.a */
/* loaded from: classes.dex */
public final class C6880a extends AbstractC6714k {
    @RecentlyNullable
    public C6710g[] getAdSizes() {
        return this.f35358a.m6315g();
    }

    @RecentlyNullable
    public InterfaceC6882c getAppEventListener() {
        return this.f35358a.m6313i();
    }

    @RecentlyNonNull
    public C6726v getVideoController() {
        return this.f35358a.m6299w();
    }

    @RecentlyNullable
    public C6728w getVideoOptions() {
        return this.f35358a.m6296z();
    }

    public void setAppEventListener(InterfaceC6882c interfaceC6882c) {
        this.f35358a.m6304r(interfaceC6882c);
    }

    public void setManualImpressionsEnabled(boolean z) {
        this.f35358a.m6303s(z);
    }

    public void setVideoOptions(@RecentlyNonNull C6728w c6728w) {
        this.f35358a.m6297y(c6728w);
    }

    public void setAdSizes(@RecentlyNonNull C6710g... c6710gArr) {
        if (c6710gArr != null && c6710gArr.length > 0) {
            this.f35358a.m6306p(c6710gArr);
            return;
        }
        throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
    }
}
