package p129n1;

import com.badlogic.gdx.net.HttpStatus;
import java.util.ArrayList;
import p015b2.C0431c;
import p015b2.C0432d;
import p015b2.C0438g;
import p218x1.AbstractC7204a;
import p218x1.C7214e0;
import p218x1.C7224l;
import p218x1.C7227o;
import p218x1.C7228p;
import p218x1.C7230r;
import p218x1.C7231s;
import p218x1.C7235w;
import p218x1.InterfaceC7206b;
import p226y1.C7402c;
/* renamed from: n1.i */
/* loaded from: classes.dex */
public final class C4702i {

    /* renamed from: c */
    public static final InterfaceC4705c f18862c = new C4703a();

    /* renamed from: a */
    public final C0432d f18863a;

    /* renamed from: b */
    public final InterfaceC7206b f18864b;

    /* renamed from: n1.i$a */
    /* loaded from: classes.dex */
    public static class C4703a implements InterfaceC4705c {

        /* renamed from: a */
        public int f18865a = -1;

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: a */
        public void mo13597a(int i, int i2, int i3, int i4, C7402c c7402c, int i5) {
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: b */
        public void mo13596b(int i, int i2, int i3, C7402c c7402c) {
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: c */
        public void mo13595c(int i, int i2, C7214e0 c7214e0, ArrayList<AbstractC7204a> arrayList) {
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: d */
        public int mo13594d() {
            return this.f18865a;
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: e */
        public void mo13593e(int i, int i2, int i3, int i4) {
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: f */
        public void mo13592f(int i) {
            this.f18865a = i;
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: g */
        public void mo13591g(int i, int i2, int i3, C4732y c4732y, int i4) {
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: h */
        public void mo13590h(int i, int i2, int i3) {
        }

        @Override // p129n1.C4702i.InterfaceC4705c
        /* renamed from: i */
        public void mo13589i(int i, int i2, int i3, AbstractC7204a abstractC7204a, int i4) {
        }
    }

    /* renamed from: n1.i$b */
    /* loaded from: classes.dex */
    public class C4704b extends C4703a {

        /* renamed from: b */
        public AbstractC7204a f18866b;

        /* renamed from: c */
        public int f18867c;

        /* renamed from: d */
        public int f18868d;

        public C4704b() {
        }

        @Override // p129n1.C4702i.C4703a, p129n1.C4702i.InterfaceC4705c
        /* renamed from: a */
        public void mo13597a(int i, int i2, int i3, int i4, C7402c c7402c, int i5) {
            m15707j();
        }

        @Override // p129n1.C4702i.C4703a, p129n1.C4702i.InterfaceC4705c
        /* renamed from: b */
        public void mo13596b(int i, int i2, int i3, C7402c c7402c) {
            m15707j();
        }

        @Override // p129n1.C4702i.C4703a, p129n1.C4702i.InterfaceC4705c
        /* renamed from: c */
        public void mo13595c(int i, int i2, C7214e0 c7214e0, ArrayList<AbstractC7204a> arrayList) {
            m15707j();
        }

        @Override // p129n1.C4702i.C4703a, p129n1.C4702i.InterfaceC4705c
        /* renamed from: d */
        public int mo13594d() {
            return -1;
        }

        @Override // p129n1.C4702i.C4703a, p129n1.C4702i.InterfaceC4705c
        /* renamed from: e */
        public void mo13593e(int i, int i2, int i3, int i4) {
            m15707j();
        }

        @Override // p129n1.C4702i.C4703a, p129n1.C4702i.InterfaceC4705c
        /* renamed from: f */
        public void mo13592f(int i) {
        }

        @Override // p129n1.C4702i.C4703a, p129n1.C4702i.InterfaceC4705c
        /* renamed from: g */
        public void mo13591g(int i, int i2, int i3, C4732y c4732y, int i4) {
            m15707j();
        }

        @Override // p129n1.C4702i.C4703a, p129n1.C4702i.InterfaceC4705c
        /* renamed from: h */
        public void mo13590h(int i, int i2, int i3) {
            m15707j();
        }

        /* renamed from: j */
        public final void m15707j() {
            this.f18867c = 0;
        }

        @Override // p129n1.C4702i.C4703a, p129n1.C4702i.InterfaceC4705c
        /* renamed from: i */
        public void mo13589i(int i, int i2, int i3, AbstractC7204a abstractC7204a, int i4) {
            this.f18866b = abstractC7204a;
            this.f18867c = i3;
            this.f18868d = i4;
        }
    }

    /* renamed from: n1.i$c */
    /* loaded from: classes.dex */
    public interface InterfaceC4705c {
        /* renamed from: a */
        void mo13597a(int i, int i2, int i3, int i4, C7402c c7402c, int i5);

        /* renamed from: b */
        void mo13596b(int i, int i2, int i3, C7402c c7402c);

        /* renamed from: c */
        void mo13595c(int i, int i2, C7214e0 c7214e0, ArrayList<AbstractC7204a> arrayList);

        /* renamed from: d */
        int mo13594d();

        /* renamed from: e */
        void mo13593e(int i, int i2, int i3, int i4);

        /* renamed from: f */
        void mo13592f(int i);

        /* renamed from: g */
        void mo13591g(int i, int i2, int i3, C4732y c4732y, int i4);

        /* renamed from: h */
        void mo13590h(int i, int i2, int i3);

        /* renamed from: i */
        void mo13589i(int i, int i2, int i3, AbstractC7204a abstractC7204a, int i4);
    }

    /* renamed from: a */
    public int m15717a() {
        return this.f18863a.m26506q() + 4;
    }

    /* renamed from: c */
    public C0432d m15715c() {
        return this.f18863a;
    }

    /* renamed from: j */
    public int m15708j() {
        return this.f18863a.m26506q();
    }

    /* renamed from: b */
    public void m15716b(InterfaceC4705c interfaceC4705c) {
        int m26506q = this.f18863a.m26506q();
        int i = 0;
        while (i < m26506q) {
            i += m15714d(i, interfaceC4705c);
        }
    }

    /* renamed from: d */
    public int m15714d(int i, InterfaceC4705c interfaceC4705c) {
        int i2;
        int i3;
        int i4;
        if (interfaceC4705c == null) {
            interfaceC4705c = f18862c;
        }
        InterfaceC4705c interfaceC4705c2 = interfaceC4705c;
        try {
            int m26511l = this.f18863a.m26511l(i);
            C4701h.m15719a(m26511l);
            switch (m26511l) {
                case 0:
                    interfaceC4705c2.mo13596b(m26511l, i, 1, C7402c.f37060B);
                    break;
                case 1:
                    interfaceC4705c2.mo13589i(18, i, 1, C7231s.f36613a, 0);
                    return 1;
                case 2:
                    interfaceC4705c2.mo13589i(18, i, 1, C7228p.f36599d, -1);
                    return 1;
                case 3:
                    interfaceC4705c2.mo13589i(18, i, 1, C7228p.f36600k, 0);
                    return 1;
                case 4:
                    interfaceC4705c2.mo13589i(18, i, 1, C7228p.f36601p, 1);
                    return 1;
                case 5:
                    interfaceC4705c2.mo13589i(18, i, 1, C7228p.f36602q, 2);
                    return 1;
                case 6:
                    interfaceC4705c2.mo13589i(18, i, 1, C7228p.f36603r, 3);
                    return 1;
                case 7:
                    interfaceC4705c2.mo13589i(18, i, 1, C7228p.f36604s, 4);
                    return 1;
                case 8:
                    interfaceC4705c2.mo13589i(18, i, 1, C7228p.f36605t, 5);
                    return 1;
                case 9:
                    interfaceC4705c2.mo13589i(18, i, 1, C7235w.f36616b, 0);
                    return 1;
                case 10:
                    interfaceC4705c2.mo13589i(18, i, 1, C7235w.f36617d, 0);
                    return 1;
                case 11:
                    interfaceC4705c2.mo13589i(18, i, 1, C7227o.f36595b, 0);
                    return 1;
                case 12:
                    interfaceC4705c2.mo13589i(18, i, 1, C7227o.f36596d, 0);
                    return 1;
                case 13:
                    interfaceC4705c2.mo13589i(18, i, 1, C7227o.f36597k, 0);
                    return 1;
                case 14:
                    interfaceC4705c2.mo13589i(18, i, 1, C7224l.f36592b, 0);
                    return 1;
                case 15:
                    interfaceC4705c2.mo13589i(18, i, 1, C7224l.f36593d, 0);
                    return 1;
                case 16:
                    int m26517f = this.f18863a.m26517f(i + 1);
                    interfaceC4705c2.mo13589i(18, i, 2, C7228p.m2074C(m26517f), m26517f);
                    return 2;
                case 17:
                    int m26512k = this.f18863a.m26512k(i + 1);
                    interfaceC4705c2.mo13589i(18, i, 3, C7228p.m2074C(m26512k), m26512k);
                    return 3;
                case 18:
                    AbstractC7204a abstractC7204a = this.f18864b.get(this.f18863a.m26511l(i + 1));
                    if (abstractC7204a instanceof C7228p) {
                        i2 = ((C7228p) abstractC7204a).m2075B();
                    } else {
                        i2 = 0;
                    }
                    interfaceC4705c2.mo13589i(18, i, 2, abstractC7204a, i2);
                    return 2;
                case 19:
                    AbstractC7204a abstractC7204a2 = this.f18864b.get(this.f18863a.m26509n(i + 1));
                    if (abstractC7204a2 instanceof C7228p) {
                        i3 = ((C7228p) abstractC7204a2).m2075B();
                    } else {
                        i3 = 0;
                    }
                    interfaceC4705c2.mo13589i(18, i, 3, abstractC7204a2, i3);
                    return 3;
                case 20:
                    interfaceC4705c2.mo13589i(20, i, 3, this.f18864b.get(this.f18863a.m26509n(i + 1)), 0);
                    return 3;
                case 21:
                    interfaceC4705c2.mo13597a(21, i, 2, this.f18863a.m26511l(i + 1), C7402c.f37097y, 0);
                    return 2;
                case 22:
                    interfaceC4705c2.mo13597a(21, i, 2, this.f18863a.m26511l(i + 1), C7402c.f37098z, 0);
                    return 2;
                case 23:
                    interfaceC4705c2.mo13597a(21, i, 2, this.f18863a.m26511l(i + 1), C7402c.f37096x, 0);
                    return 2;
                case 24:
                    interfaceC4705c2.mo13597a(21, i, 2, this.f18863a.m26511l(i + 1), C7402c.f37095w, 0);
                    return 2;
                case 25:
                    interfaceC4705c2.mo13597a(21, i, 2, this.f18863a.m26511l(i + 1), C7402c.f37069K, 0);
                    return 2;
                case 26:
                case 27:
                case 28:
                case 29:
                    interfaceC4705c2.mo13597a(21, i, 1, m26511l - 26, C7402c.f37097y, 0);
                    return 1;
                case 30:
                case 31:
                case 32:
                case 33:
                    interfaceC4705c2.mo13597a(21, i, 1, m26511l - 30, C7402c.f37098z, 0);
                    return 1;
                case 34:
                case 35:
                case 36:
                case 37:
                    interfaceC4705c2.mo13597a(21, i, 1, m26511l - 34, C7402c.f37096x, 0);
                    return 1;
                case 38:
                case 39:
                case 40:
                case 41:
                    interfaceC4705c2.mo13597a(21, i, 1, m26511l - 38, C7402c.f37095w, 0);
                    return 1;
                case 42:
                case 43:
                case 44:
                case 45:
                    interfaceC4705c2.mo13597a(21, i, 1, m26511l - 42, C7402c.f37069K, 0);
                    return 1;
                case 46:
                    interfaceC4705c2.mo13596b(46, i, 1, C7402c.f37097y);
                    return 1;
                case 47:
                    interfaceC4705c2.mo13596b(46, i, 1, C7402c.f37098z);
                    return 1;
                case 48:
                    interfaceC4705c2.mo13596b(46, i, 1, C7402c.f37096x);
                    return 1;
                case 49:
                    interfaceC4705c2.mo13596b(46, i, 1, C7402c.f37095w);
                    return 1;
                case 50:
                    interfaceC4705c2.mo13596b(46, i, 1, C7402c.f37069K);
                    return 1;
                case 51:
                    interfaceC4705c2.mo13596b(46, i, 1, C7402c.f37093u);
                    return 1;
                case 52:
                    interfaceC4705c2.mo13596b(46, i, 1, C7402c.f37094v);
                    return 1;
                case 53:
                    interfaceC4705c2.mo13596b(46, i, 1, C7402c.f37059A);
                    return 1;
                case 54:
                    interfaceC4705c2.mo13597a(54, i, 2, this.f18863a.m26511l(i + 1), C7402c.f37097y, 0);
                    return 2;
                case 55:
                    interfaceC4705c2.mo13597a(54, i, 2, this.f18863a.m26511l(i + 1), C7402c.f37098z, 0);
                    return 2;
                case 56:
                    interfaceC4705c2.mo13597a(54, i, 2, this.f18863a.m26511l(i + 1), C7402c.f37096x, 0);
                    return 2;
                case 57:
                    interfaceC4705c2.mo13597a(54, i, 2, this.f18863a.m26511l(i + 1), C7402c.f37095w, 0);
                    return 2;
                case 58:
                    interfaceC4705c2.mo13597a(54, i, 2, this.f18863a.m26511l(i + 1), C7402c.f37069K, 0);
                    return 2;
                case 59:
                case 60:
                case 61:
                case 62:
                    interfaceC4705c2.mo13597a(54, i, 1, m26511l - 59, C7402c.f37097y, 0);
                    return 1;
                case 63:
                case 64:
                case 65:
                case 66:
                    interfaceC4705c2.mo13597a(54, i, 1, m26511l - 63, C7402c.f37098z, 0);
                    return 1;
                case 67:
                case 68:
                case 69:
                case 70:
                    interfaceC4705c2.mo13597a(54, i, 1, m26511l - 67, C7402c.f37096x, 0);
                    return 1;
                case 71:
                case 72:
                case 73:
                case 74:
                    interfaceC4705c2.mo13597a(54, i, 1, m26511l - 71, C7402c.f37095w, 0);
                    return 1;
                case 75:
                case 76:
                case 77:
                case 78:
                    interfaceC4705c2.mo13597a(54, i, 1, m26511l - 75, C7402c.f37069K, 0);
                    return 1;
                case 79:
                    interfaceC4705c2.mo13596b(79, i, 1, C7402c.f37097y);
                    return 1;
                case 80:
                    interfaceC4705c2.mo13596b(79, i, 1, C7402c.f37098z);
                    return 1;
                case 81:
                    interfaceC4705c2.mo13596b(79, i, 1, C7402c.f37096x);
                    return 1;
                case 82:
                    interfaceC4705c2.mo13596b(79, i, 1, C7402c.f37095w);
                    return 1;
                case 83:
                    interfaceC4705c2.mo13596b(79, i, 1, C7402c.f37069K);
                    return 1;
                case 84:
                    interfaceC4705c2.mo13596b(79, i, 1, C7402c.f37093u);
                    return 1;
                case 85:
                    interfaceC4705c2.mo13596b(79, i, 1, C7402c.f37094v);
                    return 1;
                case 86:
                    interfaceC4705c2.mo13596b(79, i, 1, C7402c.f37059A);
                    return 1;
                case 87:
                case 88:
                case 89:
                case 90:
                case 91:
                case 92:
                case 93:
                case 94:
                case 95:
                    interfaceC4705c2.mo13596b(m26511l, i, 1, C7402c.f37060B);
                    return 1;
                case 96:
                case 100:
                case 104:
                case 108:
                case 112:
                case 116:
                case 120:
                case 122:
                case 124:
                case 126:
                case 128:
                case 130:
                    interfaceC4705c2.mo13596b(m26511l, i, 1, C7402c.f37097y);
                    return 1;
                case 97:
                case 101:
                case 105:
                case 109:
                case 113:
                case 117:
                case 121:
                case 123:
                case 125:
                case 127:
                case 129:
                case 131:
                    interfaceC4705c2.mo13596b(m26511l - 1, i, 1, C7402c.f37098z);
                    return 1;
                case 98:
                case 102:
                case 106:
                case 110:
                case 114:
                case 118:
                    interfaceC4705c2.mo13596b(m26511l - 2, i, 1, C7402c.f37096x);
                    return 1;
                case 99:
                case 103:
                case 107:
                case 111:
                case 115:
                case 119:
                    interfaceC4705c2.mo13596b(m26511l - 3, i, 1, C7402c.f37095w);
                    return 1;
                case 132:
                    interfaceC4705c2.mo13597a(m26511l, i, 3, this.f18863a.m26511l(i + 1), C7402c.f37097y, this.f18863a.m26517f(i + 2));
                    return 3;
                case 133:
                case 140:
                case 143:
                    interfaceC4705c2.mo13596b(m26511l, i, 1, C7402c.f37098z);
                    return 1;
                case 134:
                case 137:
                case 144:
                    interfaceC4705c2.mo13596b(m26511l, i, 1, C7402c.f37096x);
                    return 1;
                case 135:
                case 138:
                case 141:
                    interfaceC4705c2.mo13596b(m26511l, i, 1, C7402c.f37095w);
                    return 1;
                case 136:
                case 139:
                case 142:
                case 145:
                case 146:
                case 147:
                case 148:
                case 149:
                case 150:
                case 151:
                case 152:
                case 190:
                    interfaceC4705c2.mo13596b(m26511l, i, 1, C7402c.f37097y);
                    return 1;
                case 153:
                case 154:
                case 155:
                case 156:
                case 157:
                case 158:
                case 159:
                case 160:
                case 161:
                case 162:
                case 163:
                case 164:
                case 165:
                case 166:
                case 167:
                case 168:
                case 198:
                case 199:
                    interfaceC4705c2.mo13593e(m26511l, i, 3, this.f18863a.m26512k(i + 1) + i);
                    return 3;
                case 169:
                    interfaceC4705c2.mo13597a(m26511l, i, 2, this.f18863a.m26511l(i + 1), C7402c.f37062D, 0);
                    return 2;
                case 170:
                    return m15711g(i, interfaceC4705c2);
                case 171:
                    return m15713e(i, interfaceC4705c2);
                case 172:
                    interfaceC4705c2.mo13596b(172, i, 1, C7402c.f37097y);
                    return 1;
                case 173:
                    interfaceC4705c2.mo13596b(172, i, 1, C7402c.f37098z);
                    return 1;
                case 174:
                    interfaceC4705c2.mo13596b(172, i, 1, C7402c.f37096x);
                    return 1;
                case 175:
                    interfaceC4705c2.mo13596b(172, i, 1, C7402c.f37095w);
                    return 1;
                case 176:
                    interfaceC4705c2.mo13596b(172, i, 1, C7402c.f37069K);
                    return 1;
                case 177:
                case 191:
                case 194:
                case 195:
                    interfaceC4705c2.mo13596b(m26511l, i, 1, C7402c.f37060B);
                    return 1;
                case 178:
                case 179:
                case 180:
                case 181:
                case 182:
                case 183:
                case 184:
                case 187:
                case 189:
                case 192:
                case 193:
                    interfaceC4705c2.mo13589i(m26511l, i, 3, this.f18864b.get(this.f18863a.m26509n(i + 1)), 0);
                    return 3;
                case 185:
                    interfaceC4705c2.mo13589i(m26511l, i, 5, this.f18864b.get(this.f18863a.m26509n(i + 1)), this.f18863a.m26511l(i + 3) | (this.f18863a.m26511l(i + 4) << 8));
                    return 5;
                case 186:
                    interfaceC4705c2.mo13589i(m26511l, i, 5, (C7230r) this.f18864b.get(this.f18863a.m26509n(i + 1)), 0);
                    return 5;
                case 188:
                    return m15712f(i, interfaceC4705c2);
                case 196:
                    return m15710h(i, interfaceC4705c2);
                case 197:
                    int m26509n = this.f18863a.m26509n(i + 1);
                    interfaceC4705c2.mo13589i(m26511l, i, 4, this.f18864b.get(m26509n), this.f18863a.m26511l(i + 3));
                    return 4;
                case HttpStatus.SC_OK /* 200 */:
                case HttpStatus.SC_CREATED /* 201 */:
                    int m26514i = this.f18863a.m26514i(i + 1) + i;
                    if (m26511l == 200) {
                        i4 = 167;
                    } else {
                        i4 = 168;
                    }
                    interfaceC4705c2.mo13593e(i4, i, 5, m26514i);
                    return 5;
                default:
                    interfaceC4705c2.mo13590h(m26511l, i, 1);
                    break;
            }
            return 1;
        } catch (C4729w e) {
            e.m16013a("...at bytecode offset " + C0438g.m26475j(i));
            throw e;
        } catch (RuntimeException e2) {
            C4729w c4729w = new C4729w(e2);
            c4729w.m16013a("...at bytecode offset " + C0438g.m26475j(i));
            throw c4729w;
        }
    }

    /* renamed from: e */
    public final int m15713e(int i, InterfaceC4705c interfaceC4705c) {
        int i2 = (i + 4) & (-4);
        int i3 = 0;
        for (int i4 = i + 1; i4 < i2; i4++) {
            i3 = (i3 << 8) | this.f18863a.m26511l(i4);
        }
        int m26514i = this.f18863a.m26514i(i2) + i;
        int m26514i2 = this.f18863a.m26514i(i2 + 4);
        int i5 = i2 + 8;
        C4732y c4732y = new C4732y(m26514i2);
        for (int i6 = 0; i6 < m26514i2; i6++) {
            i5 += 8;
            c4732y.m15504x(this.f18863a.m26514i(i5), this.f18863a.m26514i(i5 + 4) + i);
        }
        c4732y.m15505F(m26514i);
        c4732y.m15506E();
        c4732y.setImmutable();
        int i7 = i5 - i;
        interfaceC4705c.mo13591g(171, i, i7, c4732y, i3);
        return i7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a7, code lost:
        if (r8 != 80) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ac, code lost:
        if (r8 != 79) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b1, code lost:
        if (r8 != 86) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b6, code lost:
        if (r8 != 82) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00bb, code lost:
        if (r8 != 81) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00c0, code lost:
        if (r8 != 85) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00c5, code lost:
        if (r8 != 84) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c8, code lost:
        r9 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0064  */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m15712f(int r13, p129n1.C4702i.InterfaceC4705c r14) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p129n1.C4702i.m15712f(int, n1.i$c):int");
    }

    /* renamed from: g */
    public final int m15711g(int i, InterfaceC4705c interfaceC4705c) {
        int i2 = (i + 4) & (-4);
        int i3 = 0;
        for (int i4 = i + 1; i4 < i2; i4++) {
            i3 = (i3 << 8) | this.f18863a.m26511l(i4);
        }
        int m26514i = this.f18863a.m26514i(i2) + i;
        int m26514i2 = this.f18863a.m26514i(i2 + 4);
        int m26514i3 = this.f18863a.m26514i(i2 + 8);
        int i5 = (m26514i3 - m26514i2) + 1;
        int i6 = i2 + 12;
        if (m26514i2 <= m26514i3) {
            C4732y c4732y = new C4732y(i5);
            for (int i7 = 0; i7 < i5; i7++) {
                i6 += 4;
                c4732y.m15504x(m26514i2 + i7, this.f18863a.m26514i(i6) + i);
            }
            c4732y.m15505F(m26514i);
            c4732y.m15506E();
            c4732y.setImmutable();
            int i8 = i6 - i;
            interfaceC4705c.mo13591g(171, i, i8, c4732y, i3);
            return i8;
        }
        throw new C4729w("low / high inversion");
    }

    /* renamed from: h */
    public final int m15710h(int i, InterfaceC4705c interfaceC4705c) {
        int m26511l = this.f18863a.m26511l(i + 1);
        int m26509n = this.f18863a.m26509n(i + 2);
        if (m26511l != 132) {
            if (m26511l != 169) {
                switch (m26511l) {
                    case 21:
                        interfaceC4705c.mo13597a(21, i, 4, m26509n, C7402c.f37097y, 0);
                        return 4;
                    case 22:
                        interfaceC4705c.mo13597a(21, i, 4, m26509n, C7402c.f37098z, 0);
                        return 4;
                    case 23:
                        interfaceC4705c.mo13597a(21, i, 4, m26509n, C7402c.f37096x, 0);
                        return 4;
                    case 24:
                        interfaceC4705c.mo13597a(21, i, 4, m26509n, C7402c.f37095w, 0);
                        return 4;
                    case 25:
                        interfaceC4705c.mo13597a(21, i, 4, m26509n, C7402c.f37069K, 0);
                        return 4;
                    default:
                        switch (m26511l) {
                            case 54:
                                interfaceC4705c.mo13597a(54, i, 4, m26509n, C7402c.f37097y, 0);
                                return 4;
                            case 55:
                                interfaceC4705c.mo13597a(54, i, 4, m26509n, C7402c.f37098z, 0);
                                return 4;
                            case 56:
                                interfaceC4705c.mo13597a(54, i, 4, m26509n, C7402c.f37096x, 0);
                                return 4;
                            case 57:
                                interfaceC4705c.mo13597a(54, i, 4, m26509n, C7402c.f37095w, 0);
                                return 4;
                            case 58:
                                interfaceC4705c.mo13597a(54, i, 4, m26509n, C7402c.f37069K, 0);
                                return 4;
                            default:
                                interfaceC4705c.mo13590h(196, i, 1);
                                return 1;
                        }
                }
            }
            interfaceC4705c.mo13597a(m26511l, i, 4, m26509n, C7402c.f37062D, 0);
            return 4;
        }
        interfaceC4705c.mo13597a(m26511l, i, 6, m26509n, C7402c.f37097y, this.f18863a.m26512k(i + 4));
        return 6;
    }

    /* renamed from: i */
    public void m15709i(int[] iArr, InterfaceC4705c interfaceC4705c) {
        if (interfaceC4705c == null) {
            throw new NullPointerException("visitor == null");
        }
        while (true) {
            int m26530e = C0431c.m26530e(iArr, 0);
            if (m26530e < 0) {
                return;
            }
            C0431c.m26532c(iArr, m26530e);
            m15714d(m26530e, interfaceC4705c);
            interfaceC4705c.mo13592f(m26530e);
        }
    }

    public C4702i(C0432d c0432d, InterfaceC7206b interfaceC7206b) {
        if (c0432d != null) {
            if (interfaceC7206b != null) {
                this.f18863a = c0432d;
                this.f18864b = interfaceC7206b;
                return;
            }
            throw new NullPointerException("pool == null");
        }
        throw new NullPointerException("bytes == null");
    }
}
