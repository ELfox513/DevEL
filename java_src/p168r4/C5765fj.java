package p168r4;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* renamed from: r4.fj */
/* loaded from: classes2.dex */
public class C5765fj extends C6125p9 {

    /* renamed from: b */
    public final C6350vc f23512b;

    public C5765fj(C6350vc c6350vc, int i, int i2) {
        super(m11504b(2008, 1));
        this.f23512b = c6350vc;
    }

    /* renamed from: b */
    public static int m11504b(int i, int i2) {
        return i == 2000 ? i2 != 1 ? 2000 : 2001 : i;
    }

    public C5765fj(IOException iOException, C6350vc c6350vc, int i, int i2) {
        super(iOException, m11504b(i, i2));
        this.f23512b = c6350vc;
    }

    public C5765fj(String str, C6350vc c6350vc, int i, int i2) {
        super(str, m11504b(2001, 1));
        this.f23512b = c6350vc;
    }

    /* renamed from: a */
    public static C5765fj m11505a(IOException iOException, C6350vc c6350vc, int i) {
        String message = iOException.getMessage();
        int i2 = 2001;
        if (iOException instanceof SocketTimeoutException) {
            i2 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i2 = 1004;
        } else if (message != null && h03.m11018a(message).matches("cleartext.*not permitted.*")) {
            i2 = 2007;
        }
        if (i2 == 2007) {
            return new C5727ei(iOException, c6350vc);
        }
        return new C5765fj(iOException, c6350vc, i2, i);
    }

    @Deprecated
    public C5765fj(String str, IOException iOException, C6350vc c6350vc, int i) {
        this(str, iOException, c6350vc, 2000, 1);
    }

    public C5765fj(String str, IOException iOException, C6350vc c6350vc, int i, int i2) {
        super(str, iOException, m11504b(i, 1));
        this.f23512b = c6350vc;
    }
}
