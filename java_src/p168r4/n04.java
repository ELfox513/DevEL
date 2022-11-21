package p168r4;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: r4.n04 */
/* loaded from: classes2.dex */
public final class n04 {

    /* renamed from: a */
    public final int f28060a;

    /* renamed from: b */
    public final int f28061b;

    /* renamed from: c */
    public final int f28062c;

    /* renamed from: d */
    public final int f28063d;

    /* renamed from: e */
    public final int f28064e;

    /* renamed from: f */
    public final int f28065f;

    /* renamed from: g */
    public final int f28066g;

    /* renamed from: h */
    public final int f28067h;

    /* renamed from: i */
    public final int f28068i;

    /* renamed from: j */
    public final long f28069j;

    /* renamed from: k */
    public final m04 f28070k;

    /* renamed from: l */
    public final C5901j8 f28071l;

    public n04(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, m04 m04Var, C5901j8 c5901j8) {
        this.f28060a = i;
        this.f28061b = i2;
        this.f28062c = i3;
        this.f28063d = i4;
        this.f28064e = i5;
        this.f28065f = m9215h(i5);
        this.f28066g = i6;
        this.f28067h = i7;
        this.f28068i = m9214i(i7);
        this.f28069j = j;
        this.f28070k = m04Var;
        this.f28071l = c5901j8;
    }

    public n04(byte[] bArr, int i) {
        C6386wb c6386wb = new C6386wb(bArr, bArr.length);
        c6386wb.m5789d(i * 8);
        this.f28060a = c6386wb.m5785h(16);
        this.f28061b = c6386wb.m5785h(16);
        this.f28062c = c6386wb.m5785h(24);
        this.f28063d = c6386wb.m5785h(24);
        int m5785h = c6386wb.m5785h(20);
        this.f28064e = m5785h;
        this.f28065f = m9215h(m5785h);
        this.f28066g = c6386wb.m5785h(3) + 1;
        int m5785h2 = c6386wb.m5785h(5) + 1;
        this.f28067h = m5785h2;
        this.f28068i = m9214i(m5785h2);
        this.f28069j = C5979lc.m9694l(c6386wb.m5785h(4), c6386wb.m5785h(32));
        this.f28070k = null;
        this.f28071l = null;
    }

    /* renamed from: h */
    public static int m9215h(int i) {
        switch (i) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    /* renamed from: i */
    public static int m9214i(int i) {
        if (i != 8) {
            if (i != 12) {
                if (i != 16) {
                    if (i != 20) {
                        return i != 24 ? -1 : 6;
                    }
                    return 5;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    /* renamed from: a */
    public final long m9222a() {
        long j = this.f28069j;
        if (j == 0) {
            return -9223372036854775807L;
        }
        return (j * 1000000) / this.f28064e;
    }

    /* renamed from: b */
    public final long m9221b(long j) {
        return C5979lc.m9703d0((j * this.f28064e) / 1000000, 0L, this.f28069j - 1);
    }

    /* renamed from: c */
    public final C5713e5 m9220c(byte[] bArr, C5901j8 c5901j8) {
        bArr[4] = Byte.MIN_VALUE;
        int i = this.f28063d;
        if (i <= 0) {
            i = -1;
        }
        C5901j8 m9219d = m9219d(c5901j8);
        C5639c5 c5639c5 = new C5639c5();
        c5639c5.m12564n("audio/flac");
        c5639c5.m12563o(i);
        c5639c5.m12610B(this.f28066g);
        c5639c5.m12609C(this.f28064e);
        c5639c5.m12562p(Collections.singletonList(bArr));
        c5639c5.m12566l(m9219d);
        return c5639c5.m12603I();
    }

    /* renamed from: d */
    public final C5901j8 m9219d(C5901j8 c5901j8) {
        C5901j8 c5901j82 = this.f28071l;
        return c5901j82 == null ? c5901j8 : c5901j82.m10386j(c5901j8);
    }

    /* renamed from: e */
    public final n04 m9218e(m04 m04Var) {
        return new n04(this.f28060a, this.f28061b, this.f28062c, this.f28063d, this.f28064e, this.f28066g, this.f28067h, this.f28069j, m04Var, this.f28071l);
    }

    /* renamed from: j */
    public static C5901j8 m9213j(List<String> list, List<C6198r8> list2) {
        String str;
        if (list.isEmpty() && list2.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str2 = list.get(i);
            String[] m9711Z = C5979lc.m9711Z(str2, "=");
            if (m9711Z.length != 2) {
                String valueOf = String.valueOf(str2);
                if (valueOf.length() != 0) {
                    str = "Failed to parse Vorbis comment: ".concat(valueOf);
                } else {
                    str = new String("Failed to parse Vorbis comment: ");
                }
                Log.w("FlacStreamMetadata", str);
            } else {
                arrayList.add(new C6272t8(m9711Z[0], m9711Z[1]));
            }
        }
        arrayList.addAll(list2);
        if (arrayList.isEmpty()) {
            return null;
        }
        return new C5901j8(arrayList);
    }

    /* renamed from: f */
    public final n04 m9217f(List<String> list) {
        return new n04(this.f28060a, this.f28061b, this.f28062c, this.f28063d, this.f28064e, this.f28066g, this.f28067h, this.f28069j, this.f28070k, m9219d(m9213j(list, Collections.emptyList())));
    }

    /* renamed from: g */
    public final n04 m9216g(List<C6198r8> list) {
        return new n04(this.f28060a, this.f28061b, this.f28062c, this.f28063d, this.f28064e, this.f28066g, this.f28067h, this.f28069j, this.f28070k, m9219d(m9213j(Collections.emptyList(), list)));
    }
}
