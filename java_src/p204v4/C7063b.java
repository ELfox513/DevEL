package p204v4;

import android.util.Base64;
import java.util.Random;
/* renamed from: v4.b */
/* loaded from: classes2.dex */
public final class C7063b {

    /* renamed from: a */
    public static final Random f36060a = new Random();

    /* renamed from: a */
    public static String m2577a() {
        byte[] bArr = new byte[16];
        f36060a.nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }
}
