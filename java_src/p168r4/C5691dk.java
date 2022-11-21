package p168r4;

import android.net.Uri;
import java.io.IOException;
/* renamed from: r4.dk */
/* loaded from: classes2.dex */
public final class C5691dk implements InterfaceC5766fk {

    /* renamed from: a */
    public final byte[] f22301a;

    /* renamed from: b */
    public Uri f22302b;

    /* renamed from: c */
    public int f22303c;

    /* renamed from: d */
    public int f22304d;

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: b */
    public final Uri mo4615b() {
        return this.f22302b;
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: e */
    public final void mo4613e() {
        this.f22302b = null;
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: a */
    public final int mo4616a(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.f22304d;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.f22301a, this.f22303c, bArr, i, min);
        this.f22303c += min;
        this.f22304d -= min;
        return min;
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: d */
    public final long mo4614d(C5877ik c5877ik) {
        long j;
        this.f22302b = c5877ik.f25138a;
        long j2 = c5877ik.f25140c;
        int i = (int) j2;
        this.f22303c = i;
        long j3 = c5877ik.f25141d;
        if (j3 == -1) {
            j = this.f22301a.length - j2;
        } else {
            j = j3;
        }
        int i2 = (int) j;
        this.f22304d = i2;
        if (i2 > 0 && i + i2 <= this.f22301a.length) {
            return i2;
        }
        int length = this.f22301a.length;
        StringBuilder sb = new StringBuilder(77);
        sb.append("Unsatisfiable range: [");
        sb.append(i);
        sb.append(", ");
        sb.append(j3);
        sb.append("], length: ");
        sb.append(length);
        throw new IOException(sb.toString());
    }

    public C5691dk(byte[] bArr) {
        boolean z;
        bArr.getClass();
        if (bArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        C6358vk.m6140a(z);
        this.f22301a = bArr;
    }
}
