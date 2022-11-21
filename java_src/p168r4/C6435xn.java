package p168r4;

import java.util.PriorityQueue;
/* renamed from: r4.xn */
/* loaded from: classes2.dex */
public final class C6435xn {
    /* renamed from: c */
    public static String m5243c(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            cm0.m12440c("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i4 = i3 - 1;
            if (i < i4) {
                sb.append(strArr[i]);
                sb.append(' ');
                i++;
            } else {
                sb.append(strArr[i4]);
                return sb.toString();
            }
        }
    }

    /* renamed from: d */
    public static long m5242d(long j, int i) {
        if (i == 1) {
            return j;
        }
        return ((i & 1) == 0 ? m5242d((j * j) % 1073807359, i >> 1) : j * (m5242d((j * j) % 1073807359, i >> 1) % 1073807359)) % 1073807359;
    }

    /* renamed from: e */
    public static long m5241e(String[] strArr, int i, int i2) {
        long m6788a = (C6287tn.m6788a(strArr[0]) + 2147483647L) % 1073807359;
        for (int i3 = 1; i3 < i2; i3++) {
            m6788a = (((m6788a * 16785407) % 1073807359) + ((C6287tn.m6788a(strArr[i3]) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return m6788a;
    }

    /* renamed from: a */
    public static void m5245a(String[] strArr, int i, int i2, PriorityQueue<C6398wn> priorityQueue) {
        int length = strArr.length;
        if (length < 6) {
            m5244b(i, m5241e(strArr, 0, length), m5243c(strArr, 0, length), length, priorityQueue);
            return;
        }
        long m5241e = m5241e(strArr, 0, 6);
        m5244b(i, m5241e, m5243c(strArr, 0, 6), 6, priorityQueue);
        long m5242d = m5242d(16785407L, 5);
        int i3 = 1;
        while (true) {
            int length2 = strArr.length;
            if (i3 < length2 - 5) {
                m5241e = ((((((m5241e + 1073807359) - ((((C6287tn.m6788a(strArr[i3 - 1]) + 2147483647L) % 1073807359) * m5242d) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((C6287tn.m6788a(strArr[i3 + 5]) + 2147483647L) % 1073807359)) % 1073807359;
                m5244b(i, m5241e, m5243c(strArr, i3, 6), length2, priorityQueue);
                i3++;
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public static void m5244b(int i, long j, String str, int i2, PriorityQueue<C6398wn> priorityQueue) {
        C6398wn c6398wn = new C6398wn(j, str, i2);
        if ((priorityQueue.size() == i && (priorityQueue.peek().f33263c > c6398wn.f33263c || priorityQueue.peek().f33261a > c6398wn.f33261a)) || priorityQueue.contains(c6398wn)) {
            return;
        }
        priorityQueue.add(c6398wn);
        if (priorityQueue.size() > i) {
            priorityQueue.poll();
        }
    }
}
