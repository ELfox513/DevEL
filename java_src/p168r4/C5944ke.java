package p168r4;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
@TargetApi(19)
/* renamed from: r4.ke */
/* loaded from: classes2.dex */
public final class C5944ke extends C5871ie {

    /* renamed from: j */
    public final AudioTimestamp f26378j;

    /* renamed from: k */
    public long f26379k;

    /* renamed from: l */
    public long f26380l;

    /* renamed from: m */
    public long f26381m;

    public C5944ke() {
        super(null);
        this.f26378j = new AudioTimestamp();
    }

    @Override // p168r4.C5871ie
    /* renamed from: a */
    public final void mo10058a(AudioTrack audioTrack, boolean z) {
        super.mo10058a(audioTrack, z);
        this.f26379k = 0L;
        this.f26380l = 0L;
        this.f26381m = 0L;
    }

    @Override // p168r4.C5871ie
    /* renamed from: g */
    public final long mo10056g() {
        return this.f26378j.nanoTime;
    }

    @Override // p168r4.C5871ie
    /* renamed from: h */
    public final long mo10055h() {
        return this.f26381m;
    }

    @Override // p168r4.C5871ie
    /* renamed from: f */
    public final boolean mo10057f() {
        boolean timestamp;
        timestamp = this.f25072a.getTimestamp(this.f26378j);
        if (timestamp) {
            long j = this.f26378j.framePosition;
            if (this.f26380l > j) {
                this.f26379k++;
            }
            this.f26380l = j;
            this.f26381m = j + (this.f26379k << 32);
        }
        return timestamp;
    }
}
