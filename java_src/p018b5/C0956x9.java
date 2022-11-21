package p018b5;

import java.util.List;
import java.util.Map;
/* renamed from: b5.x9 */
/* loaded from: classes2.dex */
public final class C0956x9 extends C0776n {

    /* renamed from: b */
    public final C0589c f2397b;

    public C0956x9(C0589c c0589c) {
        this.f2397b = c0589c;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p018b5.C0776n, p018b5.InterfaceC0827q
    /* renamed from: l */
    public final InterfaceC0827q mo24969l(String str, C0917v4 c0917v4, List<InterfaceC0827q> list) {
        char c;
        switch (str.hashCode()) {
            case 21624207:
                if (str.equals("getEventName")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 45521504:
                if (str.equals("getTimestamp")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 146575578:
                if (str.equals("getParamValue")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 700587132:
                if (str.equals("getParams")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 920706790:
                if (str.equals("setParamValue")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1570616835:
                if (str.equals("setEventName")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        if (c != 4) {
                            if (c != 5) {
                                return super.mo24969l(str, c0917v4, list);
                            }
                            C0935w5.m25046h("setParamValue", 2, list);
                            String mo25083j = c0917v4.m25072b(list.get(0)).mo25083j();
                            InterfaceC0827q m25072b = c0917v4.m25072b(list.get(1));
                            this.f2397b.m26126b().m26154g(mo25083j, C0935w5.m25048f(m25072b));
                            return m25072b;
                        }
                        C0935w5.m25046h("setEventName", 1, list);
                        InterfaceC0827q m25072b2 = c0917v4.m25072b(list.get(0));
                        if (!InterfaceC0827q.f2154c.equals(m25072b2) && !InterfaceC0827q.f2155e.equals(m25072b2)) {
                            this.f2397b.m26126b().m26155f(m25072b2.mo25083j());
                            return new C0895u(m25072b2.mo25083j());
                        }
                        throw new IllegalArgumentException("Illegal event name");
                    }
                    C0935w5.m25046h("getTimestamp", 0, list);
                    return new C0691i(Double.valueOf(this.f2397b.m26126b().m26160a()));
                }
                C0935w5.m25046h("getParams", 0, list);
                Map<String, Object> m26156e = this.f2397b.m26126b().m26156e();
                C0776n c0776n = new C0776n();
                for (String str2 : m26156e.keySet()) {
                    c0776n.mo25606u(str2, C0953x6.m24988b(m26156e.get(str2)));
                }
                return c0776n;
            }
            C0935w5.m25046h("getParamValue", 1, list);
            return C0953x6.m24988b(this.f2397b.m26126b().m26158c(c0917v4.m25072b(list.get(0)).mo25083j()));
        }
        C0935w5.m25046h("getEventName", 0, list);
        return new C0895u(this.f2397b.m26126b().m26157d());
    }
}
