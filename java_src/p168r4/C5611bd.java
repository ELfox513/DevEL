package p168r4;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: r4.bd */
/* loaded from: classes2.dex */
public final class C5611bd implements InterfaceC6461yc {

    /* renamed from: a */
    public final InterfaceC6055nd[] f20979a;

    /* renamed from: b */
    public final AbstractC5581ak f20980b;

    /* renamed from: c */
    public final C6468yj f20981c;

    /* renamed from: d */
    public final Handler f20982d;

    /* renamed from: e */
    public final C5796gd f20983e;

    /* renamed from: f */
    public final CopyOnWriteArraySet<InterfaceC6313uc> f20984f;

    /* renamed from: g */
    public final C6240sd f20985g;

    /* renamed from: h */
    public final C6203rd f20986h;

    /* renamed from: i */
    public boolean f20987i;

    /* renamed from: j */
    public boolean f20988j;

    /* renamed from: k */
    public int f20989k;

    /* renamed from: l */
    public int f20990l;

    /* renamed from: m */
    public int f20991m;

    /* renamed from: n */
    public boolean f20992n;

    /* renamed from: o */
    public AbstractC6277td f20993o;

    /* renamed from: p */
    public Object f20994p;

    /* renamed from: q */
    public C6023mj f20995q;

    /* renamed from: r */
    public C6468yj f20996r;

    /* renamed from: s */
    public C6017md f20997s;

    /* renamed from: t */
    public C5684dd f20998t;

