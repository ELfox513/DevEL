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
/* renamed from: r4.br0 */
/* loaded from: classes2.dex */
public final class br0 extends AbstractC5898j5 implements InterfaceC5915jm {

    /* renamed from: u */
    public static final Pattern f21160u = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");

    /* renamed from: v */
    public static final AtomicReference<byte[]> f21161v = new AtomicReference<>();

    /* renamed from: e */
    public final SSLSocketFactory f21162e;

    /* renamed from: f */
    public final int f21163f;

    /* renamed from: g */
    public final int f21164g;

    /* renamed from: h */
    public final String f21165h;

    /* renamed from: i */
    public final C5804gl f21166i;

    /* renamed from: j */
    public C6350vc f21167j;

    /* renamed from: k */
    public HttpURLConnection f21168k;

    /* renamed from: l */
    public InputStream f21169l;

    /* renamed from: m */
    public boolean f21170m;

    /* renamed from: n */
    public int f21171n;

    /* renamed from: o */
    public long f21172o;

    /* renamed from: p */
    public long f21173p;

    /* renamed from: q */
    public long f21174q;

    /* renamed from: r */
    public long f21175r;

    /* renamed from: s */
    public int f21176s;

    /* renamed from: t */
    public final Set<Socket> f21177t;

    public br0(String str, InterfaceC5844ho interfaceC5844ho, int i, int i2, int i3) {
        super(true);
        this.f21162e = new ar0(this);
        this.f21177t = new HashSet();
        C5903ja.m10369f(str);
        this.f21165h = str;
        this.f21166i = new C5804gl();
        this.f21163f = i;
        this.f21164g = i2;
        this.f21176s = i3;
        if (interfaceC5844ho != null) {
            mo5984c(interfaceC5844ho);
        }
    }

    @Override // p168r4.AbstractC5898j5, p168r4.InterfaceC6087o8, p168r4.InterfaceC5915jm
    /* renamed from: d */
    public final Map<String, List<String>> mo5983d() {
        HttpURLConnection httpURLConnection = this.f21168k;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: h */
    public final void mo4058h() {
        try {
            if (this.f21169l != null) {
                HttpURLConnection httpURLConnection = this.f21168k;
                long j = this.f21173p;
                if (j != -1) {
                    j -= this.f21175r;
                }
                int i = C5979lc.f27164a;
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
                    this.f21169l.close();
                } catch (IOException e) {
                    throw new C5765fj(e, this.f21167j, 2000, 3);
                }
            }
        } finally {
            this.f21169l = null;
            m12710w();
            if (this.f21170m) {
                this.f21170m = false;
                m10419s();
            }
            this.f21177t.clear();
        }
    }

    @Override // p168r4.InterfaceC6087o8
    /* renamed from: j */
    public final Uri mo4057j() {
        HttpURLConnection httpURLConnection = this.f21168k;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // p168r4.InterfaceC5936k6
    /* renamed from: b */
    public final int mo4060b(byte[] bArr, int i, int i2) {
        try {
            if (this.f21174q != this.f21172o) {
                byte[] andSet = f21161v.getAndSet(null);
                if (andSet == null) {
                    andSet = new byte[4096];
                }
                while (true) {
                    long j = this.f21174q;
                    long j2 = this.f21172o;
                    if (j != j2) {
                        int read = this.f21169l.read(andSet, 0, (int) Math.min(j2 - j, andSet.length));
                        if (!Thread.interrupted()) {
                            if (read != -1) {
                                this.f21174q += read;
                                m10420r(read);
                            } else {
                                throw new EOFException();
                            }
                        } else {
                            throw new InterruptedIOException();
                        }
                    } else {
                        f21161v.set(andSet);
                        break;
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.f21173p;
            if (j3 != -1) {
                long j4 = j3 - this.f21175r;
                if (j4 != 0) {
                    i2 = (int) Math.min(i2, j4);
                }
                return -1;
            }
            int read2 = this.f21169l.read(bArr, i, i2);
            if (read2 == -1) {
                if (this.f21173p == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.f21175r += read2;
            m10420r(read2);
            return read2;
        } catch (IOException e) {
            throw new C5765fj(e, this.f21167j, 2000, 2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x010b, code lost:
        if (r2 != 0) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01f3  */
    @Override // p168r4.InterfaceC6087o8
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo4059g(p168r4.C6350vc r22) {
        /*
            Method dump skipped, instructions count: 763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.br0.mo4059g(r4.vc):long");
    }

    /* renamed from: u */
    public final void m12712u(int i) {
        this.f21176s = i;
        for (Socket socket : this.f21177t) {
            if (!socket.isClosed()) {
                try {
                    socket.setReceiveBufferSize(this.f21176s);
                } catch (SocketException e) {
                    cm0.m12436g("Failed to update receive buffer size.", e);
                }
            }
        }
    }

    /* renamed from: w */
    public final void m12710w() {
        HttpURLConnection httpURLConnection = this.f21168k;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                cm0.m12439d("Unexpected error while disconnecting", e);
            }
            this.f21168k = null;
        }
    }
}
