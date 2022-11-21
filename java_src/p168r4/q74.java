package p168r4;

import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
/* renamed from: r4.q74 */
/* loaded from: classes2.dex */
public final class q74 implements p74 {

    /* renamed from: a */
    public final FileChannel f30032a;

    /* renamed from: b */
    public final long f30033b;

    /* renamed from: c */
    public final long f30034c;

    public q74(FileChannel fileChannel, long j, long j2) {
        this.f30032a = fileChannel;
        this.f30033b = j;
        this.f30034c = j2;
    }

    @Override // p168r4.p74
    public final long zza() {
        return this.f30034c;
    }

    @Override // p168r4.p74
    /* renamed from: a */
    public final void mo7955a(MessageDigest[] messageDigestArr, long j, int i) {
        MappedByteBuffer map = this.f30032a.map(FileChannel.MapMode.READ_ONLY, this.f30033b + j, i);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }
}
