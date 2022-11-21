package p070g5;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPOutputStream;
import p018b5.C0572b;
import p018b5.C0578b5;
import p018b5.C0595c5;
import p018b5.C0610d3;
import p018b5.C0612d5;
import p018b5.C0644f3;
import p018b5.C0645f4;
import p018b5.C0679h4;
import p018b5.C0696i4;
import p018b5.C0713j4;
import p018b5.C0729k3;
import p018b5.C0734k8;
import p018b5.C0763m3;
import p018b5.C0764m4;
import p018b5.C0781n4;
import p018b5.C0848r3;
import p018b5.C0849r4;
import p018b5.C0866s4;
import p018b5.C0883t4;
import p018b5.C0985z4;
import p018b5.InterfaceC0617da;
import p220x3.C7297q;
import p228y3.C7409b;
/* renamed from: g5.da */
/* loaded from: classes2.dex */
public final class C3640da extends AbstractC3807r9 {
    public C3640da(C3616ba c3616ba) {
        super(c3616ba);
    }

    /* renamed from: n */
    public static final void m18401n(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    /* renamed from: s */
    public static int m18396s(C0866s4 c0866s4, String str) {
        for (int i = 0; i < c0866s4.m25272s0(); i++) {
            if (str.equals(c0866s4.m25278m0(i).m26056x())) {
                return i;
            }
        }
        return -1;
    }

    @Override // p070g5.AbstractC3807r9
    /* renamed from: g */
    public final boolean mo17810g() {
        return false;
    }

    /* renamed from: v */
    public final <T extends Parcelable> T m18393v(byte[] bArr, Parcelable.Creator<T> creator) {
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            return creator.createFromParcel(obtain);
        } catch (C7409b.C7410a unused) {
            this.f17008a.mo17858F().m18018m().m18042a("Failed to load parcelable from buffer");
            return null;
        } finally {
            obtain.recycle();
        }
    }

