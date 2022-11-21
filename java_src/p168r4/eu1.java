package p168r4;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
/* renamed from: r4.eu1 */
/* loaded from: classes2.dex */
public final class eu1 {

    /* renamed from: a */
    public final AudioTrack f23144a;

    /* renamed from: b */
    public final AudioTimestamp f23145b = new AudioTimestamp();

    /* renamed from: c */
    public long f23146c;

    /* renamed from: d */
    public long f23147d;

    /* renamed from: e */
    public long f23148e;

    public eu1(AudioTrack audioTrack) {
        this.f23144a = audioTrack;
    }

    /* renamed from: b */
    public final long m11674b() {
        return this.f23145b.nanoTime / 1000;
    }

    /* renamed from: c */
    public final long m11673c() {
        return this.f23148e;
    }

    /* renamed from: a */
    public final boolean m11675a() {
        boolean timestamp;
        timestamp = this.f23144a.getTimestamp(this.f23145b);
        if (timestamp) {
            long j = this.f23145b.framePosition;
            if (this.f23147d > j) {
                this.f23146c++;
            }
            this.f23147d = j;
            this.f23148e = j + (this.f23146c << 32);
        }
        return timestamp;
    }
}
