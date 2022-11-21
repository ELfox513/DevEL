package p168r4;

import android.system.ErrnoException;
import android.system.OsConstants;
/* renamed from: r4.xw3 */
/* loaded from: classes2.dex */
public final class xw3 {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static boolean m4958b(Throwable th) {
        return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
    }
}
