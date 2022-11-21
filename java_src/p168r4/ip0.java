package p168r4;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: r4.ip0 */
/* loaded from: classes2.dex */
public final class ip0 implements InterfaceC6099ok {

    /* renamed from: q */
    public static final Pattern f25220q = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: r */
    public static final AtomicReference<byte[]> f25221r = new AtomicReference<>();

    /* renamed from: b */
    public final int f25223b;

    /* renamed from: c */
    public final int f25224c;

    /* renamed from: d */
    public final String f25225d;

    /* renamed from: e */
    public final C6062nk f25226e;

    /* renamed from: f */
    public final InterfaceC6321uk<? super ip0> f25227f;

    /* renamed from: g */
    public C5877ik f25228g;

    /* renamed from: h */
    public HttpURLConnection f25229h;

    /* renamed from: i */
    public InputStream f25230i;

    /* renamed from: j */
    public boolean f25231j;

    /* renamed from: k */
    public long f25232k;

    /* renamed from: l */
    public long f25233l;

    /* renamed from: m */
    public long f25234m;

    /* renamed from: n */
    public long f25235n;

    /* renamed from: o */
    public int f25236o;

    /* renamed from: a */
    public final SSLSocketFactory f25222a = new hp0(this);

    /* renamed from: p */
    public final Set<Socket> f25237p = new HashSet();

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: b */
    public final Uri mo4615b() {
        HttpURLConnection httpURLConnection = this.f25229h;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // p168r4.InterfaceC6099ok
    /* renamed from: c */
    public final Map<String, List<String>> mo8788c() {
        HttpURLConnection httpURLConnection = this.f25229h;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: e */
    public final void mo4613e() {
        try {
            if (this.f25230i != null) {
                HttpURLConnection httpURLConnection = this.f25229h;
                long j = this.f25233l;
                if (j != -1) {
                    j -= this.f25235n;
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
                    this.f25230i.close();
                } catch (IOException e) {
                    throw new C5987lk(e, this.f25228g, 3);
                }
            }
        } finally {
            this.f25230i = null;
            m10574i();
            if (this.f25231j) {
                this.f25231j = false;
            }
            this.f25237p.clear();
        }
    }

    @Override // p168r4.InterfaceC5766fk
    /* renamed from: a */
    public final int mo4616a(byte[] bArr, int i, int i2) {
        try {
            if (this.f25234m != this.f25232k) {
                byte[] andSet = f25221r.getAndSet(null);
                if (andSet == null) {
                    andSet = new byte[4096];
                }
                while (true) {
                    long j = this.f25234m;
                    long j2 = this.f25232k;
                    if (j != j2) {
                        int read = this.f25230i.read(andSet, 0, (int) Math.min(j2 - j, andSet.length));
                        if (!Thread.interrupted()) {
                            if (read != -1) {
                                this.f25234m += read;
                                InterfaceC6321uk<? super ip0> interfaceC6321uk = this.f25227f;
                                if (interfaceC6321uk != null) {
                                    ((xp0) interfaceC6321uk).m5205d0(this, read);
                                }
                            } else {
                                throw new EOFException();
                            }
                        } else {
                            throw new InterruptedIOException();
                        }
                    } else {
                        f25221r.set(andSet);
                        break;
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.f25233l;
            if (j3 != -1) {
                long j4 = j3 - this.f25235n;
                if (j4 != 0) {
                    i2 = (int) Math.min(i2, j4);
                }
                return -1;
            }
            int read2 = this.f25230i.read(bArr, i, i2);
            if (read2 == -1) {
                if (this.f25233l == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.f25235n += read2;
            InterfaceC6321uk<? super ip0> interfaceC6321uk2 = this.f25227f;
            if (interfaceC6321uk2 != null) {
                ((xp0) interfaceC6321uk2).m5205d0(this, read2);
                return read2;
            }
            return read2;
        } catch (IOException e) {
            throw new C5987lk(e, this.f25228g, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0104, code lost:
        if (r6 != 0) goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0296 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x025b A[Catch: IOException -> 0x02b7, TryCatch #0 {IOException -> 0x02b7, blocks: (B:3:0x000e, B:4:0x001e, B:6:0x0024, B:8:0x002e, B:9:0x0036, B:10:0x004e, B:12:0x0054, B:24:0x00b8, B:37:0x00ee, B:96:0x0250, B:98:0x025b, B:100:0x026c, B:102:0x0274, B:104:0x0282, B:106:0x028c, B:107:0x028f, B:105:0x0287, B:109:0x0296, B:110:0x029d, B:19:0x007c, B:21:0x0096, B:23:0x00b3, B:111:0x029e, B:112:0x02b6), top: B:121:0x000e }] */
    @Override // p168r4.InterfaceC5766fk
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo4614d(p168r4.C5877ik r24) {
        /*
            Method dump skipped, instructions count: 732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.ip0.mo4614d(r4.ik):long");
    }

    /* renamed from: g */
    public final void m10576g(int i) {
        this.f25236o = i;
        for (Socket socket : this.f25237p) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.f25236o);
                } catch (SocketException e) {
                    cm0.m12436g("Failed to update receive buffer size.", e);
                }
            }
        }
    }

    /* renamed from: i */
    public final void m10574i() {
        HttpURLConnection httpURLConnection = this.f25229h;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                cm0.m12439d("Unexpected error while disconnecting", e);
            }
            this.f25229h = null;
        }
    }

    public ip0(String str, InterfaceC6321uk<? super ip0> interfaceC6321uk, int i, int i2, int i3) {
        C6358vk.m6135f(str);
        this.f25225d = str;
        this.f25227f = interfaceC6321uk;
        this.f25226e = new C6062nk();
        this.f25223b = i;
        this.f25224c = i2;
        this.f25236o = i3;
    }
}
