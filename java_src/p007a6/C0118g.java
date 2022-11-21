package p007a6;

import android.util.Base64;
import android.util.JsonReader;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import p116l6.InterfaceC4567a;
import p134n6.C4759d;
import p238z5.AbstractC7762a0;
import p238z5.C7740a;
import p238z5.C7806b0;
/* renamed from: a6.g */
/* loaded from: classes2.dex */
public class C0118g {

    /* renamed from: a */
    public static final InterfaceC4567a f176a = new C4759d().m15452j(C7740a.f37935a).m15451k(true).m15453i();

    /* renamed from: a6.g$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC0119a<T> {
        /* renamed from: a */
        T mo27636a(JsonReader jsonReader);
    }

    /* renamed from: E */
    public String m27663E(AbstractC7762a0 abstractC7762a0) {
        return f176a.mo15444b(abstractC7762a0);
    }

    /* renamed from: h */
    public String m27655h(AbstractC7762a0.AbstractC7772e.AbstractC7779d abstractC7779d) {
        return f176a.mo15444b(abstractC7779d);
    }

    /* renamed from: k */
    public static <T> C7806b0<T> m27652k(JsonReader jsonReader, InterfaceC0119a<T> interfaceC0119a) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(interfaceC0119a.mo27636a(jsonReader));
        }
        jsonReader.endArray();
        return C7806b0.m320d(arrayList);
    }

    /* renamed from: D */
    public AbstractC7762a0 m27664D(String str) {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            AbstractC7762a0 m27667A = m27667A(jsonReader);
            jsonReader.close();
            return m27667A;
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: g */
    public AbstractC7762a0.AbstractC7772e.AbstractC7779d m27656g(String str) {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            AbstractC7762a0.AbstractC7772e.AbstractC7779d m27649n = m27649n(jsonReader);
            jsonReader.close();
            return m27649n;
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    /* renamed from: A */
    public static AbstractC7762a0 m27667A(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7765b m367b = AbstractC7762a0.m367b();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -2118372775:
                    if (nextName.equals("ndkPayload")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1962630338:
                    if (nextName.equals("sdkVersion")) {
                        c = 1;
                        break;
                    }
                    break;
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        c = 2;
                        break;
                    }
                    break;
                case 344431858:
                    if (nextName.equals("gmpAppId")) {
                        c = 3;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        c = 4;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        c = 5;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        c = 6;
                        break;
                    }
                    break;
                case 1984987798:
                    if (nextName.equals("session")) {
                        c = 7;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m367b.mo324f(m27638y(jsonReader));
                    break;
                case 1:
                    m367b.mo322h(jsonReader.nextString());
                    break;
                case 2:
                    m367b.mo328b(jsonReader.nextString());
                    break;
                case 3:
                    m367b.mo326d(jsonReader.nextString());
                    break;
                case 4:
                    m367b.mo325e(jsonReader.nextString());
                    break;
                case 5:
                    m367b.mo323g(jsonReader.nextInt());
                    break;
                case 6:
                    m367b.mo327c(jsonReader.nextString());
                    break;
                case 7:
                    m367b.mo321i(m27666B(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m367b.mo329a();
    }

    /* renamed from: B */
    public static AbstractC7762a0.AbstractC7772e m27666B(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7776b m359a = AbstractC7762a0.AbstractC7772e.m359a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -2128794476:
                    if (nextName.equals("startedAt")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1618432855:
                    if (nextName.equals("identifier")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1606742899:
                    if (nextName.equals("endedAt")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1335157162:
                    if (nextName.equals("device")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1291329255:
                    if (nextName.equals("events")) {
                        c = 4;
                        break;
                    }
                    break;
                case 3556:
                    if (nextName.equals("os")) {
                        c = 5;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        c = 6;
                        break;
                    }
                    break;
                case 3599307:
                    if (nextName.equals("user")) {
                        c = 7;
                        break;
                    }
                    break;
                case 286956243:
                    if (nextName.equals("generator")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 1025385094:
                    if (nextName.equals("crashed")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 2047016109:
                    if (nextName.equals("generatorType")) {
                        c = '\n';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m359a.mo260l(jsonReader.nextLong());
                    break;
                case 1:
                    m359a.m354j(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case 2:
                    m359a.mo266e(Long.valueOf(jsonReader.nextLong()));
                    break;
                case 3:
                    m359a.mo267d(m27650m(jsonReader));
                    break;
                case 4:
                    m359a.mo265f(m27652k(jsonReader, new InterfaceC0119a() { // from class: a6.a
                        @Override // p007a6.C0118g.InterfaceC0119a
                        /* renamed from: a */
                        public final Object mo27636a(JsonReader jsonReader2) {
                            AbstractC7762a0.AbstractC7772e.AbstractC7779d m27649n;
                            m27649n = C0118g.m27649n(jsonReader2);
                            return m27649n;
                        }
                    }));
                    break;
                case 5:
                    m359a.mo261k(m27637z(jsonReader));
                    break;
                case 6:
                    m359a.mo269b(m27654i(jsonReader));
                    break;
                case 7:
                    m359a.mo259m(m27665C(jsonReader));
                    break;
                case '\b':
                    m359a.mo264g(jsonReader.nextString());
                    break;
                case '\t':
                    m359a.mo268c(jsonReader.nextBoolean());
                    break;
                case '\n':
                    m359a.mo263h(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m359a.mo270a();
    }

    /* renamed from: C */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7801f m27665C(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7801f.AbstractC7802a m339a = AbstractC7762a0.AbstractC7772e.AbstractC7801f.m339a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("identifier")) {
                jsonReader.skipValue();
            } else {
                m339a.mo117b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return m339a.mo118a();
    }

    /* renamed from: i */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7773a m27654i(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7773a.AbstractC7774a m355a = AbstractC7762a0.AbstractC7772e.AbstractC7773a.m355a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1618432855:
                    if (nextName.equals("identifier")) {
                        c = 0;
                        break;
                    }
                    break;
                case -519438642:
                    if (nextName.equals("developmentPlatform")) {
                        c = 1;
                        break;
                    }
                    break;
                case 213652010:
                    if (nextName.equals("developmentPlatformVersion")) {
                        c = 2;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        c = 3;
                        break;
                    }
                    break;
                case 719853845:
                    if (nextName.equals("installationUuid")) {
                        c = 4;
                        break;
                    }
                    break;
                case 1975623094:
                    if (nextName.equals("displayVersion")) {
                        c = 5;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m355a.mo247e(jsonReader.nextString());
                    break;
                case 1:
                    m355a.mo250b(jsonReader.nextString());
                    break;
                case 2:
                    m355a.mo249c(jsonReader.nextString());
                    break;
                case 3:
                    m355a.mo245g(jsonReader.nextString());
                    break;
                case 4:
                    m355a.mo246f(jsonReader.nextString());
                    break;
                case 5:
                    m355a.mo248d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m355a.mo251a();
    }

    /* renamed from: j */
    public static AbstractC7762a0.AbstractC7763a m27653j(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7763a.AbstractC7764a m363a = AbstractC7762a0.AbstractC7763a.m363a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case 110987:
                    if (nextName.equals("pid")) {
                        c = 0;
                        break;
                    }
                    break;
                case 111312:
                    if (nextName.equals("pss")) {
                        c = 1;
                        break;
                    }
                    break;
                case 113234:
                    if (nextName.equals("rss")) {
                        c = 2;
                        break;
                    }
                    break;
                case 55126294:
                    if (nextName.equals("timestamp")) {
                        c = 3;
                        break;
                    }
                    break;
                case 202325402:
                    if (nextName.equals("processName")) {
                        c = 4;
                        break;
                    }
                    break;
                case 722137681:
                    if (nextName.equals("reasonCode")) {
                        c = 5;
                        break;
                    }
                    break;
                case 723857505:
                    if (nextName.equals("traceFile")) {
                        c = 6;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        c = 7;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m363a.mo308c(jsonReader.nextInt());
                    break;
                case 1:
                    m363a.mo306e(jsonReader.nextLong());
                    break;
                case 2:
                    m363a.mo304g(jsonReader.nextLong());
                    break;
                case 3:
                    m363a.mo303h(jsonReader.nextLong());
                    break;
                case 4:
                    m363a.mo307d(jsonReader.nextString());
                    break;
                case 5:
                    m363a.mo305f(jsonReader.nextInt());
                    break;
                case 6:
                    m363a.mo302i(jsonReader.nextString());
                    break;
                case 7:
                    m363a.mo309b(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m363a.mo310a();
    }

    /* renamed from: l */
    public static AbstractC7762a0.AbstractC7766c m27651l(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7766c.AbstractC7767a m362a = AbstractC7762a0.AbstractC7766c.m362a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("key")) {
                if (!nextName.equals("value")) {
                    jsonReader.skipValue();
                } else {
                    m362a.mo293c(jsonReader.nextString());
                }
            } else {
                m362a.mo294b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return m362a.mo295a();
    }

    /* renamed from: m */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7777c m27650m(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7777c.AbstractC7778a m353a = AbstractC7762a0.AbstractC7772e.AbstractC7777c.m353a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1981332476:
                    if (nextName.equals("simulator")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1969347631:
                    if (nextName.equals("manufacturer")) {
                        c = 1;
                        break;
                    }
                    break;
                case 112670:
                    if (nextName.equals("ram")) {
                        c = 2;
                        break;
                    }
                    break;
                case 3002454:
                    if (nextName.equals("arch")) {
                        c = 3;
                        break;
                    }
                    break;
                case 81784169:
                    if (nextName.equals("diskSpace")) {
                        c = 4;
                        break;
                    }
                    break;
                case 94848180:
                    if (nextName.equals("cores")) {
                        c = 5;
                        break;
                    }
                    break;
                case 104069929:
                    if (nextName.equals("model")) {
                        c = 6;
                        break;
                    }
                    break;
                case 109757585:
                    if (nextName.equals("state")) {
                        c = 7;
                        break;
                    }
                    break;
                case 2078953423:
                    if (nextName.equals("modelClass")) {
                        c = '\b';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m353a.mo226i(jsonReader.nextBoolean());
                    break;
                case 1:
                    m353a.mo230e(jsonReader.nextString());
                    break;
                case 2:
                    m353a.mo227h(jsonReader.nextLong());
                    break;
                case 3:
                    m353a.mo233b(jsonReader.nextInt());
                    break;
                case 4:
                    m353a.mo231d(jsonReader.nextLong());
                    break;
                case 5:
                    m353a.mo232c(jsonReader.nextInt());
                    break;
                case 6:
                    m353a.mo229f(jsonReader.nextString());
                    break;
                case 7:
                    m353a.mo225j(jsonReader.nextInt());
                    break;
                case '\b':
                    m353a.mo228g(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m353a.mo234a();
    }

    /* renamed from: n */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7779d m27649n(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7794b m352a = AbstractC7762a0.AbstractC7772e.AbstractC7779d.m352a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1335157162:
                    if (nextName.equals("device")) {
                        c = 0;
                        break;
                    }
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        c = 1;
                        break;
                    }
                    break;
                case 107332:
                    if (nextName.equals("log")) {
                        c = 2;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        c = 3;
                        break;
                    }
                    break;
                case 55126294:
                    if (nextName.equals("timestamp")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m352a.mo216c(m27646q(jsonReader));
                    break;
                case 1:
                    m352a.mo217b(m27648o(jsonReader));
                    break;
                case 2:
                    m352a.mo215d(m27642u(jsonReader));
                    break;
                case 3:
                    m352a.mo213f(jsonReader.nextString());
                    break;
                case 4:
                    m352a.mo214e(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m352a.mo218a();
    }

    /* renamed from: o */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a m27648o(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7781a m351a = AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.m351a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1332194002:
                    if (nextName.equals("background")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1090974952:
                    if (nextName.equals("execution")) {
                        c = 1;
                        break;
                    }
                    break;
                case -80231855:
                    if (nextName.equals("internalKeys")) {
                        c = 2;
                        break;
                    }
                    break;
                case 555169704:
                    if (nextName.equals("customAttributes")) {
                        c = 3;
                        break;
                    }
                    break;
                case 928737948:
                    if (nextName.equals("uiOrientation")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m351a.mo205b(Boolean.valueOf(jsonReader.nextBoolean()));
                    break;
                case 1:
                    m351a.mo203d(m27645r(jsonReader));
                    break;
                case 2:
                    m351a.mo202e(m27652k(jsonReader, new InterfaceC0119a() { // from class: a6.c
                        @Override // p007a6.C0118g.InterfaceC0119a
                        /* renamed from: a */
                        public final Object mo27636a(JsonReader jsonReader2) {
                            AbstractC7762a0.AbstractC7766c m27651l;
                            m27651l = C0118g.m27651l(jsonReader2);
                            return m27651l;
                        }
                    }));
                    break;
                case 3:
                    m351a.mo204c(m27652k(jsonReader, new InterfaceC0119a() { // from class: a6.c
                        @Override // p007a6.C0118g.InterfaceC0119a
                        /* renamed from: a */
                        public final Object mo27636a(JsonReader jsonReader2) {
                            AbstractC7762a0.AbstractC7766c m27651l;
                            m27651l = C0118g.m27651l(jsonReader2);
                            return m27651l;
                        }
                    }));
                    break;
                case 4:
                    m351a.mo201f(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m351a.mo206a();
    }

    /* renamed from: p */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a m27647p(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.AbstractC7784a m349a = AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a.m349a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case 3373707:
                    if (nextName.equals("name")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3530753:
                    if (nextName.equals("size")) {
                        c = 1;
                        break;
                    }
                    break;
                case 3601339:
                    if (nextName.equals("uuid")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1153765347:
                    if (nextName.equals("baseAddress")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m349a.mo183c(jsonReader.nextString());
                    break;
                case 1:
                    m349a.mo182d(jsonReader.nextLong());
                    break;
                case 2:
                    m349a.m347f(Base64.decode(jsonReader.nextString(), 2));
                    break;
                case 3:
                    m349a.mo184b(jsonReader.nextLong());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m349a.mo185a();
    }

    /* renamed from: q */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c m27646q(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.AbstractC7796a m342a = AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7795c.m342a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1708606089:
                    if (nextName.equals("batteryLevel")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1455558134:
                    if (nextName.equals("batteryVelocity")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1439500848:
                    if (nextName.equals("orientation")) {
                        c = 2;
                        break;
                    }
                    break;
                case 279795450:
                    if (nextName.equals("diskUsed")) {
                        c = 3;
                        break;
                    }
                    break;
                case 976541947:
                    if (nextName.equals("ramUsed")) {
                        c = 4;
                        break;
                    }
                    break;
                case 1516795582:
                    if (nextName.equals("proximityOn")) {
                        c = 5;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m342a.mo137b(Double.valueOf(jsonReader.nextDouble()));
                    break;
                case 1:
                    m342a.mo136c(jsonReader.nextInt());
                    break;
                case 2:
                    m342a.mo134e(jsonReader.nextInt());
                    break;
                case 3:
                    m342a.mo135d(jsonReader.nextLong());
                    break;
                case 4:
                    m342a.mo132g(jsonReader.nextLong());
                    break;
                case 5:
                    m342a.mo133f(jsonReader.nextBoolean());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m342a.mo138a();
    }

    /* renamed from: r */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b m27645r(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7785b m350a = AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.m350a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1375141843:
                    if (nextName.equals("appExitInfo")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1337936983:
                    if (nextName.equals("threads")) {
                        c = 1;
                        break;
                    }
                    break;
                case -902467928:
                    if (nextName.equals("signal")) {
                        c = 2;
                        break;
                    }
                    break;
                case 937615455:
                    if (nextName.equals("binaries")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1481625679:
                    if (nextName.equals("exception")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m350a.mo194b(m27653j(jsonReader));
                    break;
                case 1:
                    m350a.mo190f(m27652k(jsonReader, new InterfaceC0119a() { // from class: a6.d
                        @Override // p007a6.C0118g.InterfaceC0119a
                        /* renamed from: a */
                        public final Object mo27636a(JsonReader jsonReader2) {
                            AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e m27640w;
                            m27640w = C0118g.m27640w(jsonReader2);
                            return m27640w;
                        }
                    }));
                    break;
                case 2:
                    m350a.mo191e(m27641v(jsonReader));
                    break;
                case 3:
                    m350a.mo193c(m27652k(jsonReader, new InterfaceC0119a() { // from class: a6.e
                        @Override // p007a6.C0118g.InterfaceC0119a
                        /* renamed from: a */
                        public final Object mo27636a(JsonReader jsonReader2) {
                            AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7783a m27647p;
                            m27647p = C0118g.m27647p(jsonReader2);
                            return m27647p;
                        }
                    }));
                    break;
                case 4:
                    m350a.mo192d(m27644s(jsonReader));
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m350a.mo195a();
    }

    /* renamed from: s */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c m27644s(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.AbstractC7787a m346a = AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7786c.m346a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        c = 0;
                        break;
                    }
                    break;
                case -934964668:
                    if (nextName.equals("reason")) {
                        c = 1;
                        break;
                    }
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        c = 2;
                        break;
                    }
                    break;
                case 91997906:
                    if (nextName.equals("causedBy")) {
                        c = 3;
                        break;
                    }
                    break;
                case 581754413:
                    if (nextName.equals("overflowCount")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m346a.mo173c(m27652k(jsonReader, new C0117f()));
                    break;
                case 1:
                    m346a.mo171e(jsonReader.nextString());
                    break;
                case 2:
                    m346a.mo170f(jsonReader.nextString());
                    break;
                case 3:
                    m346a.mo174b(m27644s(jsonReader));
                    break;
                case 4:
                    m346a.mo172d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m346a.mo175a();
    }

    /* renamed from: t */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b m27643t(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.AbstractC7793a m343a = AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7792b.m343a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1019779949:
                    if (nextName.equals("offset")) {
                        c = 0;
                        break;
                    }
                    break;
                case -887523944:
                    if (nextName.equals("symbol")) {
                        c = 1;
                        break;
                    }
                    break;
                case 3571:
                    if (nextName.equals("pc")) {
                        c = 2;
                        break;
                    }
                    break;
                case 3143036:
                    if (nextName.equals("file")) {
                        c = 3;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m343a.mo147d(jsonReader.nextLong());
                    break;
                case 1:
                    m343a.mo145f(jsonReader.nextString());
                    break;
                case 2:
                    m343a.mo146e(jsonReader.nextLong());
                    break;
                case 3:
                    m343a.mo149b(jsonReader.nextString());
                    break;
                case 4:
                    m343a.mo148c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m343a.mo150a();
    }

    /* renamed from: u */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d m27642u(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d.AbstractC7798a m341a = AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7797d.m341a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("content")) {
                jsonReader.skipValue();
            } else {
                m341a.mo129b(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return m341a.mo130a();
    }

    /* renamed from: v */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d m27641v(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d.AbstractC7789a m345a = AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7788d.m345a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1147692044:
                    if (nextName.equals("address")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3059181:
                    if (nextName.equals("code")) {
                        c = 1;
                        break;
                    }
                    break;
                case 3373707:
                    if (nextName.equals("name")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m345a.mo165b(jsonReader.nextLong());
                    break;
                case 1:
                    m345a.mo164c(jsonReader.nextString());
                    break;
                case 2:
                    m345a.mo163d(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m345a.mo166a();
    }

    /* renamed from: w */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e m27640w(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.AbstractC7791a m344a = AbstractC7762a0.AbstractC7772e.AbstractC7779d.AbstractC7780a.AbstractC7782b.AbstractC7790e.m344a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1266514778:
                    if (nextName.equals("frames")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3373707:
                    if (nextName.equals("name")) {
                        c = 1;
                        break;
                    }
                    break;
                case 2125650548:
                    if (nextName.equals("importance")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m344a.mo158b(m27652k(jsonReader, new C0117f()));
                    break;
                case 1:
                    m344a.mo156d(jsonReader.nextString());
                    break;
                case 2:
                    m344a.mo157c(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m344a.mo159a();
    }

    /* renamed from: x */
    public static AbstractC7762a0.AbstractC7768d.AbstractC7770b m27639x(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7768d.AbstractC7770b.AbstractC7771a m360a = AbstractC7762a0.AbstractC7768d.AbstractC7770b.m360a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("filename")) {
                if (!nextName.equals("contents")) {
                    jsonReader.skipValue();
                } else {
                    m360a.mo284b(Base64.decode(jsonReader.nextString(), 2));
                }
            } else {
                m360a.mo283c(jsonReader.nextString());
            }
        }
        jsonReader.endObject();
        return m360a.mo285a();
    }

    /* renamed from: y */
    public static AbstractC7762a0.AbstractC7768d m27638y(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7768d.AbstractC7769a m361a = AbstractC7762a0.AbstractC7768d.m361a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("files")) {
                if (!nextName.equals("orgId")) {
                    jsonReader.skipValue();
                } else {
                    m361a.mo288c(jsonReader.nextString());
                }
            } else {
                m361a.mo289b(m27652k(jsonReader, new InterfaceC0119a() { // from class: a6.b
                    @Override // p007a6.C0118g.InterfaceC0119a
                    /* renamed from: a */
                    public final Object mo27636a(JsonReader jsonReader2) {
                        AbstractC7762a0.AbstractC7768d.AbstractC7770b m27639x;
                        m27639x = C0118g.m27639x(jsonReader2);
                        return m27639x;
                    }
                }));
            }
        }
        jsonReader.endObject();
        return m361a.mo290a();
    }

    /* renamed from: z */
    public static AbstractC7762a0.AbstractC7772e.AbstractC7799e m27637z(JsonReader jsonReader) {
        AbstractC7762a0.AbstractC7772e.AbstractC7799e.AbstractC7800a m340a = AbstractC7762a0.AbstractC7772e.AbstractC7799e.m340a();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -911706486:
                    if (nextName.equals("buildVersion")) {
                        c = 0;
                        break;
                    }
                    break;
                case -293026577:
                    if (nextName.equals("jailbroken")) {
                        c = 1;
                        break;
                    }
                    break;
                case 351608024:
                    if (nextName.equals("version")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1874684019:
                    if (nextName.equals("platform")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m340a.mo123b(jsonReader.nextString());
                    break;
                case 1:
                    m340a.mo122c(jsonReader.nextBoolean());
                    break;
                case 2:
                    m340a.mo120e(jsonReader.nextString());
                    break;
                case 3:
                    m340a.mo121d(jsonReader.nextInt());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return m340a.mo124a();
    }
}
