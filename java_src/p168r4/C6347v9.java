package p168r4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* renamed from: r4.v9 */
/* loaded from: classes2.dex */
public final class C6347v9 extends AbstractC6013m9 {
    public static final Parcelable.Creator<C6347v9> CREATOR = new C6310u9();

    /* renamed from: b */
    public final String f32653b;

    /* renamed from: d */
    public final String f32654d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6347v9(android.os.Parcel r3) {
        /*
            r2 = this;
            java.lang.String r0 = r3.readString()
            int r1 = p168r4.C5979lc.f27164a
            r2.<init>(r0)
            java.lang.String r0 = r3.readString()
            r2.f32653b = r0
            java.lang.String r3 = r3.readString()
            r2.f32654d = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p168r4.C6347v9.<init>(android.os.Parcel):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C6347v9.class == obj.getClass()) {
            C6347v9 c6347v9 = (C6347v9) obj;
            if (C5979lc.m9729H(this.f27541a, c6347v9.f27541a) && C5979lc.m9729H(this.f32653b, c6347v9.f32653b) && C5979lc.m9729H(this.f32654d, c6347v9.f32654d)) {
                return true;
            }
        }
        return false;
    }

    @Override // p168r4.AbstractC6013m9
    public final String toString() {
        String str = this.f27541a;
        String str2 = this.f32653b;
        String str3 = this.f32654d;
        int length = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 22 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(": description=");
        sb.append(str2);
        sb.append(": value=");
        sb.append(str3);
        return sb.toString();
    }

    /* renamed from: a */
    public static List<Integer> m6199a(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
            } else if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
            } else if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // p168r4.AbstractC6013m9, p168r4.InterfaceC5865i8
    /* renamed from: f0 */
    public final void mo5450f0(C6380w5 c6380w5) {
        char c;
        Integer num;
        String str = this.f27541a;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 82878:
                if (str.equals("TCM")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 82897:
                if (str.equals("TDA")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 83253:
                if (str.equals("TP1")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 83254:
                if (str.equals("TP2")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 83255:
                if (str.equals("TP3")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 83341:
                if (str.equals("TRK")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 83378:
                if (str.equals("TT2")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 83536:
                if (str.equals("TXT")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 83552:
                if (str.equals("TYE")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
                c6380w5.m5871B(this.f32654d);
                return;
            case 2:
            case 3:
                c6380w5.m5870C(this.f32654d);
                return;
            case 4:
            case 5:
                c6380w5.m5868E(this.f32654d);
                return;
            case 6:
            case 7:
                c6380w5.m5869D(this.f32654d);
                return;
            case '\b':
            case '\t':
                String[] m9712Y = C5979lc.m9712Y(this.f32654d, "/");
                try {
                    int parseInt = Integer.parseInt(m9712Y[0]);
                    if (m9712Y.length > 1) {
                        num = Integer.valueOf(Integer.parseInt(m9712Y[1]));
                    } else {
                        num = null;
                    }
                    c6380w5.m5865H(Integer.valueOf(parseInt));
                    c6380w5.m5864I(num);
                    return;
                } catch (NumberFormatException unused) {
                    return;
                }
            case '\n':
            case 11:
                try {
                    c6380w5.m5863a(Integer.valueOf(Integer.parseInt(this.f32654d)));
                    return;
                } catch (NumberFormatException unused2) {
                    return;
                }
            case '\f':
            case '\r':
                try {
                    int parseInt2 = Integer.parseInt(this.f32654d.substring(2, 4));
                    int parseInt3 = Integer.parseInt(this.f32654d.substring(0, 2));
                    c6380w5.m5862b(Integer.valueOf(parseInt2));
                    c6380w5.m5861c(Integer.valueOf(parseInt3));
                    return;
                } catch (NumberFormatException | StringIndexOutOfBoundsException unused3) {
                    return;
                }
            case 14:
                List<Integer> m6199a = m6199a(this.f32654d);
                int size = m6199a.size();
                if (size != 1) {
                    if (size != 2) {
                        if (size == 3) {
                            c6380w5.m5861c(m6199a.get(2));
                        } else {
                            return;
                        }
                    }
                    c6380w5.m5862b(m6199a.get(1));
                }
                c6380w5.m5863a(m6199a.get(0));
                return;
            case 15:
                List<Integer> m6199a2 = m6199a(this.f32654d);
                int size2 = m6199a2.size();
                if (size2 != 1) {
                    if (size2 != 2) {
                        if (size2 == 3) {
                            c6380w5.m5858f(m6199a2.get(2));
                        } else {
                            return;
                        }
                    }
                    c6380w5.m5859e(m6199a2.get(1));
                }
                c6380w5.m5860d(m6199a2.get(0));
                return;
            case 16:
            case 17:
                c6380w5.m5856h(this.f32654d);
                return;
            case 18:
            case 19:
                c6380w5.m5855i(this.f32654d);
                return;
            case 20:
            case 21:
                c6380w5.m5857g(this.f32654d);
                return;
            default:
                return;
        }
    }

    public final int hashCode() {
        int i;
        int hashCode = (this.f27541a.hashCode() + 527) * 31;
        String str = this.f32653b;
        int i2 = 0;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        int i3 = (hashCode + i) * 31;
        String str2 = this.f32654d;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return i3 + i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f27541a);
        parcel.writeString(this.f32653b);
        parcel.writeString(this.f32654d);
    }

    public C6347v9(String str, String str2, String str3) {
        super(str);
        this.f32653b = str2;
        this.f32654d = str3;
    }
}
