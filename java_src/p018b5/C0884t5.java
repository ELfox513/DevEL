package p018b5;

import android.content.Context;
/* renamed from: b5.t5 */
/* loaded from: classes2.dex */
public final class C0884t5 extends AbstractC0817p6 {

    /* renamed from: a */
    public final Context f2314a;

    /* renamed from: b */
    public final InterfaceC0987z6<AbstractC0936w6<C0647f6>> f2315b;

    public C0884t5(Context context, InterfaceC0987z6<AbstractC0936w6<C0647f6>> interfaceC0987z6) {
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        this.f2314a = context;
        this.f2315b = interfaceC0987z6;
    }

    @Override // p018b5.AbstractC0817p6
    /* renamed from: a */
    public final Context mo25116a() {
        return this.f2314a;
    }

    @Override // p018b5.AbstractC0817p6
    /* renamed from: b */
    public final InterfaceC0987z6<AbstractC0936w6<C0647f6>> mo25115b() {
        return this.f2315b;
    }

    public final boolean equals(Object obj) {
        InterfaceC0987z6<AbstractC0936w6<C0647f6>> interfaceC0987z6;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC0817p6) {
            AbstractC0817p6 abstractC0817p6 = (AbstractC0817p6) obj;
            if (this.f2314a.equals(abstractC0817p6.mo25116a()) && ((interfaceC0987z6 = this.f2315b) != null ? interfaceC0987z6.equals(abstractC0817p6.mo25115b()) : abstractC0817p6.mo25115b() == null)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f2314a);
        String valueOf2 = String.valueOf(this.f2315b);
        StringBuilder sb = new StringBuilder(valueOf.length() + 46 + valueOf2.length());
        sb.append("FlagsContext{context=");
        sb.append(valueOf);
        sb.append(", hermeticFileOverrides=");
        sb.append(valueOf2);
        sb.append("}");
        return sb.toString();
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.f2314a.hashCode() ^ 1000003) * 1000003;
        InterfaceC0987z6<AbstractC0936w6<C0647f6>> interfaceC0987z6 = this.f2315b;
        if (interfaceC0987z6 == null) {
            hashCode = 0;
        } else {
            hashCode = interfaceC0987z6.hashCode();
        }
        return hashCode2 ^ hashCode;
    }
}
