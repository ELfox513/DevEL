package p168r4;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.p010os.PersistableBundle;
import android.view.Surface;
import android.view.TextureView;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import p016b3.C0497k2;
import p016b3.C0543w1;
import p235z2.C7601t;
@TargetApi(14)
/* renamed from: r4.tn0 */
/* loaded from: classes2.dex */
public final class tn0 extends vn0 implements TextureView.SurfaceTextureListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener {

    /* renamed from: F */
    public static final Map<Integer, String> f31902F;

    /* renamed from: A */
    public final boolean f31903A;

    /* renamed from: B */
    public int f31904B;

    /* renamed from: C */
    public un0 f31905C;

    /* renamed from: D */
    public boolean f31906D;

    /* renamed from: E */
    public Integer f31907E;

    /* renamed from: d */
    public final po0 f31908d;

    /* renamed from: k */
    public final qo0 f31909k;

    /* renamed from: p */
    public final boolean f31910p;

    /* renamed from: q */
    public int f31911q;

    /* renamed from: r */
    public int f31912r;

    /* renamed from: s */
    public MediaPlayer f31913s;

    /* renamed from: t */
    public Uri f31914t;

    /* renamed from: u */
    public int f31915u;

    /* renamed from: v */
    public int f31916v;

    /* renamed from: w */
    public int f31917w;

    /* renamed from: x */
    public int f31918x;

    /* renamed from: y */
    public int f31919y;

    /* renamed from: z */
    public mo0 f31920z;

    /* renamed from: F */
    public final boolean m6784F() {
        int i;
        return (this.f31913s == null || (i = this.f31911q) == -1 || i == 0 || i == 1) ? false : true;
    }

    /* renamed from: H */
    public final void m6782H(int i) {
        if (i == 3) {
            this.f31909k.m7761e();
            this.f32765b.m6771d();
        } else if (this.f31911q == 3) {
            this.f31909k.m7760f();
            this.f32765b.m6770e();
        }
        this.f31911q = i;
    }

    /* renamed from: M */
    public final /* synthetic */ void m6777M(int i) {
        un0 un0Var = this.f31905C;
        if (un0Var != null) {
            un0Var.onWindowVisibilityChanged(i);
        }
    }

    @Override // p168r4.vn0
    /* renamed from: g */
    public final String mo6077g() {
        String str = true != this.f31903A ? "" : " spherical";
        return str.length() != 0 ? "MediaPlayer".concat(str) : new String("MediaPlayer");
    }

    @Override // p168r4.vn0
    /* renamed from: h */
    public final void mo6076h(un0 un0Var) {
        this.f31905C = un0Var;
    }

    @Override // p168r4.vn0
    /* renamed from: m */
    public final int mo6071m() {
        if (m6784F()) {
            return this.f31913s.getDuration();
        }
        return -1;
    }

    @Override // p168r4.vn0, p168r4.so0
    /* renamed from: n */
    public final void mo6070n() {
        m6783G(this.f32765b.m6772c());
    }

