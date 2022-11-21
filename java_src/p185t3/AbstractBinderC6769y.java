package p185t3;

import android.os.RemoteException;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import p060f4.BinderC3514b;
import p060f4.InterfaceC3512a;
import p220x3.AbstractBinderC7314v1;
import p220x3.C7297q;
import p220x3.InterfaceC7317w1;
/* renamed from: t3.y */
/* loaded from: classes.dex */
public abstract class AbstractBinderC6769y extends AbstractBinderC7314v1 {

    /* renamed from: a */
    public final int f35448a;

    @Override // p220x3.InterfaceC7317w1
    /* renamed from: c */
    public final int mo1846c() {
        return this.f35448a;
    }

    @Override // p220x3.InterfaceC7317w1
    /* renamed from: e */
    public final InterfaceC3512a mo1845e() {
        return BinderC3514b.m18741L0(mo3453t0());
    }

    public final boolean equals(Object obj) {
        InterfaceC3512a mo1845e;
        if (obj != null && (obj instanceof InterfaceC7317w1)) {
            try {
                InterfaceC7317w1 interfaceC7317w1 = (InterfaceC7317w1) obj;
                if (interfaceC7317w1.mo1846c() == this.f35448a && (mo1845e = interfaceC7317w1.mo1845e()) != null) {
                    return Arrays.equals(mo3453t0(), (byte[]) BinderC3514b.m18740t0(mo1845e));
                }
                return false;
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f35448a;
    }

    /* renamed from: t0 */
    public abstract byte[] mo3453t0();

    /* renamed from: L0 */
    public static byte[] m3454L0(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public AbstractBinderC6769y(byte[] bArr) {
        boolean z;
        if (bArr.length == 25) {
            z = true;
        } else {
            z = false;
        }
        C7297q.m1892a(z);
        this.f35448a = Arrays.hashCode(bArr);
    }
}
