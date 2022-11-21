package p139o2;

import java.util.Map;
import p058f2.EnumC3505d;
import p139o2.AbstractC5072g;
import p166r2.InterfaceC5525a;
/* renamed from: o2.c */
/* loaded from: classes.dex */
public final class C5066c extends AbstractC5072g {

    /* renamed from: a */
    public final InterfaceC5525a f19294a;

    /* renamed from: b */
    public final Map<EnumC3505d, AbstractC5072g.AbstractC5074b> f19295b;

    @Override // p139o2.AbstractC5072g
    /* renamed from: e */
    public InterfaceC5525a mo14719e() {
        return this.f19294a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC5072g)) {
            return false;
        }
        AbstractC5072g abstractC5072g = (AbstractC5072g) obj;
        return this.f19294a.equals(abstractC5072g.mo14719e()) && this.f19295b.equals(abstractC5072g.mo14716h());
    }

    @Override // p139o2.AbstractC5072g
    /* renamed from: h */
    public Map<EnumC3505d, AbstractC5072g.AbstractC5074b> mo14716h() {
        return this.f19295b;
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f19294a + ", values=" + this.f19295b + "}";
    }

    public int hashCode() {
        return ((this.f19294a.hashCode() ^ 1000003) * 1000003) ^ this.f19295b.hashCode();
    }

    public C5066c(InterfaceC5525a interfaceC5525a, Map<EnumC3505d, AbstractC5072g.AbstractC5074b> map) {
        if (interfaceC5525a != null) {
            this.f19294a = interfaceC5525a;
            if (map != null) {
                this.f19295b = map;
                return;
            }
            throw new NullPointerException("Null values");
        }
        throw new NullPointerException("Null clock");
    }
}
