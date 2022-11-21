package p168r4;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: r4.mx3 */
/* loaded from: classes2.dex */
public final class mx3 extends AbstractC5898j5 {

    /* renamed from: e */
    public final Resources f28003e;

    /* renamed from: f */
    public final String f28004f;

    /* renamed from: g */
    public Uri f28005g;

    /* renamed from: h */
    public AssetFileDescriptor f28006h;

    /* renamed from: i */
    public InputStream f28007i;

    /* renamed from: j */
    public long f28008j;

    /* renamed from: k */
    public boolean f28009k;

    public mx3(Context context) {
        super(false);
        this.f28003e = context.getResources();
        this.f28004f = context.getPackageName();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        this.f28005g = null;
        try {
            try {
                InputStream inputStream = this.f28007i;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f28007i = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f28006h;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.f28006h = null;
                        if (this.f28009k) {
                            this.f28009k = false;
                            m10419s();
                        }
                    }
                } catch (IOException e) {
                    throw new lx3(null, e, 2000);
                }
            } catch (IOException e2) {
                throw new lx3(null, e2, 2000);
            }
        } catch (Throwable th) {
            this.f28007i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f28006h;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f28006h = null;
                    if (this.f28009k) {
                        this.f28009k = false;
                        m10419s();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new lx3(null, e3, 2000);
                }
            } catch (Throwable th2) {
                this.f28006h = null;
                if (this.f28009k) {
                    this.f28009k = false;
                    m10419s();
                }
                throw th2;
            }
        }
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        return this.f28005g;
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f28008j;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new lx3(null, e, 2000);
            }
        }
        InputStream inputStream = this.f28007i;
        int i3 = C5979lc.f27164a;
        int read = inputStream.read(bArr, i, i2);
        if (read == -1) {
            if (this.f28008j == -1) {
                return -1;
            }
            throw new lx3("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j2 = this.f28008j;
        if (j2 != -1) {
            this.f28008j = j2 - read;
        }
        m10420r(read);
        return read;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
        if (r1.matches("\\d+") != false) goto L83;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x015c  */
    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo4059g(p168r4.C6350vc r15) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.mx3.mo4059g(r4.vc):long");
    }
}
