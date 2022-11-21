package p168r4;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* renamed from: r4.ow3 */
/* loaded from: classes2.dex */
public final class ow3 extends AbstractC5898j5 {

    /* renamed from: e */
    public final ContentResolver f29255e;

    /* renamed from: f */
    public Uri f29256f;

    /* renamed from: g */
    public AssetFileDescriptor f29257g;

    /* renamed from: h */
    public FileInputStream f29258h;

    /* renamed from: i */
    public long f29259i;

    /* renamed from: j */
    public boolean f29260j;

    public ow3(Context context) {
        super(false);
        this.f29255e = context.getContentResolver();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        this.f29256f = null;
        try {
            try {
                FileInputStream fileInputStream = this.f29258h;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f29258h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f29257g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.f29257g = null;
                        if (this.f29260j) {
                            this.f29260j = false;
                            m10419s();
                        }
                    }
                } catch (IOException e) {
                    throw new nw3(e, 2000);
                }
            } catch (IOException e2) {
                throw new nw3(e2, 2000);
            }
        } catch (Throwable th) {
            this.f29258h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f29257g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f29257g = null;
                    if (this.f29260j) {
                        this.f29260j = false;
                        m10419s();
                    }
                    throw th;
                } catch (IOException e3) {
                    throw new nw3(e3, 2000);
                }
            } catch (Throwable th2) {
                this.f29257g = null;
                if (this.f29260j) {
                    this.f29260j = false;
                    m10419s();
                }
                throw th2;
            }
        }
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        return this.f29256f;
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f29259i;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new nw3(e, 2000);
            }
        }
        FileInputStream fileInputStream = this.f29258h;
        int i3 = C5979lc.f27164a;
        int read = fileInputStream.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        long j2 = this.f29259i;
        if (j2 != -1) {
            this.f29259i = j2 - read;
        }
        m10420r(read);
        return read;
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    public final long mo4059g(C6350vc c6350vc) {
        AssetFileDescriptor openAssetFileDescriptor;
        long j;
        try {
            Uri uri = c6350vc.f32683a;
            this.f29256f = uri;
            m10422n(c6350vc);
            if ("content".equals(c6350vc.f32683a.getScheme())) {
                Bundle bundle = new Bundle();
                if (C5979lc.f27164a >= 31) {
                    mw3.m9254a(bundle);
                }
                openAssetFileDescriptor = this.f29255e.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                openAssetFileDescriptor = this.f29255e.openAssetFileDescriptor(uri, "r");
            }
            this.f29257g = openAssetFileDescriptor;
            if (openAssetFileDescriptor != null) {
                long length = openAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.f29258h = fileInputStream;
                if (length != -1 && c6350vc.f32688f > length) {
                    throw new nw3(null, 2008);
                }
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(c6350vc.f32688f + startOffset) - startOffset;
                if (skip == c6350vc.f32688f) {
                    if (length == -1) {
                        FileChannel channel = fileInputStream.getChannel();
                        long size = channel.size();
                        if (size == 0) {
                            this.f29259i = -1L;
                            j = -1;
                        } else {
                            j = size - channel.position();
                            this.f29259i = j;
                            if (j < 0) {
                                throw new nw3(null, 2008);
                            }
                        }
                    } else {
                        long j2 = length - skip;
                        this.f29259i = j2;
                        if (j2 >= 0) {
                            j = j2;
                        } else {
                            throw new nw3(null, 2008);
                        }
                    }
                    long j3 = c6350vc.f32689g;
                    if (j3 != -1) {
                        if (j != -1) {
                            j3 = Math.min(j, j3);
                        }
                        this.f29259i = j3;
                    }
                    this.f29260j = true;
                    m10421o(c6350vc);
                    long j4 = c6350vc.f32689g;
                    if (j4 != -1) {
                        return j4;
                    }
                    return this.f29259i;
                }
                throw new nw3(null, 2008);
            }
            String valueOf = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(valueOf.length() + 36);
            sb.append("Could not open file descriptor for: ");
            sb.append(valueOf);
            throw new nw3(new IOException(sb.toString()), 2000);
        } catch (nw3 e) {
            throw e;
        } catch (IOException e2) {
            throw new nw3(e2, true == (e2 instanceof FileNotFoundException) ? 2005 : 2000);
        }
    }
}
