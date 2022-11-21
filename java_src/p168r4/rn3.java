package p168r4;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;
/* renamed from: r4.rn3 */
/* loaded from: classes2.dex */
public final class rn3 {

    /* renamed from: a */
    public final MediaCodec f30635a;

    /* renamed from: b */
    public ByteBuffer[] f30636b;

    /* renamed from: c */
    public ByteBuffer[] f30637c;

    /* renamed from: a */
    public final int m7432a() {
        return this.f30635a.dequeueInputBuffer(0L);
    }

    /* renamed from: c */
    public final MediaFormat m7430c() {
        return this.f30635a.getOutputFormat();
    }

    /* renamed from: f */
    public final void m7427f(int i, int i2, int i3, long j, int i4) {
        this.f30635a.queueInputBuffer(i, 0, i3, j, i4);
    }

    /* renamed from: g */
    public final void m7426g(int i, int i2, C5709e1 c5709e1, long j, int i3) {
        this.f30635a.queueSecureInputBuffer(i, 0, c5709e1.m11883b(), j, 0);
    }

    /* renamed from: h */
    public final void m7425h(int i, boolean z) {
        this.f30635a.releaseOutputBuffer(i, z);
    }

    /* renamed from: i */
    public final void m7424i(int i, long j) {
        this.f30635a.releaseOutputBuffer(i, j);
    }

    /* renamed from: j */
    public final void m7423j() {
        this.f30635a.flush();
    }

    /* renamed from: k */
    public final void m7422k() {
        this.f30636b = null;
        this.f30637c = null;
        this.f30635a.release();
    }

    /* renamed from: l */
    public final void m7421l(Surface surface) {
        this.f30635a.setOutputSurface(surface);
    }

    /* renamed from: m */
    public final void m7420m(Bundle bundle) {
        this.f30635a.setParameters(bundle);
    }

    /* renamed from: n */
    public final void m7419n(int i) {
        this.f30635a.setVideoScalingMode(i);
    }

    /* renamed from: b */
    public final int m7431b(MediaCodec.BufferInfo bufferInfo) {
        int dequeueOutputBuffer;
        do {
            dequeueOutputBuffer = this.f30635a.dequeueOutputBuffer(bufferInfo, 0L);
            if (dequeueOutputBuffer == -3) {
                if (C5979lc.f27164a < 21) {
                    this.f30637c = this.f30635a.getOutputBuffers();
                }
                dequeueOutputBuffer = -3;
                continue;
            }
        } while (dequeueOutputBuffer == -3);
        return dequeueOutputBuffer;
    }

    /* renamed from: d */
    public final ByteBuffer m7429d(int i) {
        ByteBuffer inputBuffer;
        if (C5979lc.f27164a >= 21) {
            inputBuffer = this.f30635a.getInputBuffer(i);
            return inputBuffer;
        }
        return ((ByteBuffer[]) C5979lc.m9728I(this.f30636b))[i];
    }

    /* renamed from: e */
    public final ByteBuffer m7428e(int i) {
        ByteBuffer outputBuffer;
        if (C5979lc.f27164a >= 21) {
            outputBuffer = this.f30635a.getOutputBuffer(i);
            return outputBuffer;
        }
        return ((ByteBuffer[]) C5979lc.m9728I(this.f30637c))[i];
    }

    public /* synthetic */ rn3(MediaCodec mediaCodec, Surface surface, om3 om3Var) {
        this.f30635a = mediaCodec;
        if (C5979lc.f27164a < 21) {
            this.f30636b = mediaCodec.getInputBuffers();
            this.f30637c = mediaCodec.getOutputBuffers();
        }
    }
}
