package p168r4;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p168r4.tk3;
import p168r4.uk3;
/* renamed from: r4.uk3 */
/* loaded from: classes2.dex */
public abstract class uk3<MessageType extends uk3<MessageType, BuilderType>, BuilderType extends tk3<MessageType, BuilderType>> implements ao3 {
    public int zza = 0;

    /* renamed from: d */
    public int mo6493d() {
        throw null;
    }

    /* renamed from: e */
    public void mo6492e(int i) {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public static <T> void m6491g(Iterable<T> iterable, List<? super T> list) {
        zm3.m4180a(iterable);
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
        }
        int size = list.size();
        for (T t : iterable) {
            if (t == 0) {
                int size2 = list.size();
                StringBuilder sb = new StringBuilder(37);
                sb.append("Element at index ");
                sb.append(size2 - size);
                sb.append(" is null.");
                String sb2 = sb.toString();
                int size3 = list.size();
                while (true) {
                    size3--;
                    if (size3 < size) {
                        break;
                    }
                    list.remove(size3);
                }
                throw new NullPointerException(sb2);
            }
            list.add(t);
        }
    }

    @Override // p168r4.ao3
    /* renamed from: F */
    public final ll3 mo6494F() {
        try {
            int mo8269G = mo8269G();
            ll3 ll3Var = ll3.f27255b;
            byte[] bArr = new byte[mo8269G];
            wl3 m5649y = wl3.m5649y(bArr);
            mo8266c(m5649y);
            m5649y.m5670d();
            return new hl3(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    @Override // p168r4.ao3
    /* renamed from: t */
    public final byte[] mo6490t() {
        try {
            byte[] bArr = new byte[mo8269G()];
            wl3 m5649y = wl3.m5649y(bArr);
            mo8266c(m5649y);
            m5649y.m5670d();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }
}
