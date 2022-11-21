package p168r4;

import java.io.IOException;
/* renamed from: r4.tc */
/* loaded from: classes2.dex */
public final class C6276tc extends Exception {
    public C6276tc(int i, String str, Throwable th, int i2) {
        super(null, th);
    }

    /* renamed from: a */
    public static C6276tc m6885a(Exception exc, int i) {
        return new C6276tc(1, null, exc, i);
    }

    /* renamed from: b */
    public static C6276tc m6884b(IOException iOException) {
        return new C6276tc(0, null, iOException, -1);
    }

    /* renamed from: c */
    public static C6276tc m6883c(RuntimeException runtimeException) {
        return new C6276tc(2, null, runtimeException, -1);
    }
}