    /* renamed from: u */
    public long f20999u;

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: a */
    public final void mo4780a(int i) {
        this.f20983e.m11188z(i);
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: b */
    public final int mo4779b() {
        return this.f20989k;
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: d */
    public final boolean mo4777d() {
        return this.f20988j;
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: e */
    public final void mo4776e(InterfaceC6313uc interfaceC6313uc) {
        this.f20984f.add(interfaceC6313uc);
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: f */
    public final void mo4775f() {
        this.f20983e.m11192v();
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: g */
    public final void mo4774g(int i) {
        this.f20983e.m11222A(i);
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: h */
    public final void mo4773h(C6424xc... c6424xcArr) {
        this.f20983e.m11190x(c6424xcArr);
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: i */
    public final void mo4772i(InterfaceC6313uc interfaceC6313uc) {
        this.f20984f.remove(interfaceC6313uc);
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: o */
    public final void mo4766o(C6424xc... c6424xcArr) {
        this.f20983e.m11191w(c6424xcArr);
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: q */
    public final void mo4764q() {
        this.f20983e.m11196r();
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: c */
    public final void mo4778c(boolean z) {
        if (this.f20988j != z) {
            this.f20988j = z;
            this.f20983e.m11194t(z);
            Iterator<InterfaceC6313uc> it = this.f20984f.iterator();
            while (it.hasNext()) {
                it.next().mo5190t(z, this.f20989k);
            }
        }
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: j */
    public final void mo4771j() {
        this.f20983e.m11189y();
        this.f20982d.removeCallbacksAndMessages(null);
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: k */
    public final long mo4770k() {
        if (this.f20993o.m6873f()) {
            return -9223372036854775807L;
        }
        AbstractC6277td abstractC6277td = this.f20993o;
        m12809r();
        return C6239sc.m7180a(abstractC6277td.m6872g(0, this.f20985g, false).f31309a);
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: l */
    public final long mo4769l() {
        if (!this.f20993o.m6873f() && this.f20990l <= 0) {
            this.f20993o.mo6875d(this.f20998t.f22224a, this.f20986h, false);
            return C6239sc.m7180a(0L) + C6239sc.m7180a(this.f20998t.f22226c);
        }
        return this.f20999u;
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: n */
    public final void mo4767n(InterfaceC6393wi interfaceC6393wi) {
        if (!this.f20993o.m6873f() || this.f20994p != null) {
            this.f20993o = AbstractC6277td.f31765a;
            this.f20994p = null;
            Iterator<InterfaceC6313uc> it = this.f20984f.iterator();
            while (it.hasNext()) {
                it.next().mo5189v(this.f20993o, this.f20994p);
            }
        }
        if (this.f20987i) {
            this.f20987i = false;
            this.f20995q = C6023mj.f27742d;
            this.f20996r = this.f20981c;
            this.f20980b.mo5710b(null);
            Iterator<InterfaceC6313uc> it2 = this.f20984f.iterator();
            while (it2.hasNext()) {
                it2.next().mo5191r(this.f20995q, this.f20996r);
            }
        }
        this.f20991m++;
        this.f20983e.m11195s(interfaceC6393wi, true);
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: p */
    public final long mo4765p() {
        if (!this.f20993o.m6873f() && this.f20990l <= 0) {
            this.f20993o.mo6875d(this.f20998t.f22224a, this.f20986h, false);
            return C6239sc.m7180a(0L) + C6239sc.m7180a(this.f20998t.f22227d);
        }
        return this.f20999u;
    }

    /* renamed from: r */
    public final int m12809r() {
        if (!this.f20993o.m6873f() && this.f20990l <= 0) {
            this.f20993o.mo6875d(this.f20998t.f22224a, this.f20986h, false);
        }
        return 0;
    }

    /* renamed from: s */
    public final void m12808s(Message message) {
        boolean z = true;
        switch (message.what) {
            case 0:
                this.f20991m--;
                return;
            case 1:
                this.f20989k = message.arg1;
                Iterator<InterfaceC6313uc> it = this.f20984f.iterator();
                while (it.hasNext()) {
                    it.next().mo5190t(this.f20988j, this.f20989k);
                }
                return;
            case 2:
                if (message.arg1 == 0) {
                    z = false;
                }
                this.f20992n = z;
                Iterator<InterfaceC6313uc> it2 = this.f20984f.iterator();
                while (it2.hasNext()) {
                    it2.next().mo5192o0(this.f20992n);
                }
                return;
            case 3:
                if (this.f20991m == 0) {
                    C5618bk c5618bk = (C5618bk) message.obj;
                    this.f20987i = true;
                    this.f20995q = c5618bk.f21083a;
                    this.f20996r = c5618bk.f21084b;
                    this.f20980b.mo5710b(c5618bk.f21085c);
                    Iterator<InterfaceC6313uc> it3 = this.f20984f.iterator();
                    while (it3.hasNext()) {
                        it3.next().mo5191r(this.f20995q, this.f20996r);
                    }
                    return;
                }
                return;
            case 4:
                int i = this.f20990l - 1;
                this.f20990l = i;
                if (i == 0) {
                    this.f20998t = (C5684dd) message.obj;
                    if (message.arg1 != 0) {
                        Iterator<InterfaceC6313uc> it4 = this.f20984f.iterator();
                        while (it4.hasNext()) {
                            it4.next().mo5206d();
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                if (this.f20990l == 0) {
                    this.f20998t = (C5684dd) message.obj;
                    Iterator<InterfaceC6313uc> it5 = this.f20984f.iterator();
                    while (it5.hasNext()) {
                        it5.next().mo5206d();
                    }
                    return;
                }
                return;
            case 6:
                C5759fd c5759fd = (C5759fd) message.obj;
                this.f20990l -= c5759fd.f23454d;
                if (this.f20991m == 0) {
                    this.f20993o = c5759fd.f23451a;
                    this.f20994p = c5759fd.f23452b;
                    this.f20998t = c5759fd.f23453c;
                    Iterator<InterfaceC6313uc> it6 = this.f20984f.iterator();
                    while (it6.hasNext()) {
                        it6.next().mo5189v(this.f20993o, this.f20994p);
                    }
                    return;
                }
                return;
            case 7:
                C6017md c6017md = (C6017md) message.obj;
                if (!this.f20997s.equals(c6017md)) {
                    this.f20997s = c6017md;
                    Iterator<InterfaceC6313uc> it7 = this.f20984f.iterator();
                    while (it7.hasNext()) {
                        it7.next().mo5186z(c6017md);
                    }
                    return;
                }
                return;
            case 8:
                C6276tc c6276tc = (C6276tc) message.obj;
                Iterator<InterfaceC6313uc> it8 = this.f20984f.iterator();
                while (it8.hasNext()) {
                    it8.next().mo5194m(c6276tc);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }

    @SuppressLint({"HandlerLeak"})
    public C5611bd(InterfaceC6055nd[] interfaceC6055ndArr, AbstractC5581ak abstractC5581ak, mp0 mp0Var, byte[] bArr) {
        Looper mainLooper;
        String str = C5988ll.f27246e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 26);
        sb.append("Init ExoPlayerLib/2.4.2 [");
        sb.append(str);
        sb.append("]");
        Log.i("ExoPlayerImpl", sb.toString());
        this.f20979a = interfaceC6055ndArr;
        abstractC5581ak.getClass();
        this.f20980b = abstractC5581ak;
        this.f20988j = false;
        this.f20989k = 1;
        this.f20984f = new CopyOnWriteArraySet<>();
        C6468yj c6468yj = new C6468yj(new C6172qj[2], null);
        this.f20981c = c6468yj;
        this.f20993o = AbstractC6277td.f31765a;
        this.f20985g = new C6240sd();
        this.f20986h = new C6203rd();
        this.f20995q = C6023mj.f27742d;
        this.f20996r = c6468yj;
        this.f20997s = C6017md.f27578d;
        if (Looper.myLooper() != null) {
            mainLooper = Looper.myLooper();
        } else {
            mainLooper = Looper.getMainLooper();
        }
        HandlerC5574ad handlerC5574ad = new HandlerC5574ad(this, mainLooper);
        this.f20982d = handlerC5574ad;
        C5684dd c5684dd = new C5684dd(0, 0L);
        this.f20998t = c5684dd;
        this.f20983e = new C5796gd(interfaceC6055ndArr, abstractC5581ak, mp0Var, this.f20988j, 0, handlerC5574ad, c5684dd, this, null);
    }

    @Override // p168r4.InterfaceC6461yc
    /* renamed from: m */
    public final void mo4768m(long j) {
        m12809r();
        if (!this.f20993o.m6873f() && this.f20993o.mo6878a() <= 0) {
            throw new C5943kd(this.f20993o, 0, j);
        }
        this.f20990l++;
        if (!this.f20993o.m6873f()) {
            this.f20993o.m6872g(0, this.f20985g, false);
            long m7179b = C6239sc.m7179b(j);
            long j2 = this.f20993o.mo6875d(0, this.f20986h, false).f30534c;
            if (j2 != -9223372036854775807L) {
                int i = (m7179b > j2 ? 1 : (m7179b == j2 ? 0 : -1));
            }
        }
        this.f20999u = j;
        this.f20983e.m11193u(this.f20993o, 0, C6239sc.m7179b(j));
        Iterator<InterfaceC6313uc> it = this.f20984f.iterator();
        while (it.hasNext()) {
            it.next().mo5206d();
        }
    }
}
