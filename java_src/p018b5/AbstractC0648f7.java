package p018b5;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p018b5.AbstractC0631e7;
import p018b5.AbstractC0648f7;
/* renamed from: b5.f7 */
/* loaded from: classes2.dex */
public abstract class AbstractC0648f7<MessageType extends AbstractC0648f7<MessageType, BuilderType>, BuilderType extends AbstractC0631e7<MessageType, BuilderType>> implements InterfaceC0634ea {
    public int zzb = 0;

    /* renamed from: b */
    public int mo24986b() {
        throw null;
    }

    /* renamed from: d */
    public void mo24985d(int i) {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static <T> void m25983c(Iterable<T> iterable, List<? super T> list) {
        C0650f9.m25946e(iterable);
        if (iterable instanceof InterfaceC0752l9) {
            List<?> mo25649f = ((InterfaceC0752l9) iterable).mo25649f();
            InterfaceC0752l9 interfaceC0752l9 = (InterfaceC0752l9) list;
            int size = list.size();
            for (Object obj : mo25649f) {
                if (obj == null) {
                    int size2 = interfaceC0752l9.size();
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2 - size);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    int size3 = interfaceC0752l9.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        }
                        interfaceC0752l9.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                } else if (obj instanceof AbstractC0937w7) {
                    interfaceC0752l9.mo25652J((AbstractC0937w7) obj);
                } else {
                    interfaceC0752l9.add((String) obj);
                }
            }
        } else if (!(iterable instanceof InterfaceC0753la)) {
            if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
            }
            int size4 = list.size();
            for (T t : iterable) {
                if (t == 0) {
                    int size5 = list.size();
                    StringBuilder sb3 = new StringBuilder(37);
                    sb3.append("Element at index ");
                    sb3.append(size5 - size4);
                    sb3.append(" is null.");
                    String sb4 = sb3.toString();
                    int size6 = list.size();
                    while (true) {
                        size6--;
                        if (size6 < size4) {
                            break;
                        }
                        list.remove(size6);
                    }
                    throw new NullPointerException(sb4);
                }
                list.add(t);
            }
        } else {
            list.addAll(iterable);
        }
    }

    /* renamed from: e */
    public final byte[] m25982e() {
        try {
            byte[] bArr = new byte[mo24973t0()];
            AbstractC0649f8 m25974c = AbstractC0649f8.m25974c(bArr);
            mo24971v0(m25974c);
            m25974c.m25973d();
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

    @Override // p018b5.InterfaceC0634ea
    /* renamed from: j0 */
    public final AbstractC0937w7 mo25981j0() {
        try {
            int mo24973t0 = mo24973t0();
            AbstractC0937w7 abstractC0937w7 = AbstractC0937w7.f2373b;
            byte[] bArr = new byte[mo24973t0];
            AbstractC0649f8 m25974c = AbstractC0649f8.m25974c(bArr);
            mo24971v0(m25974c);
            m25974c.m25973d();
            return new C0886t7(bArr);
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }
}
