package p237z4;

import java.io.IOException;
import p237z4.AbstractC7618c;
import p237z4.AbstractC7623d;
/* renamed from: z4.c */
/* loaded from: classes2.dex */
public abstract class AbstractC7618c<MessageType extends AbstractC7618c<MessageType, BuilderType>, BuilderType extends AbstractC7623d<MessageType, BuilderType>> implements InterfaceC7703r1 {
    private static boolean zznf = false;
    public int zzne = 0;

    /* renamed from: g */
    public int mo664g() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void mo663j(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // p237z4.InterfaceC7703r1
    /* renamed from: c */
    public final AbstractC7652i mo610c() {
        try {
            C7696q m697v = AbstractC7652i.m697v(mo609h());
            mo611b(m697v.m619b());
            return m697v.m620a();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    /* renamed from: d */
    public final byte[] m878d() {
        try {
            byte[] bArr = new byte[mo609h()];
            AbstractC7726x m535I = AbstractC7726x.m535I(bArr);
            mo611b(m535I);
            m535I.m527Y();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 62 + "byte array".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }
}
