package p168r4;

import android.net.Uri;
import android.util.Log;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
/* renamed from: r4.kk */
/* loaded from: classes2.dex */
public final class C5950kk implements InterfaceC6099ok {

    /* renamed from: n */
    public static final Pattern f26451n = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: o */
    public static final AtomicReference<byte[]> f26452o = new AtomicReference<>();

    /* renamed from: a */
    public final int f26453a;

    /* renamed from: b */
    public final int f26454b;

    /* renamed from: c */
    public final String f26455c;

    /* renamed from: d */
    public final C6062nk f26456d;

    /* renamed from: e */
    public final InterfaceC6321uk<? super C5950kk> f26457e;

    /* renamed from: f */
    public C5877ik f26458f;

    /* renamed from: g */
    public HttpURLConnection f26459g;

    /* renamed from: h */
    public InputStream f26460h;

    /* renamed from: i */
    public boolean f26461i;

    /* renamed from: j */
    public long f26462j;

    /* renamed from: k */
    public long f26463k;

    /* renamed from: l */
    public long f26464l;

    /* renamed from: m */
    public long f26465m;

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: b */
    public final Uri mo4615b() {
        HttpURLConnection httpURLConnection = this.f26459g;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // p168r4.InterfaceC6099ok
    /* renamed from: c */
    public final Map<String, List<String>> mo8788c() {
        HttpURLConnection httpURLConnection = this.f26459g;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: e */
    public final void mo4613e() {
        try {
            if (this.f26460h != null) {
                HttpURLConnection httpURLConnection = this.f26459g;
                long j = this.f26463k;
                if (j != -1) {
                    j -= this.f26465m;
                }
                int i = C5988ll.f27242a;
                if (i == 19 || i == 20) {
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        if (j == -1) {
                            if (inputStream.read() != -1) {
                            }
                        } else if (j <= 2048) {
                        }
                        String name = inputStream.getClass().getName();
                        if (name.equals("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream") || name.equals("com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream")) {
                            Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                            declaredMethod.setAccessible(true);
                            declaredMethod.invoke(inputStream, new Object[0]);
                        }
                    } catch (Exception unused) {
                    }
                }
                try {
                    this.f26460h.close();
                } catch (IOException e) {
                    throw new C5987lk(e, this.f26458f, 3);
                }
            }
        } finally {
            this.f26460h = null;
            m10016f();
            if (this.f26461i) {
                this.f26461i = false;
            }
        }
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: a */
    public final int mo4616a(byte[] bArr, int i, int i2) {
        try {
            if (this.f26464l != this.f26462j) {
                byte[] andSet = f26452o.getAndSet(null);
                if (andSet == null) {
                    andSet = new byte[4096];
                }
                while (true) {
                    long j = this.f26464l;
                    long j2 = this.f26462j;
                    if (j != j2) {
                        int read = this.f26460h.read(andSet, 0, (int) Math.min(j2 - j, andSet.length));
                        if (!Thread.interrupted()) {
                            if (read != -1) {
                                this.f26464l += read;
                                InterfaceC6321uk<? super C5950kk> interfaceC6321uk = this.f26457e;
                                if (interfaceC6321uk != null) {
                                    interfaceC6321uk.mo5188w(this, read);
                                }
                            } else {
                                throw new EOFException();
                            }
                        } else {
                            throw new InterruptedIOException();
                        }
                    } else {
                        f26452o.set(andSet);
                        break;
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.f26463k;
            if (j3 != -1) {
                long j4 = j3 - this.f26465m;
                if (j4 != 0) {
                    i2 = (int) Math.min(i2, j4);
                }
                return -1;
            }
            int read2 = this.f26460h.read(bArr, i, i2);
            if (read2 == -1) {
                if (this.f26463k == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.f26465m += read2;
            InterfaceC6321uk<? super C5950kk> interfaceC6321uk2 = this.f26457e;
            if (interfaceC6321uk2 != null) {
                interfaceC6321uk2.mo5188w(this, read2);
                return read2;
            }
            return read2;
        } catch (IOException e) {
            throw new C5987lk(e, this.f26458f, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f8, code lost:
        if (r3 != 0) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01da  */
    @Override // p168r4.InterfaceC5766fk
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo4614d(p168r4.C5877ik r21) {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C5950kk.mo4614d(r4.ik):long");
    }

    /* renamed from: f */
    public final void m10016f() {
        HttpURLConnection httpURLConnection = this.f26459g;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.f26459g = null;
        }
    }

    public C5950kk(String str, InterfaceC5767fl<String> interfaceC5767fl, InterfaceC6321uk<? super C5950kk> interfaceC6321uk, int i, int i2, boolean z, C6062nk c6062nk) {
        C6358vk.m6135f(str);
        this.f26455c = str;
        this.f26457e = interfaceC6321uk;
        this.f26456d = new C6062nk();
        this.f26453a = i;
        this.f26454b = i2;
    }
}
