package p168r4;

import com.esotericsoftware.kryo.util.DefaultClassResolver;
import com.prineside.tdi2.tiles.CoreTile;
/* renamed from: r4.g64 */
/* loaded from: classes2.dex */
public final class g64 extends rz3 {
    public g64(C5758fc c5758fc, long j, long j2) {
        super(new mz3(), new f64(c5758fc, null), j, 0L, j + 1, 0L, j2, 188L, CoreTile.FIXED_LEVEL_XP_REQUIREMENT);
    }

    /* renamed from: h */
    public static /* synthetic */ int m11274h(byte[] bArr, int i) {
        return (bArr[i + 3] & DefaultClassResolver.NAME) | ((bArr[i] & DefaultClassResolver.NAME) << 24) | ((bArr[i + 1] & DefaultClassResolver.NAME) << 16) | ((bArr[i + 2] & DefaultClassResolver.NAME) << 8);
    }
}
