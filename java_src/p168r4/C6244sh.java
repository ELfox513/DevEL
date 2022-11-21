package p168r4;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* renamed from: r4.sh */
/* loaded from: classes2.dex */
public final class C6244sh implements InterfaceC6207rh {
    public /* synthetic */ C6244sh(C6318uh c6318uh) {
    }

    @Override // p168r4.InterfaceC6207rh
    /* renamed from: a */
    public final boolean mo6812a(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return "video/avc".equals(str);
    }

    @Override // p168r4.InterfaceC6207rh
    /* renamed from: b */
    public final boolean mo6811b() {
        return false;
    }

    @Override // p168r4.InterfaceC6207rh
    /* renamed from: x */
    public final MediaCodecInfo mo6809x(int i) {
        return MediaCodecList.getCodecInfoAt(i);
    }

    @Override // p168r4.InterfaceC6207rh
    public final int zza() {
        return MediaCodecList.getCodecCount();
    }
}
