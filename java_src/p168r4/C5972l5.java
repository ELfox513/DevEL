package p168r4;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
/* renamed from: r4.l5 */
/* loaded from: classes2.dex */
public final class C5972l5 {

    /* renamed from: a */
    public String f27081a;

    /* renamed from: b */
    public Uri f27082b;

    /* renamed from: c */
    public final C6084o5 f27083c = new C6084o5(null);

    /* renamed from: d */
    public final List f27084d = Collections.emptyList();

    /* renamed from: e */
    public final List f27085e = Collections.emptyList();

    /* renamed from: a */
    public final C5972l5 m9793a(String str) {
        this.f27081a = str;
        return this;
    }

    /* renamed from: b */
    public final C5972l5 m9792b(Uri uri) {
        this.f27082b = uri;
        return this;
    }

    /* renamed from: c */
    public final C6306u5 m9791c() {
        C6269t5 c6269t5;
        Uri uri = this.f27082b;
        if (uri != null) {
            c6269t5 = new C6269t5(uri, null, null, null, this.f27084d, null, this.f27085e, null, null);
        } else {
            c6269t5 = null;
        }
        C6269t5 c6269t52 = c6269t5;
        String str = this.f27081a;
        if (str == null) {
            str = "";
        }
        return new C6306u5(str, new C6046n5(0L, Long.MIN_VALUE, false, false, false, null), c6269t52, new C6195r5(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, -3.4028235E38f, -3.4028235E38f), C6454y5.f33947t, null);
    }
}