    /* renamed from: C */
    public static List<C0781n4> m18417C(Bundle[] bundleArr) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : bundleArr) {
            if (bundle != null) {
                C0764m4 m25581w = C0781n4.m25581w();
                for (String str : bundle.keySet()) {
                    C0764m4 m25581w2 = C0781n4.m25581w();
                    m25581w2.m25665E(str);
                    Object obj = bundle.get(str);
                    if (obj instanceof Long) {
                        m25581w2.m25666D(((Long) obj).longValue());
                    } else if (obj instanceof String) {
                        m25581w2.m25664F((String) obj);
                    } else if (obj instanceof Double) {
                        m25581w2.m25667C(((Double) obj).doubleValue());
                    }
                    m25581w.m25661v(m25581w2);
                }
                if (m25581w.m25663t() > 0) {
                    arrayList.add(m25581w.m25101i());
                }
            }
        }
        return arrayList;
    }

    /* renamed from: M */
    public static boolean m18409M(String str) {
        if (str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310) {
            return true;
        }
        return false;
    }

    /* renamed from: o */
    public static final String m18400o(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    /* renamed from: p */
    public static final void m18399p(StringBuilder sb, int i, String str, C0985z4 c0985z4) {
        Integer num;
        Integer num2;
        Long l;
        if (c0985z4 == null) {
            return;
        }
        m18401n(sb, 3);
        sb.append(str);
        sb.append(" {\n");
        if (c0985z4.m24875t() != 0) {
            m18401n(sb, 4);
            sb.append("results: ");
            int i2 = 0;
            for (Long l2 : c0985z4.m24890D()) {
                int i3 = i2 + 1;
                if (i2 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i2 = i3;
            }
            sb.append('\n');
        }
        if (c0985z4.m24873v() != 0) {
            m18401n(sb, 4);
            sb.append("status: ");
            int i4 = 0;
            for (Long l3 : c0985z4.m24888F()) {
                int i5 = i4 + 1;
                if (i4 != 0) {
                    sb.append(", ");
                }
                sb.append(l3);
                i4 = i5;
            }
            sb.append('\n');
        }
        if (c0985z4.m24876s() != 0) {
            m18401n(sb, 4);
            sb.append("dynamic_filter_timestamps: {");
            int i6 = 0;
            for (C0679h4 c0679h4 : c0985z4.m24891C()) {
                int i7 = i6 + 1;
                if (i6 != 0) {
                    sb.append(", ");
                }
                if (c0679h4.m25878A()) {
                    num2 = Integer.valueOf(c0679h4.m25877s());
                } else {
                    num2 = null;
                }
                sb.append(num2);
                sb.append(":");
                if (c0679h4.m25871z()) {
                    l = Long.valueOf(c0679h4.m25876t());
                } else {
                    l = null;
                }
                sb.append(l);
                i6 = i7;
            }
            sb.append("}\n");
        }
        if (c0985z4.m24874u() != 0) {
            m18401n(sb, 4);
            sb.append("sequence_filter_timestamps: {");
            int i8 = 0;
            for (C0578b5 c0578b5 : c0985z4.m24889E()) {
                int i9 = i8 + 1;
                if (i8 != 0) {
                    sb.append(", ");
                }
                if (c0578b5.m26138B()) {
                    num = Integer.valueOf(c0578b5.m26136t());
                } else {
                    num = null;
                }
                sb.append(num);
                sb.append(": [");
                int i10 = 0;
                for (Long l4 : c0578b5.m26132x()) {
                    long longValue = l4.longValue();
                    int i11 = i10 + 1;
                    if (i10 != 0) {
                        sb.append(", ");
                    }
                    sb.append(longValue);
                    i10 = i11;
                }
                sb.append("]");
                i8 = i9;
            }
            sb.append("}\n");
        }
        m18401n(sb, 3);
        sb.append("}\n");
    }

    /* renamed from: q */
    public static final void m18398q(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        m18401n(sb, i + 1);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    /* renamed from: r */
    public static final void m18397r(StringBuilder sb, int i, String str, C0729k3 c0729k3) {
        String str2;
        if (c0729k3 == null) {
            return;
        }
        m18401n(sb, i);
        sb.append(str);
        sb.append(" {\n");
        if (c0729k3.m25710z()) {
            int m25717E = c0729k3.m25717E();
            if (m25717E != 1) {
                if (m25717E != 2) {
                    if (m25717E != 3) {
                        if (m25717E != 4) {
                            str2 = "BETWEEN";
                        } else {
                            str2 = "EQUAL";
                        }
                    } else {
                        str2 = "GREATER_THAN";
                    }
                } else {
                    str2 = "LESS_THAN";
                }
            } else {
                str2 = "UNKNOWN_COMPARISON_TYPE";
            }
            m18398q(sb, i, "comparison_type", str2);
        }
        if (c0729k3.m25720B()) {
            m18398q(sb, i, "match_as_float", Boolean.valueOf(c0729k3.m25711x()));
        }
        if (c0729k3.m25721A()) {
            m18398q(sb, i, "comparison_value", c0729k3.m25714u());
        }
        if (c0729k3.m25718D()) {
            m18398q(sb, i, "min_comparison_value", c0729k3.m25712w());
        }
        if (c0729k3.m25719C()) {
            m18398q(sb, i, "max_comparison_value", c0729k3.m25713v());
        }
        m18401n(sb, i);
        sb.append("}\n");
    }

    /* renamed from: A */
    public final String m18419A(C0610d3 c0610d3) {
        if (c0610d3 == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        if (c0610d3.m26083H()) {
            m18398q(sb, 0, "filter_id", Integer.valueOf(c0610d3.m26080t()));
        }
        m18398q(sb, 0, "event_name", this.f17008a.m18509y().m18073d(c0610d3.m26075z()));
        String m18400o = m18400o(c0610d3.m26087D(), c0610d3.m26086E(), c0610d3.m26085F());
        if (!m18400o.isEmpty()) {
            m18398q(sb, 0, "filter_type", m18400o);
        }
        if (c0610d3.m26084G()) {
            m18397r(sb, 1, "event_count_filter", c0610d3.m26076x());
        }
        if (c0610d3.m26081s() > 0) {
            sb.append("  filters {\n");
            for (C0644f3 c0644f3 : c0610d3.m26090A()) {
                m18402m(sb, 2, c0644f3);
            }
        }
        m18401n(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    /* renamed from: B */
    public final String m18418B(C0763m3 c0763m3) {
        if (c0763m3 == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        if (c0763m3.m25678C()) {
            m18398q(sb, 0, "filter_id", Integer.valueOf(c0763m3.m25676s()));
        }
        m18398q(sb, 0, "property_name", this.f17008a.m18509y().m18071f(c0763m3.m25672w()));
        String m18400o = m18400o(c0763m3.m25670z(), c0763m3.m25680A(), c0763m3.m25679B());
        if (!m18400o.isEmpty()) {
            m18398q(sb, 0, "filter_type", m18400o);
        }
        m18402m(sb, 1, c0763m3.m25675t());
        sb.append("}\n");
        return sb.toString();
    }

    /* renamed from: D */
    public final List<Long> m18416D(List<Long> list, List<Integer> list2) {
        int i;
        ArrayList arrayList = new ArrayList(list);
        for (Integer num : list2) {
            if (num.intValue() < 0) {
                this.f17008a.mo17858F().m18013r().m18041b("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    this.f17008a.mo17858F().m18013r().m18040c("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & ((1 << (num.intValue() % 64)) ^ (-1))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i2 = size2;
            i = size;
            size = i2;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
        r4 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
        if ((r3 instanceof android.os.Parcelable[]) == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
        r3 = (android.os.Parcelable[]) r3;
        r5 = r3.length;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
        if (r7 >= r5) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0042, code lost:
        r8 = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
        if ((r8 instanceof android.os.Bundle) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0048, code lost:
        r4.add(m18414H((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0051, code lost:
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
        if ((r3 instanceof java.util.ArrayList) == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
        r3 = (java.util.ArrayList) r3;
        r5 = r3.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005f, code lost:
        if (r7 >= r5) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
        r8 = r3.get(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0067, code lost:
        if ((r8 instanceof android.os.Bundle) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0069, code lost:
        r4.add(m18414H((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0072, code lost:
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0077, code lost:
        if ((r3 instanceof android.os.Bundle) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0079, code lost:
        r4.add(m18414H((android.os.Bundle) r3, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0082, code lost:
        r0.put(r2, r4);
     */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, java.lang.Object> m18414H(android.os.Bundle r11, boolean r12) {
        /*
            r10 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.Set r1 = r11.keySet()
            java.util.Iterator r1 = r1.iterator()
        Ld:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L86
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r3 = r11.get(r2)
            boolean r4 = r3 instanceof android.os.Bundle[]
            if (r4 != 0) goto L30
            boolean r4 = r3 instanceof java.util.ArrayList
            if (r4 != 0) goto L30
            boolean r4 = r3 instanceof android.os.Bundle
            if (r4 == 0) goto L2a
            goto L30
        L2a:
            if (r3 == 0) goto Ld
            r0.put(r2, r3)
            goto Ld
        L30:
            if (r12 == 0) goto Ld
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            boolean r5 = r3 instanceof android.os.Parcelable[]
            r6 = 0
            if (r5 == 0) goto L54
            android.os.Parcelable[] r3 = (android.os.Parcelable[]) r3
            int r5 = r3.length
            r7 = 0
        L40:
            if (r7 >= r5) goto L82
            r8 = r3[r7]
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L51
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.Map r8 = r10.m18414H(r8, r6)
            r4.add(r8)
        L51:
            int r7 = r7 + 1
            goto L40
        L54:
            boolean r5 = r3 instanceof java.util.ArrayList
            if (r5 == 0) goto L75
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r5 = r3.size()
            r7 = 0
        L5f:
            if (r7 >= r5) goto L82
            java.lang.Object r8 = r3.get(r7)
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L72
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.Map r8 = r10.m18414H(r8, r6)
            r4.add(r8)
        L72:
            int r7 = r7 + 1
            goto L5f
        L75:
            boolean r5 = r3 instanceof android.os.Bundle
            if (r5 == 0) goto L82
            android.os.Bundle r3 = (android.os.Bundle) r3
            java.util.Map r3 = r10.m18414H(r3, r6)
            r4.add(r3)
        L82:
            r0.put(r2, r4)
            goto Ld
        L86:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p070g5.C3640da.m18414H(android.os.Bundle, boolean):java.util.Map");
    }

    /* renamed from: L */
    public final boolean m18410L(long j, long j2) {
        if (j != 0 && j2 > 0 && Math.abs(this.f17008a.mo17854Q().mo24763a() - j) <= j2) {
            return false;
        }
        return true;
    }

    /* renamed from: N */
    public final byte[] m18408N(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            this.f17008a.mo17858F().m18018m().m18041b("Failed to gzip content", e);
            throw e;
        }
    }

    /* renamed from: l */
    public final void m18403l(StringBuilder sb, int i, List<C0781n4> list) {
        String str;
        String str2;
        Long l;
        if (list == null) {
            return;
        }
        int i2 = i + 1;
        for (C0781n4 c0781n4 : list) {
            if (c0781n4 != null) {
                m18401n(sb, i2);
                sb.append("param {\n");
                Double d = null;
                if (c0781n4.m25588R()) {
                    str = this.f17008a.m18509y().m18072e(c0781n4.m25579z());
                } else {
                    str = null;
                }
                m18398q(sb, i2, "name", str);
                if (c0781n4.m25587S()) {
                    str2 = c0781n4.m25603A();
                } else {
                    str2 = null;
                }
                m18398q(sb, i2, "string_value", str2);
                if (c0781n4.m25589Q()) {
                    l = Long.valueOf(c0781n4.m25582v());
                } else {
                    l = null;
                }
                m18398q(sb, i2, "int_value", l);
                if (c0781n4.m25591O()) {
                    d = Double.valueOf(c0781n4.m25585s());
                }
                m18398q(sb, i2, "double_value", d);
                if (c0781n4.m25583u() > 0) {
                    m18403l(sb, i2, c0781n4.m25602B());
                }
                m18401n(sb, i2);
                sb.append("}\n");
            }
        }
    }

    /* renamed from: m */
    public final void m18402m(StringBuilder sb, int i, C0644f3 c0644f3) {
        String str;
        if (c0644f3 == null) {
            return;
        }
        m18401n(sb, i);
        sb.append("filter {\n");
        if (c0644f3.m26008A()) {
            m18398q(sb, i, "complement", Boolean.valueOf(c0644f3.m25998z()));
        }
        if (c0644f3.m26006C()) {
            m18398q(sb, i, "param_name", this.f17008a.m18509y().m18072e(c0644f3.m26000w()));
        }
        if (c0644f3.m26005D()) {
            int i2 = i + 1;
            C0848r3 m26001v = c0644f3.m26001v();
            if (m26001v != null) {
                m18401n(sb, i2);
                sb.append("string_filter {\n");
                if (m26001v.m25448B()) {
                    switch (m26001v.m25447C()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    m18398q(sb, i2, "match_type", str);
                }
                if (m26001v.m25449A()) {
                    m18398q(sb, i2, "expression", m26001v.m25443v());
                }
                if (m26001v.m25440z()) {
                    m18398q(sb, i2, "case_sensitive", Boolean.valueOf(m26001v.m25441x()));
                }
                if (m26001v.m25446s() > 0) {
                    m18401n(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String str2 : m26001v.m25442w()) {
                        m18401n(sb, i2 + 2);
                        sb.append(str2);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                m18401n(sb, i2);
                sb.append("}\n");
            }
        }
        if (c0644f3.m26007B()) {
            m18397r(sb, i + 1, "number_filter", c0644f3.m26002u());
        }
        m18401n(sb, i);
        sb.append("}\n");
    }

    /* renamed from: u */
    public final Bundle m18394u(Map<String, Object> map, boolean z) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (obj instanceof ArrayList) {
                if (z) {
                    ArrayList arrayList = (ArrayList) obj;
                    ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>();
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        arrayList2.add(m18394u((Map) arrayList.get(i), false));
                    }
                    bundle.putParcelableArrayList(str, arrayList2);
                }
            } else {
                bundle.putString(str, obj.toString());
            }
        }
        return bundle;
    }

    /* renamed from: z */
    public final String m18389z(C0849r4 c0849r4) {
        Long l;
        Long l2;
        Double d;
        if (c0849r4 == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        for (C0883t4 c0883t4 : c0849r4.m25436v()) {
            if (c0883t4 != null) {
                m18401n(sb, 1);
                sb.append("bundle {\n");
                if (c0883t4.m25148l1()) {
                    m18398q(sb, 1, "protocol_version", Integer.valueOf(c0883t4.m25131t1()));
                }
                m18398q(sb, 1, "platform", c0883t4.m25226D());
                if (c0883t4.m25155h1()) {
                    m18398q(sb, 1, "gmp_version", Long.valueOf(c0883t4.m25227C1()));
                }
                if (c0883t4.m25136r1()) {
                    m18398q(sb, 1, "uploading_gmp_version", Long.valueOf(c0883t4.m25212H1()));
                }
                if (c0883t4.m25159f1()) {
                    m18398q(sb, 1, "dynamite_version", Long.valueOf(c0883t4.m25233A1()));
                }
                if (c0883t4.m25118z0()) {
                    m18398q(sb, 1, "config_version", Long.valueOf(c0883t4.m25120y1()));
                }
                m18398q(sb, 1, "gmp_app_id", c0883t4.m25235A());
                m18398q(sb, 1, "admob_app_id", c0883t4.m25198M1());
                m18398q(sb, 1, "app_id", c0883t4.m25196N1());
                m18398q(sb, 1, "app_version", c0883t4.m25132t());
                if (c0883t4.m25123x0()) {
                    m18398q(sb, 1, "app_version_major", Integer.valueOf(c0883t4.m25180V()));
                }
                m18398q(sb, 1, "firebase_instance_id", c0883t4.m25124x());
                if (c0883t4.m25161e1()) {
                    m18398q(sb, 1, "dev_cert_hash", Long.valueOf(c0883t4.m25117z1()));
                }
                m18398q(sb, 1, "app_store", c0883t4.m25135s());
                if (c0883t4.m25138q1()) {
                    m18398q(sb, 1, "upload_timestamp_millis", Long.valueOf(c0883t4.m25215G1()));
                }
                if (c0883t4.m25142o1()) {
                    m18398q(sb, 1, "start_timestamp_millis", Long.valueOf(c0883t4.m25218F1()));
                }
                if (c0883t4.m25157g1()) {
                    m18398q(sb, 1, "end_timestamp_millis", Long.valueOf(c0883t4.m25230B1()));
                }
                if (c0883t4.m25150k1()) {
                    m18398q(sb, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(c0883t4.m25221E1()));
                }
                if (c0883t4.m25152j1()) {
                    m18398q(sb, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(c0883t4.m25224D1()));
                }
                m18398q(sb, 1, "app_instance_id", c0883t4.m25193O1());
                m18398q(sb, 1, "resettable_device_id", c0883t4.m25223E());
                m18398q(sb, 1, "ds_id", c0883t4.m25126w());
                if (c0883t4.m25153i1()) {
                    m18398q(sb, 1, "limited_ad_tracking", Boolean.valueOf(c0883t4.m25139q0()));
                }
                m18398q(sb, 1, "os_version", c0883t4.m25229C());
                m18398q(sb, 1, "device_model", c0883t4.m25128v());
                m18398q(sb, 1, "user_default_language", c0883t4.m25220F());
                if (c0883t4.m25140p1()) {
                    m18398q(sb, 1, "time_zone_offset_minutes", Integer.valueOf(c0883t4.m25127v1()));
                }
                if (c0883t4.m25121y0()) {
                    m18398q(sb, 1, "bundle_sequential_index", Integer.valueOf(c0883t4.m25167b1()));
                }
                if (c0883t4.m25144n1()) {
                    m18398q(sb, 1, "service_upload", Boolean.valueOf(c0883t4.m25137r0()));
                }
                m18398q(sb, 1, "health_monitor", c0883t4.m25232B());
                if (!this.f17008a.m18513u().m18356w(null, C3621c3.f16386p0) && c0883t4.m25134s0() && c0883t4.m25122x1() != 0) {
                    m18398q(sb, 1, "android_id", Long.valueOf(c0883t4.m25122x1()));
                }
                if (c0883t4.m25146m1()) {
                    m18398q(sb, 1, "retry_counter", Integer.valueOf(c0883t4.m25129u1()));
                }
                if (c0883t4.m25234A0()) {
                    m18398q(sb, 1, "consent_signals", c0883t4.m25130u());
                }
                List<C0612d5> m25211I = c0883t4.m25211I();
                if (m25211I != null) {
                    for (C0612d5 c0612d5 : m25211I) {
                        if (c0612d5 != null) {
                            m18401n(sb, 2);
                            sb.append("user_property {\n");
                            if (c0612d5.m26063K()) {
                                l = Long.valueOf(c0612d5.m26059u());
                            } else {
                                l = null;
                            }
                            m18398q(sb, 2, "set_timestamp_millis", l);
                            m18398q(sb, 2, "name", this.f17008a.m18509y().m18071f(c0612d5.m26056x()));
                            m18398q(sb, 2, "string_value", c0612d5.m26055z());
                            if (c0612d5.m26064J()) {
                                l2 = Long.valueOf(c0612d5.m26060t());
                            } else {
                                l2 = null;
                            }
                            m18398q(sb, 2, "int_value", l2);
                            if (c0612d5.m26065I()) {
                                d = Double.valueOf(c0612d5.m26061s());
                            } else {
                                d = null;
                            }
                            m18398q(sb, 2, "double_value", d);
                            m18401n(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<C0645f4> m25217G = c0883t4.m25217G();
                if (m25217G != null) {
                    for (C0645f4 c0645f4 : m25217G) {
                        if (c0645f4 != null) {
                            m18401n(sb, 2);
                            sb.append("audience_membership {\n");
                            if (c0645f4.m25994D()) {
                                m18398q(sb, 2, "audience_id", Integer.valueOf(c0645f4.m25991s()));
                            }
                            if (c0645f4.m25993E()) {
                                m18398q(sb, 2, "new_audience", Boolean.valueOf(c0645f4.m25995C()));
                            }
                            m18399p(sb, 2, "current_data", c0645f4.m25988v());
                            if (c0645f4.m25992F()) {
                                m18399p(sb, 2, "previous_data", c0645f4.m25987w());
                            }
                            m18401n(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                List<C0713j4> m25214H = c0883t4.m25214H();
                if (m25214H != null) {
                    for (C0713j4 c0713j4 : m25214H) {
                        if (c0713j4 != null) {
                            m18401n(sb, 2);
                            sb.append("event {\n");
                            m18398q(sb, 2, "name", this.f17008a.m18509y().m18073d(c0713j4.m25774A()));
                            if (c0713j4.m25762O()) {
                                m18398q(sb, 2, "timestamp_millis", Long.valueOf(c0713j4.m25757v()));
                            }
                            if (c0713j4.m25763L()) {
                                m18398q(sb, 2, "previous_timestamp_millis", Long.valueOf(c0713j4.m25758u()));
                            }
                            if (c0713j4.m25764K()) {
                                m18398q(sb, 2, "count", Integer.valueOf(c0713j4.m25760s()));
                            }
                            if (c0713j4.m25759t() != 0) {
                                m18403l(sb, 2, c0713j4.m25773B());
                            }
                            m18401n(sb, 2);
                            sb.append("}\n");
                        }
                    }
                }
                m18401n(sb, 1);
                sb.append("}\n");
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* renamed from: E */
    public static List<Long> m18415E(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i * 64) + i2;
                if (i3 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i3)) {
                    j |= 1 << i2;
                }
            }
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    /* renamed from: K */
    public static boolean m18411K(List<Long> list, int i) {
        if (i < list.size() * 64) {
            if (((1 << (i % 64)) & list.get(i / 64).longValue()) != 0) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* renamed from: h */
    public static final void m18407h(C0696i4 c0696i4, String str, Object obj) {
        List<C0781n4> m25806L = c0696i4.m25806L();
        int i = 0;
        while (true) {
            if (i < m25806L.size()) {
                if (str.equals(m25806L.get(i).m25579z())) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        C0764m4 m25581w = C0781n4.m25581w();
        m25581w.m25665E(str);
        if (obj instanceof Long) {
            m25581w.m25666D(((Long) obj).longValue());
        } else if (obj instanceof String) {
            m25581w.m25664F((String) obj);
        } else if (obj instanceof Double) {
            m25581w.m25667C(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            m25581w.m25662u(m18417C((Bundle[]) obj));
        }
        if (i >= 0) {
            c0696i4.m25812E(i, m25581w);
        } else {
            c0696i4.m25800z(m25581w);
        }
    }

    /* renamed from: i */
    public static final boolean m18406i(C3833u c3833u, C3784pa c3784pa) {
        C7297q.m1883j(c3833u);
        C7297q.m1883j(c3784pa);
        if (TextUtils.isEmpty(c3784pa.f16847b) && TextUtils.isEmpty(c3784pa.f16840B)) {
            return false;
        }
        return true;
    }

    /* renamed from: j */
    public static final C0781n4 m18405j(C0713j4 c0713j4, String str) {
        for (C0781n4 c0781n4 : c0713j4.m25773B()) {
            if (c0781n4.m25579z().equals(str)) {
                return c0781n4;
            }
        }
        return null;
    }

    /* renamed from: k */
    public static final Object m18404k(C0713j4 c0713j4, String str) {
        C0781n4 m18405j = m18405j(c0713j4, str);
        if (m18405j != null) {
            if (m18405j.m25587S()) {
                return m18405j.m25603A();
            }
            if (m18405j.m25589Q()) {
                return Long.valueOf(m18405j.m25582v());
            }
            if (m18405j.m25591O()) {
                return Double.valueOf(m18405j.m25585s());
            }
            if (m18405j.m25583u() > 0) {
                List<C0781n4> m25602B = m18405j.m25602B();
                ArrayList arrayList = new ArrayList();
                for (C0781n4 c0781n4 : m25602B) {
                    if (c0781n4 != null) {
                        Bundle bundle = new Bundle();
                        for (C0781n4 c0781n42 : c0781n4.m25602B()) {
                            if (c0781n42.m25587S()) {
                                bundle.putString(c0781n42.m25579z(), c0781n42.m25603A());
                            } else if (c0781n42.m25589Q()) {
                                bundle.putLong(c0781n42.m25579z(), c0781n42.m25582v());
                            } else if (c0781n42.m25591O()) {
                                bundle.putDouble(c0781n42.m25579z(), c0781n42.m25585s());
                            }
                        }
                        if (!bundle.isEmpty()) {
                            arrayList.add(bundle);
                        }
                    }
                }
                return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
            }
            return null;
        }
        return null;
    }

    /* renamed from: y */
    public static <Builder extends InterfaceC0617da> Builder m18390y(Builder builder, byte[] bArr) {
        C0734k8 m25700b = C0734k8.m25700b();
        if (m25700b != null) {
            return (Builder) builder.mo26024N(bArr, m25700b);
        }
        return (Builder) builder.mo26025M(bArr);
    }

    /* renamed from: I */
    public final void m18413I(C0764m4 c0764m4, Object obj) {
        C7297q.m1883j(obj);
        c0764m4.m25668B();
        c0764m4.m25659z();
        c0764m4.m25660x();
        c0764m4.m25669A();
        if (obj instanceof String) {
            c0764m4.m25664F((String) obj);
        } else if (obj instanceof Long) {
            c0764m4.m25666D(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            c0764m4.m25667C(((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            c0764m4.m25662u(m18417C((Bundle[]) obj));
        } else {
            this.f17008a.mo17858F().m18018m().m18041b("Ignoring invalid (type) event param value", obj);
        }
    }

    /* renamed from: J */
    public final void m18412J(C0595c5 c0595c5, Object obj) {
        C7297q.m1883j(obj);
        c0595c5.m26104v();
        c0595c5.m26105u();
        c0595c5.m26106t();
        if (obj instanceof String) {
            c0595c5.m26107C((String) obj);
        } else if (obj instanceof Long) {
            c0595c5.m26102z(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            c0595c5.m26103x(((Double) obj).doubleValue());
        } else {
            this.f17008a.mo17858F().m18018m().m18041b("Ignoring invalid (type) user attribute value", obj);
        }
    }

    /* renamed from: t */
    public final long m18395t(byte[] bArr) {
        C7297q.m1883j(bArr);
        this.f17008a.m18538K().mo17839c();
        MessageDigest m18167n = C3700ia.m18167n("MD5");
        if (m18167n == null) {
            this.f17008a.mo17858F().m18018m().m18042a("Failed to get MD5");
            return 0L;
        }
        return C3700ia.m18160q0(m18167n.digest(bArr));
    }

    /* renamed from: w */
    public final C3833u m18392w(C0572b c0572b) {
        String str;
        Object obj;
        Bundle m18394u = m18394u(c0572b.m26156e(), true);
        if (m18394u.containsKey("_o") && (obj = m18394u.get("_o")) != null) {
            str = obj.toString();
        } else {
            str = "app";
        }
        String str2 = str;
        String m17811b = C3899z5.m17811b(c0572b.m26157d());
        if (m17811b == null) {
            m17811b = c0572b.m26157d();
        }
        return new C3833u(m17811b, new C3809s(m18394u), str2, c0572b.m26160a());
    }

    /* renamed from: x */
    public final C0713j4 m18391x(C3773p c3773p) {
        C0696i4 m25756w = C0713j4.m25756w();
        m25756w.m25810G(c3773p.f16811e);
        C3797r c3797r = new C3797r(c3773p.f16812f);
        while (c3797r.hasNext()) {
            String next = c3797r.next();
            C0764m4 m25581w = C0781n4.m25581w();
            m25581w.m25665E(next);
            Object m17987c1 = c3773p.f16812f.m17987c1(next);
            C7297q.m1883j(m17987c1);
            m18413I(m25581w, m17987c1);
            m25756w.m25800z(m25581w);
        }
        return m25756w.m25101i();
    }
}
