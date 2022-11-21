package p168r4;

import android.annotation.NonNull;
import android.os.Bundle;
/* renamed from: r4.mw3 */
/* loaded from: classes2.dex */
public final class mw3 {
    /* JADX WARN: Type inference failed for: r0v0, types: [android.media.ApplicationMediaCapabilities$Builder] */
    /* renamed from: a */
    public static void m9254a(Bundle bundle) {
        bundle.putParcelable("android.provider.extra.MEDIA_CAPABILITIES", new Object() { // from class: android.media.ApplicationMediaCapabilities$Builder
            static {
                throw new NoClassDefFoundError();
            }

            @NonNull
            public native /* synthetic */ ApplicationMediaCapabilities$Builder addSupportedHdrType(@NonNull String str);

            @NonNull
            public native /* synthetic */ ApplicationMediaCapabilities$Builder addSupportedVideoMimeType(@NonNull String str);

            @NonNull
            public native /* synthetic */ ApplicationMediaCapabilities build();
        }.addSupportedVideoMimeType("video/hevc").addSupportedHdrType("android.media.feature.hdr.dolby_vision").addSupportedHdrType("android.media.feature.hdr.hdr10").addSupportedHdrType("android.media.feature.hdr.hdr10_plus").addSupportedHdrType("android.media.feature.hdr.hlg").build());
    }
}