    @Override // p168r4.vn0
    /* renamed from: o */
    public final int mo6069o() {
        if (m6784F()) {
            return this.f31913s.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.f31917w = i;
    }

    @Override // p168r4.vn0
    /* renamed from: q */
    public final void mo6067q(float f, float f2) {
        mo0 mo0Var = this.f31920z;
        if (mo0Var != null) {
            mo0Var.m9315e(f, f2);
        }
    }

    @Override // p168r4.vn0
    /* renamed from: r */
    public final int mo6066r() {
        MediaPlayer mediaPlayer = this.f31913s;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // p168r4.vn0
    /* renamed from: s */
    public final int mo6065s() {
        MediaPlayer mediaPlayer = this.f31913s;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // p168r4.vn0
    /* renamed from: t */
    public final long mo6064t() {
        if (this.f31907E != null) {
            return (mo6062v() * this.f31917w) / 100;
        }
        return -1L;
    }

    @Override // android.view.View
    public final String toString() {
        String name = tn0.class.getName();
        String hexString = Integer.toHexString(hashCode());
        StringBuilder sb = new StringBuilder(name.length() + 1 + String.valueOf(hexString).length());
        sb.append(name);
        sb.append("@");
        sb.append(hexString);
        return sb.toString();
    }

    @Override // p168r4.vn0
    /* renamed from: u */
    public final long mo6063u() {
        return 0L;
    }

    @Override // p168r4.vn0
    /* renamed from: v */
    public final long mo6062v() {
        if (this.f31907E != null) {
            return mo6071m() * this.f31907E.intValue();
        }
        return -1L;
    }

    @Override // p168r4.vn0
    /* renamed from: w */
    public final int mo6061w() {
        PersistableBundle metrics;
        if (Build.VERSION.SDK_INT < 26 || !m6784F()) {
            return -1;
        }
        metrics = this.f31913s.getMetrics();
        return metrics.getInt("android.media.mediaplayer.dropped");
    }

    static {
        HashMap hashMap = new HashMap();
        f31902F = hashMap;
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            hashMap.put(-1004, "MEDIA_ERROR_IO");
            hashMap.put(-1007, "MEDIA_ERROR_MALFORMED");
            hashMap.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
            hashMap.put(-110, "MEDIA_ERROR_TIMED_OUT");
            hashMap.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        hashMap.put(100, "MEDIA_ERROR_SERVER_DIED");
        hashMap.put(1, "MEDIA_ERROR_UNKNOWN");
        hashMap.put(1, "MEDIA_INFO_UNKNOWN");
        hashMap.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        hashMap.put(701, "MEDIA_INFO_BUFFERING_START");
        hashMap.put(702, "MEDIA_INFO_BUFFERING_END");
        hashMap.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        hashMap.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        hashMap.put(802, "MEDIA_INFO_METADATA_UPDATE");
        if (i >= 19) {
            hashMap.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            hashMap.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
        r4 = r4.getFormat();
     */
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m6778L(p168r4.tn0 r12, android.media.MediaPlayer r13) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.tn0.m6778L(r4.tn0, android.media.MediaPlayer):void");
    }

    /* renamed from: D */
    public final void m6786D() {
        if (this.f31910p && m6784F() && this.f31913s.getCurrentPosition() > 0 && this.f31912r != 3) {
            C0543w1.m26251k("AdMediaPlayerView nudging MediaPlayer");
            m6783G(0.0f);
            this.f31913s.start();
            int currentPosition = this.f31913s.getCurrentPosition();
            long mo24763a = C7601t.m932k().mo24763a();
            while (m6784F() && this.f31913s.getCurrentPosition() == currentPosition && C7601t.m932k().mo24763a() - mo24763a <= 250) {
            }
            this.f31913s.pause();
            mo6070n();
        }
    }

    /* renamed from: E */
    public final void m6785E(boolean z) {
        C0543w1.m26251k("AdMediaPlayerView release");
        mo0 mo0Var = this.f31920z;
        if (mo0Var != null) {
            mo0Var.m9317c();
            this.f31920z = null;
        }
        MediaPlayer mediaPlayer = this.f31913s;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.f31913s.release();
            this.f31913s = null;
            m6782H(0);
            if (z) {
                this.f31912r = 0;
            }
        }
    }

    /* renamed from: G */
    public final void m6783G(float f) {
        MediaPlayer mediaPlayer = this.f31913s;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(f, f);
                return;
            } catch (IllegalStateException unused) {
                return;
            }
        }
        cm0.m12437f("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
    }

    @Override // p168r4.vn0
    /* renamed from: j */
    public final void mo6074j() {
        C0543w1.m26251k("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.f31913s;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.f31913s.release();
            this.f31913s = null;
            m6782H(0);
            this.f31912r = 0;
        }
        this.f31909k.m7763c();
    }

    @Override // p168r4.vn0
    /* renamed from: k */
    public final void mo6073k() {
        C0543w1.m26251k("AdMediaPlayerView play");
        if (m6784F()) {
            this.f31913s.start();
            m6782H(3);
            this.f32764a.m10589a();
            C0497k2.f1630i.post(new pn0(this));
        }
        this.f31912r = 3;
    }

    @Override // p168r4.vn0
    /* renamed from: l */
    public final void mo6072l() {
        C0543w1.m26251k("AdMediaPlayerView pause");
        if (m6784F() && this.f31913s.isPlaying()) {
            this.f31913s.pause();
            m6782H(4);
            C0497k2.f1630i.post(new qn0(this));
        }
        this.f31912r = 4;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        C0543w1.m26251k("AdMediaPlayerView completion");
        m6782H(5);
        this.f31912r = 5;
        C0497k2.f1630i.post(new jn0(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = f31902F;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        cm0.m12437f(sb.toString());
        m6782H(-1);
        this.f31912r = -1;
        C0497k2.f1630i.post(new ln0(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = f31902F;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length());
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        C0543w1.m26251k(sb.toString());
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0061, code lost:
        if (r1 > r6) goto L17;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.f31915u
            int r0 = android.view.View.getDefaultSize(r0, r6)
            int r1 = r5.f31916v
            int r1 = android.view.View.getDefaultSize(r1, r7)
            int r2 = r5.f31915u
            if (r2 <= 0) goto L7e
            int r2 = r5.f31916v
            if (r2 <= 0) goto L7e
            r4.mo0 r2 = r5.f31920z
            if (r2 != 0) goto L7e
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L43
            if (r1 != r2) goto L41
            int r0 = r5.f31915u
            int r1 = r0 * r7
            int r2 = r5.f31916v
            int r3 = r6 * r2
            if (r1 >= r3) goto L3c
            int r0 = r1 / r2
        L3a:
            r1 = r7
            goto L7e
        L3c:
            if (r1 <= r3) goto L63
            int r1 = r3 / r0
            goto L54
        L41:
            r0 = 1073741824(0x40000000, float:2.0)
        L43:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L56
            int r0 = r5.f31916v
            int r0 = r0 * r6
            int r2 = r5.f31915u
            int r0 = r0 / r2
            if (r1 != r3) goto L53
            if (r0 <= r7) goto L53
            goto L63
        L53:
            r1 = r0
        L54:
            r0 = r6
            goto L7e
        L56:
            if (r1 != r2) goto L67
            int r1 = r5.f31915u
            int r1 = r1 * r7
            int r2 = r5.f31916v
            int r1 = r1 / r2
            if (r0 != r3) goto L65
            if (r1 <= r6) goto L65
        L63:
            r0 = r6
            goto L3a
        L65:
            r0 = r1
            goto L3a
        L67:
            int r2 = r5.f31915u
            int r4 = r5.f31916v
            if (r1 != r3) goto L73
            if (r4 <= r7) goto L73
            int r1 = r7 * r2
            int r1 = r1 / r4
            goto L75
        L73:
            r1 = r2
            r7 = r4
        L75:
            if (r0 != r3) goto L65
            if (r1 <= r6) goto L65
            int r4 = r4 * r6
            int r1 = r4 / r2
            goto L54
        L7e:
            r5.setMeasuredDimension(r0, r1)
            r4.mo0 r6 = r5.f31920z
            if (r6 == 0) goto L88
            r6.m9318b(r0, r1)
        L88:
            int r6 = android.os.Build.VERSION.SDK_INT
            r7 = 16
            if (r6 != r7) goto La1
            int r6 = r5.f31918x
            if (r6 <= 0) goto L94
            if (r6 != r0) goto L9a
        L94:
            int r6 = r5.f31919y
            if (r6 <= 0) goto L9d
            if (r6 == r1) goto L9d
        L9a:
            r5.m6786D()
        L9d:
            r5.f31918x = r0
            r5.f31919y = r1
        La1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.tn0.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        C0543w1.m26251k("AdMediaPlayerView prepared");
        m6782H(2);
        this.f31909k.m7764b();
        C0497k2.f1630i.post(new in0(this, mediaPlayer));
        this.f31915u = mediaPlayer.getVideoWidth();
        this.f31916v = mediaPlayer.getVideoHeight();
        int i = this.f31904B;
        if (i != 0) {
            mo6068p(i);
        }
        m6786D();
        int i2 = this.f31915u;
        int i3 = this.f31916v;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        cm0.m12438e(sb.toString());
        if (this.f31912r == 3) {
            mo6073k();
        }
        mo6070n();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        C0543w1.m26251k("AdMediaPlayerView surface created");
        m6776y();
        C0497k2.f1630i.post(new mn0(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        C0543w1.m26251k("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.f31913s;
        if (mediaPlayer != null && this.f31904B == 0) {
            this.f31904B = mediaPlayer.getCurrentPosition();
        }
        mo0 mo0Var = this.f31920z;
        if (mo0Var != null) {
            mo0Var.m9317c();
        }
        C0497k2.f1630i.post(new on0(this));
        m6785E(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        C0543w1.m26251k("AdMediaPlayerView surface changed");
        int i3 = this.f31912r;
        boolean z = false;
        if (this.f31915u == i && this.f31916v == i2) {
            z = true;
        }
        if (this.f31913s != null && i3 == 3 && z) {
            int i4 = this.f31904B;
            if (i4 != 0) {
                mo6068p(i4);
            }
            mo6073k();
        }
        mo0 mo0Var = this.f31920z;
        if (mo0Var != null) {
            mo0Var.m9318b(i, i2);
        }
        C0497k2.f1630i.post(new nn0(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f31909k.m7762d(this);
        this.f32764a.m10588b(surfaceTexture, this.f31905C);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        C0543w1.m26251k(sb.toString());
        this.f31915u = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.f31916v = videoHeight;
        if (this.f31915u != 0 && videoHeight != 0) {
            requestLayout();
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(final int i) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i);
        C0543w1.m26251k(sb.toString());
        C0497k2.f1630i.post(new Runnable(this, i) { // from class: r4.hn0

            /* renamed from: a */
            public final tn0 f24755a;

            /* renamed from: b */
            public final int f24756b;

            {
                this.f24755a = this;
                this.f24756b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f24755a.m6777M(this.f24756b);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // p168r4.vn0
    /* renamed from: p */
    public final void mo6068p(int i) {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        C0543w1.m26251k(sb.toString());
        if (m6784F()) {
            this.f31913s.seekTo(i);
            this.f31904B = 0;
            return;
        }
        this.f31904B = i;
    }

    /* renamed from: y */
    public final void m6776y() {
        C0543w1.m26251k("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.f31914t != null && surfaceTexture != null) {
            m6785E(false);
            try {
                C7601t.m923t();
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.f31913s = mediaPlayer;
                mediaPlayer.setOnBufferingUpdateListener(this);
                this.f31913s.setOnCompletionListener(this);
                this.f31913s.setOnErrorListener(this);
                this.f31913s.setOnInfoListener(this);
                this.f31913s.setOnPreparedListener(this);
                this.f31913s.setOnVideoSizeChangedListener(this);
                this.f31917w = 0;
                if (this.f31903A) {
                    mo0 mo0Var = new mo0(getContext());
                    this.f31920z = mo0Var;
                    mo0Var.m9319a(surfaceTexture, getWidth(), getHeight());
                    this.f31920z.start();
                    SurfaceTexture m9316d = this.f31920z.m9316d();
                    if (m9316d != null) {
                        surfaceTexture = m9316d;
                    } else {
                        this.f31920z.m9317c();
                        this.f31920z = null;
                    }
                }
                this.f31913s.setDataSource(getContext(), this.f31914t);
                C7601t.m922u();
                this.f31913s.setSurface(new Surface(surfaceTexture));
                this.f31913s.setAudioStreamType(3);
                this.f31913s.setScreenOnWhilePlaying(true);
                this.f31913s.prepareAsync();
                m6782H(1);
            } catch (IOException | IllegalArgumentException | IllegalStateException e) {
                cm0.m12436g("Failed to initialize MediaPlayer at ".concat(String.valueOf(this.f31914t)), e);
                onError(this.f31913s, 1, 0);
            }
        }
    }

    public tn0(Context context, po0 po0Var, boolean z, boolean z2, oo0 oo0Var, qo0 qo0Var) {
        super(context);
        this.f31911q = 0;
        this.f31912r = 0;
        this.f31906D = false;
        this.f31907E = null;
        setSurfaceTextureListener(this);
        this.f31908d = po0Var;
        this.f31909k = qo0Var;
        this.f31903A = z;
        this.f31910p = z2;
        qo0Var.m7765a(this);
    }

    @Override // p168r4.vn0
    /* renamed from: i */
    public final void mo6075i(String str) {
        Uri parse = Uri.parse(str);
        C6288to m6775X0 = C6288to.m6775X0(parse);
        if (m6775X0 != null && m6775X0.f31922a == null) {
            return;
        }
        if (m6775X0 != null) {
            parse = Uri.parse(m6775X0.f31922a);
        }
        this.f31914t = parse;
        this.f31904B = 0;
        m6776y();
        requestLayout();
        invalidate();
    }
}
