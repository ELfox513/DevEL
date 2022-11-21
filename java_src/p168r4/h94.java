package p168r4;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* renamed from: r4.h94 */
/* loaded from: classes2.dex */
public final class h94 {

    /* renamed from: d */
    public static final Comparator<byte[]> f24520d = new g94();

    /* renamed from: a */
    public final List<byte[]> f24521a = new ArrayList();

    /* renamed from: b */
    public final List<byte[]> f24522b = new ArrayList(64);

    /* renamed from: c */
    public int f24523c = 0;

    /* renamed from: a */
    public final synchronized byte[] m10957a(int i) {
        for (int i2 = 0; i2 < this.f24522b.size(); i2++) {
            byte[] bArr = this.f24522b.get(i2);
            int length = bArr.length;
            if (length >= i) {
                this.f24523c -= length;
                this.f24522b.remove(i2);
                this.f24521a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i];
    }

    /* renamed from: b */
    public final synchronized void m10956b(byte[] bArr) {
        if (bArr != null) {
            int length = bArr.length;
            if (length <= 4096) {
                this.f24521a.add(bArr);
                int binarySearch = Collections.binarySearch(this.f24522b, bArr, f24520d);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.f24522b.add(binarySearch, bArr);
                this.f24523c += length;
                m10955c();
            }
        }
    }

    /* renamed from: c */
    public final synchronized void m10955c() {
        while (this.f24523c > 4096) {
            byte[] remove = this.f24521a.remove(0);
            this.f24522b.remove(remove);
            this.f24523c -= remove.length;
        }
    }

    public h94(int i) {
    }
}
