package p168r4;

import android.net.Uri;
import java.util.Arrays;
/* renamed from: r4.ik */
/* loaded from: classes2.dex */
public final class C5877ik {

    /* renamed from: a */
    public final Uri f25138a;

    /* renamed from: b */
    public final long f25139b;

    /* renamed from: c */
    public final long f25140c;

    /* renamed from: d */
    public final long f25141d;

    public final String toString() {
        String valueOf = String.valueOf(this.f25138a);
        String arrays = Arrays.toString((byte[]) null);
        long j = this.f25139b;
        long j2 = this.f25140c;
        long j3 = this.f25141d;
        StringBuilder sb = new StringBuilder(valueOf.length() + 93 + String.valueOf(arrays).length() + 4);
        sb.append("DataSpec[");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(arrays);
        sb.append(", ");
        sb.append(j);
        sb.append(", ");
        sb.append(j2);
        sb.append(", ");
        sb.append(j3);
        sb.append(", null, 0]");
        return sb.toString();
    }

    public C5877ik(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        C6358vk.m6140a(z);
        if (j2 >= 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        C6358vk.m6140a(z2);
        C6358vk.m6140a((j3 > 0 || j3 == -1) ? true : true);
        this.f25138a = uri;
        this.f25139b = j;
        this.f25140c = j2;
        this.f25141d = j3;
    }
}
