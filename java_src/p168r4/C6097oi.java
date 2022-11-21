package p168r4;

import android.net.Uri;
import java.io.EOFException;
/* renamed from: r4.oi */
/* loaded from: classes2.dex */
public final class C6097oi {

    /* renamed from: a */
    public final InterfaceC6131pf[] f29000a;

    /* renamed from: b */
    public final InterfaceC6168qf f29001b;

    /* renamed from: c */
    public InterfaceC6131pf f29002c;

    public C6097oi(InterfaceC6131pf[] interfaceC6131pfArr, InterfaceC6168qf interfaceC6168qf) {
        this.f29000a = interfaceC6131pfArr;
        this.f29001b = interfaceC6168qf;
    }

    /* renamed from: a */
    public final void m8794a() {
        if (this.f29002c != null) {
            this.f29002c = null;
        }
    }

    /* renamed from: b */
    public final InterfaceC6131pf m8793b(C6094of c6094of, Uri uri) {
        InterfaceC6131pf interfaceC6131pf = this.f29002c;
        if (interfaceC6131pf != null) {
            return interfaceC6131pf;
        }
        InterfaceC6131pf[] interfaceC6131pfArr = this.f29000a;
        int length = interfaceC6131pfArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            InterfaceC6131pf interfaceC6131pf2 = interfaceC6131pfArr[i];
            try {
            } catch (EOFException unused) {
            } catch (Throwable th) {
                c6094of.m8812g();
                throw th;
            }
            if (interfaceC6131pf2.mo4726n(c6094of)) {
                this.f29002c = interfaceC6131pf2;
                c6094of.m8812g();
                break;
            }
            continue;
            c6094of.m8812g();
            i++;
        }
        InterfaceC6131pf interfaceC6131pf3 = this.f29002c;
        if (interfaceC6131pf3 != null) {
            interfaceC6131pf3.mo4725o(this.f29001b);
            return this.f29002c;
        }
        String m9640n = C5988ll.m9640n(this.f29000a);
        StringBuilder sb = new StringBuilder(m9640n.length() + 58);
        sb.append("None of the available extractors (");
        sb.append(m9640n);
        sb.append(") could read the stream.");
        throw new C6061nj(sb.toString(), uri);
    }
}
