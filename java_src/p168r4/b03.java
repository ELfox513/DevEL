package p168r4;

import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.view.Surface;
/* renamed from: r4.b03 */
/* loaded from: classes2.dex */
public final class b03 {

    /* renamed from: a */
    public final e33 f20797a;

    /* renamed from: b */
    public final MediaFormat f20798b;

    /* renamed from: c */
    public final C5713e5 f20799c;

    /* renamed from: d */
    public final Surface f20800d;

    /* renamed from: e */
    public final MediaCrypto f20801e = null;

    public b03(e33 e33Var, MediaFormat mediaFormat, C5713e5 c5713e5, Surface surface, MediaCrypto mediaCrypto, int i, boolean z) {
        this.f20797a = e33Var;
        this.f20798b = mediaFormat;
        this.f20799c = c5713e5;
        this.f20800d = surface;
    }

    /* renamed from: a */
    public static b03 m12891a(e33 e33Var, MediaFormat mediaFormat, C5713e5 c5713e5, MediaCrypto mediaCrypto) {
        return new b03(e33Var, mediaFormat, c5713e5, null, null, 0, false);
    }

    /* renamed from: b */
    public static b03 m12890b(e33 e33Var, MediaFormat mediaFormat, C5713e5 c5713e5, Surface surface, MediaCrypto mediaCrypto) {
        return new b03(e33Var, mediaFormat, c5713e5, surface, null, 0, false);
    }
}
