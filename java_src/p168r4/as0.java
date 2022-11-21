package p168r4;

import android.webkit.ConsoleMessage;
/* renamed from: r4.as0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class as0 {

    /* renamed from: a */
    public static final /* synthetic */ int[] f20589a;

    static {
        int[] iArr = new int[ConsoleMessage.MessageLevel.values().length];
        f20589a = iArr;
        try {
            iArr[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f20589a[ConsoleMessage.MessageLevel.WARNING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f20589a[ConsoleMessage.MessageLevel.LOG.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f20589a[ConsoleMessage.MessageLevel.TIP.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f20589a[ConsoleMessage.MessageLevel.DEBUG.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
    }
}
