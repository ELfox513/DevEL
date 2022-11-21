package p168r4;

import android.media.AudioTrack;
import android.os.SystemClock;
/* renamed from: r4.ie */
/* loaded from: classes2.dex */
public class C5871ie {

    /* renamed from: a */
    public AudioTrack f25072a;

    /* renamed from: b */
    public boolean f25073b;

    /* renamed from: c */
    public int f25074c;

    /* renamed from: d */
    public long f25075d;

    /* renamed from: e */
    public long f25076e;

    /* renamed from: f */
    public long f25077f;

    /* renamed from: g */
    public long f25078g;

    /* renamed from: h */
    public long f25079h;

    /* renamed from: i */
    public long f25080i;

    public /* synthetic */ C5871ie(C6093oe c6093oe) {
    }

    /* renamed from: a */
    public void mo10058a(AudioTrack audioTrack, boolean z) {
        this.f25072a = audioTrack;
        this.f25073b = z;
        this.f25078g = -9223372036854775807L;
        this.f25075d = 0L;
        this.f25076e = 0L;
        this.f25077f = 0L;
        if (audioTrack != null) {
            this.f25074c = audioTrack.getSampleRate();
        }
    }

    /* renamed from: c */
    public final void m10667c() {
        if (this.f25078g != -9223372036854775807L) {
            return;
        }
        this.f25072a.pause();
    }

    /* renamed from: e */
    public final long m10665e() {
        return (m10666d() * 1000000) / this.f25074c;
    }

    /* renamed from: f */
    public boolean mo10057f() {
        return false;
    }

    /* renamed from: g */
    public long mo10056g() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: h */
    public long mo10055h() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: d */
    public final long m10666d() {
        if (this.f25078g != -9223372036854775807L) {
            return Math.min(this.f25080i, this.f25079h + ((((SystemClock.elapsedRealtime() * 1000) - this.f25078g) * this.f25074c) / 1000000));
        }
        int playState = this.f25072a.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = this.f25072a.getPlaybackHeadPosition() & 4294967295L;
        if (this.f25073b) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f25077f = this.f25075d;
            }
            playbackHeadPosition += this.f25077f;
        }
        if (this.f25075d > playbackHeadPosition) {
            this.f25076e++;
        }
        this.f25075d = playbackHeadPosition;
        return playbackHeadPosition + (this.f25076e << 32);
    }

    /* renamed from: b */
    public final void m10668b(long j) {
        this.f25079h = m10666d();
        this.f25078g = SystemClock.elapsedRealtime() * 1000;
        this.f25080i = j;
        this.f25072a.stop();
    }
}
