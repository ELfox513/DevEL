package p230y5;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;
import p196u5.C6930f;
import p222x5.C7341g;
import p230y5.C7507c;
/* renamed from: y5.d */
/* loaded from: classes2.dex */
public class C7512d implements InterfaceC7502a {

    /* renamed from: d */
    public static final Charset f37353d = Charset.forName("UTF-8");

    /* renamed from: a */
    public final File f37354a;

    /* renamed from: b */
    public final int f37355b;

    /* renamed from: c */
    public C7507c f37356c;

    /* renamed from: y5.d$a */
    /* loaded from: classes2.dex */
    public class C7513a implements C7507c.InterfaceC7511d {

        /* renamed from: a */
        public final /* synthetic */ byte[] f37357a;

        /* renamed from: b */
        public final /* synthetic */ int[] f37358b;

        public C7513a(byte[] bArr, int[] iArr) {
            this.f37357a = bArr;
            this.f37358b = iArr;
        }

        @Override // p230y5.C7507c.InterfaceC7511d
        /* renamed from: a */
        public void mo1328a(InputStream inputStream, int i) {
            try {
                inputStream.read(this.f37357a, this.f37358b[0], i);
                int[] iArr = this.f37358b;
                iArr[0] = iArr[0] + i;
            } finally {
                inputStream.close();
            }
        }
    }

    /* renamed from: y5.d$b */
    /* loaded from: classes2.dex */
    public static class C7514b {

        /* renamed from: a */
        public final byte[] f37360a;

        /* renamed from: b */
        public final int f37361b;

        public C7514b(byte[] bArr, int i) {
            this.f37360a = bArr;
            this.f37361b = i;
        }
    }

    @Override // p230y5.InterfaceC7502a
    /* renamed from: a */
    public void mo1336a() {
        C7341g.m1791e(this.f37356c, "There was a problem closing the Crashlytics log file.");
        this.f37356c = null;
    }

    /* renamed from: f */
    public final void m1331f(long j, String str) {
        int i;
        if (this.f37356c == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            if (str.length() > this.f37355b / 4) {
                str = "..." + str.substring(str.length() - i);
            }
            this.f37356c.m1351g(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f37353d));
            while (!this.f37356c.m1345n() && this.f37356c.m1360F() > this.f37355b) {
                this.f37356c.m1338w();
            }
        } catch (IOException e) {
            C6930f.m3016f().m3017e("There was a problem writing to the Crashlytics log.", e);
        }
    }

    /* renamed from: g */
    public final C7514b m1330g() {
        if (!this.f37354a.exists()) {
            return null;
        }
        m1329h();
        C7507c c7507c = this.f37356c;
        if (c7507c == null) {
            return null;
        }
        int[] iArr = {0};
        byte[] bArr = new byte[c7507c.m1360F()];
        try {
            this.f37356c.m1347k(new C7513a(bArr, iArr));
        } catch (IOException e) {
            C6930f.m3016f().m3017e("A problem occurred while reading the Crashlytics log file.", e);
        }
        return new C7514b(bArr, iArr[0]);
    }

    /* renamed from: h */
    public final void m1329h() {
        if (this.f37356c == null) {
            try {
                this.f37356c = new C7507c(this.f37354a);
            } catch (IOException e) {
                C6930f m3016f = C6930f.m3016f();
                m3016f.m3017e("Could not open log file: " + this.f37354a, e);
            }
        }
    }

    public C7512d(File file, int i) {
        this.f37354a = file;
        this.f37355b = i;
    }

    @Override // p230y5.InterfaceC7502a
    /* renamed from: b */
    public String mo1335b() {
        byte[] mo1334c = mo1334c();
        if (mo1334c != null) {
            return new String(mo1334c, f37353d);
        }
        return null;
    }

    @Override // p230y5.InterfaceC7502a
    /* renamed from: c */
    public byte[] mo1334c() {
        C7514b m1330g = m1330g();
        if (m1330g == null) {
            return null;
        }
        int i = m1330g.f37361b;
        byte[] bArr = new byte[i];
        System.arraycopy(m1330g.f37360a, 0, bArr, 0, i);
        return bArr;
    }

    @Override // p230y5.InterfaceC7502a
    /* renamed from: d */
    public void mo1333d() {
        mo1336a();
        this.f37354a.delete();
    }

    @Override // p230y5.InterfaceC7502a
    /* renamed from: e */
    public void mo1332e(long j, String str) {
        m1329h();
        m1331f(j, str);
    }
}
