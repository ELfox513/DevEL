package p024c2;

import androidx.annotation.RecentlyNonNull;
/* renamed from: c2.a */
/* loaded from: classes.dex */
public enum EnumC1035a {
    INVALID_REQUEST("Invalid Ad request."),
    NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
    NETWORK_ERROR("A network error occurred."),
    INTERNAL_ERROR("There was an internal error.");
    

    /* renamed from: a */
    public final String f2938a;

    EnumC1035a(String str) {
        this.f2938a = str;
    }

    @Override // java.lang.Enum
    @RecentlyNonNull
    public String toString() {
        return this.f2938a;
    }
}
