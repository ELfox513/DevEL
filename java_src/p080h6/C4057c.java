package p080h6;

import java.util.HashMap;
/* renamed from: h6.c */
/* loaded from: classes2.dex */
public class C4057c implements InterfaceC4058d {

    /* renamed from: a */
    public final int f17584a;

    /* renamed from: b */
    public static boolean m17480b(StackTraceElement[] stackTraceElementArr, int i, int i2) {
        int i3 = i2 - i;
        if (i2 + i3 > stackTraceElementArr.length) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!stackTraceElementArr[i + i4].equals(stackTraceElementArr[i2 + i4])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public static StackTraceElement[] m17479c(StackTraceElement[] stackTraceElementArr, int i) {
        int i2;
        HashMap hashMap = new HashMap();
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[stackTraceElementArr.length];
        int i3 = 0;
        int i4 = 0;
        int i5 = 1;
        while (i3 < stackTraceElementArr.length) {
            StackTraceElement stackTraceElement = stackTraceElementArr[i3];
            Integer num = (Integer) hashMap.get(stackTraceElement);
            if (num != null && m17480b(stackTraceElementArr, num.intValue(), i3)) {
                int intValue = i3 - num.intValue();
                if (i5 < i) {
                    System.arraycopy(stackTraceElementArr, i3, stackTraceElementArr2, i4, intValue);
                    i4 += intValue;
                    i5++;
                }
                i2 = (intValue - 1) + i3;
            } else {
                stackTraceElementArr2[i4] = stackTraceElementArr[i3];
                i4++;
                i2 = i3;
                i5 = 1;
            }
            hashMap.put(stackTraceElement, Integer.valueOf(i3));
            i3 = i2 + 1;
        }
        StackTraceElement[] stackTraceElementArr3 = new StackTraceElement[i4];
        System.arraycopy(stackTraceElementArr2, 0, stackTraceElementArr3, 0, i4);
        return stackTraceElementArr3;
    }

    @Override // p080h6.InterfaceC4058d
    /* renamed from: a */
    public StackTraceElement[] mo17478a(StackTraceElement[] stackTraceElementArr) {
        StackTraceElement[] m17479c = m17479c(stackTraceElementArr, this.f17584a);
        if (m17479c.length < stackTraceElementArr.length) {
            return m17479c;
        }
        return stackTraceElementArr;
    }

    public C4057c(int i) {
        this.f17584a = i;
    }
}
