package p124m5;

import androidx.annotation.RecentlyNonNull;
import p220x3.C7297q;
/* renamed from: m5.h */
/* loaded from: classes2.dex */
public class C4648h extends Exception {
    @Deprecated
    public C4648h() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4648h(@RecentlyNonNull String str) {
        super(str);
        C7297q.m1886g(str, "Detail message must not be empty");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4648h(@RecentlyNonNull String str, @RecentlyNonNull Throwable th) {
        super(str, th);
        C7297q.m1886g(str, "Detail message must not be empty");
    }
}
