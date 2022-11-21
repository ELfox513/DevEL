package p168r4;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: r4.fw3 */
/* loaded from: classes2.dex */
public final class fw3 extends AbstractC5898j5 {

    /* renamed from: e */
    public final AssetManager f23789e;

    /* renamed from: f */
    public Uri f23790f;

    /* renamed from: g */
    public InputStream f23791g;

    /* renamed from: h */
    public long f23792h;

    /* renamed from: i */
    public boolean f23793i;

    public fw3(Context context) {
        super(false);
        this.f23789e = context.getAssets();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    public final long mo4059g(C6350vc c6350vc) {
        int i;
        try {
            Uri uri = c6350vc.f32683a;
            this.f23790f = uri;
            String path = uri.getPath();
            path.getClass();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            m10422n(c6350vc);
            InputStream open = this.f23789e.open(path, 1);
            this.f23791g = open;
            if (open.skip(c6350vc.f32688f) >= c6350vc.f32688f) {
                long j = c6350vc.f32689g;
                if (j != -1) {
                    this.f23792h = j;
                } else {
                    long available = this.f23791g.available();
                    this.f23792h = available;
                    if (available == 2147483647L) {
                        this.f23792h = -1L;
                    }
                }
                this.f23793i = true;
                m10421o(c6350vc);
                return this.f23792h;
            }
            throw new ew3(null, 2008);
        } catch (ew3 e) {
            throw e;
        } catch (IOException e2) {
            if (true != (e2 instanceof FileNotFoundException)) {
                i = 2000;
            } else {
                i = 2005;
            }
            throw new ew3(e2, i);
        }
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        this.f23790f = null;
        try {
            try {
                InputStream inputStream = this.f23791g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f23791g = null;
                if (this.f23793i) {
                    this.f23793i = false;
                    m10419s();
                }
            } catch (IOException e) {
                throw new ew3(e, 2000);
            }
        } catch (Throwable th) {
            this.f23791g = null;
            if (this.f23793i) {
                this.f23793i = false;
                m10419s();
            }
            throw th;
        }
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        return this.f23790f;
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f23792h;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new ew3(e, 2000);
            }
        }
        InputStream inputStream = this.f23791g;
        int i3 = C5979lc.f27164a;
        int read = inputStream.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j2 = this.f23792h;
        if (j2 != -1) {
            this.f23792h = j2 - read;
        }
        m10420r(read);
        return read;
    }
}
