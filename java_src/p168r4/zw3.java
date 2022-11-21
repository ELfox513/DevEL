package p168r4;

import android.net.Uri;
import java.io.IOException;
import java.io.RandomAccessFile;
/* renamed from: r4.zw3 */
/* loaded from: classes2.dex */
public final class zw3 extends AbstractC5898j5 {

    /* renamed from: e */
    public RandomAccessFile f34759e;

    /* renamed from: f */
    public Uri f34760f;

    /* renamed from: g */
    public long f34761g;

    /* renamed from: h */
    public boolean f34762h;

    public zw3() {
        super(false);
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        this.f34760f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f34759e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f34759e = null;
                if (this.f34762h) {
                    this.f34762h = false;
                    m10419s();
                }
            } catch (IOException e) {
                throw new yw3(e, 2000);
            }
        } catch (Throwable th) {
            this.f34759e = null;
            if (this.f34762h) {
                this.f34762h = false;
                m10419s();
            }
            throw th;
        }
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        return this.f34760f;
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f34761g;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f34759e;
            int i3 = C5979lc.f27164a;
            int read = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (read > 0) {
                this.f34761g -= read;
                m10420r(read);
            }
            return read;
        } catch (IOException e) {
            throw new yw3(e, 2000);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0087, code lost:
        if (r1 != false) goto L33;
     */
    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo4059g(p168r4.C6350vc r8) {
        /*
            r7 = this;
            android.net.Uri r0 = r8.f32683a
            r7.f34760f = r0
            r7.m10422n(r8)
            r1 = 1
            r2 = 2000(0x7d0, float:2.803E-42)
            r3 = 2006(0x7d6, float:2.811E-42)
            java.io.RandomAccessFile r4 = new java.io.RandomAccessFile     // Catch: java.lang.RuntimeException -> L52 java.lang.SecurityException -> L59 java.io.FileNotFoundException -> L60
            java.lang.String r5 = r0.getPath()     // Catch: java.lang.RuntimeException -> L52 java.lang.SecurityException -> L59 java.io.FileNotFoundException -> L60
            r5.getClass()
            java.lang.String r6 = "r"
            r4.<init>(r5, r6)     // Catch: java.lang.RuntimeException -> L52 java.lang.SecurityException -> L59 java.io.FileNotFoundException -> L60
            r7.f34759e = r4
            long r5 = r8.f32688f     // Catch: java.io.IOException -> L4b
            r4.seek(r5)     // Catch: java.io.IOException -> L4b
            long r3 = r8.f32689g     // Catch: java.io.IOException -> L4b
            r5 = -1
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 != 0) goto L32
            java.io.RandomAccessFile r0 = r7.f34759e     // Catch: java.io.IOException -> L4b
            long r3 = r0.length()     // Catch: java.io.IOException -> L4b
            long r5 = r8.f32688f     // Catch: java.io.IOException -> L4b
            long r3 = r3 - r5
        L32:
            r7.f34761g = r3     // Catch: java.io.IOException -> L4b
            r5 = 0
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 < 0) goto L42
            r7.f34762h = r1
            r7.m10421o(r8)
            long r0 = r7.f34761g
            return r0
        L42:
            r4.yw3 r8 = new r4.yw3
            r0 = 2008(0x7d8, float:2.814E-42)
            r1 = 0
            r8.<init>(r1, r1, r0)
            throw r8
        L4b:
            r8 = move-exception
            r4.yw3 r0 = new r4.yw3
            r0.<init>(r8, r2)
            throw r0
        L52:
            r8 = move-exception
            r4.yw3 r0 = new r4.yw3
            r0.<init>(r8, r2)
            throw r0
        L59:
            r8 = move-exception
            r4.yw3 r0 = new r4.yw3
            r0.<init>(r8, r3)
            throw r0
        L60:
            r8 = move-exception
            java.lang.String r2 = r0.getQuery()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L90
            java.lang.String r2 = r0.getFragment()
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 == 0) goto L90
            r4.yw3 r0 = new r4.yw3
            int r1 = p168r4.C5979lc.f27164a
            r2 = 21
            r4 = 2005(0x7d5, float:2.81E-42)
            if (r1 < r2) goto L8a
            java.lang.Throwable r1 = r8.getCause()
            boolean r1 = p168r4.xw3.m4959a(r1)
            if (r1 == 0) goto L8a
            goto L8c
        L8a:
            r3 = 2005(0x7d5, float:2.81E-42)
        L8c:
            r0.<init>(r8, r3)
            throw r0
        L90:
            r4.yw3 r2 = new r4.yw3
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = 0
            java.lang.String r5 = r0.getPath()
            r3[r4] = r5
            java.lang.String r4 = r0.getQuery()
            r3[r1] = r4
            r1 = 2
            java.lang.String r0 = r0.getFragment()
            r3[r1] = r0
            java.lang.String r0 = "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"
            java.lang.String r0 = java.lang.String.format(r0, r3)
            r1 = 1004(0x3ec, float:1.407E-42)
            r2.<init>(r0, r8, r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.zw3.mo4059g(r4.vc):long");
    }
}
