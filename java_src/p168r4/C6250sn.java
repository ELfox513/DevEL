package p168r4;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;
/* renamed from: r4.sn */
/* loaded from: classes2.dex */
public final class C6250sn {

    /* renamed from: a */
    public final int f31416a;

    /* renamed from: b */
    public final AbstractC6139pn f31417b = new C6324un();

    public C6250sn(int i) {
        this.f31416a = i;
    }

    /* renamed from: a */
    public final String m7098a(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            sb.append(arrayList.get(i).toLowerCase(Locale.US));
            sb.append('\n');
        }
        String[] split = sb.toString().split("\n");
        if (split.length == 0) {
            return "";
        }
        C6213rn c6213rn = new C6213rn();
        PriorityQueue priorityQueue = new PriorityQueue(this.f31416a, new C6176qn(this));
        for (String str : split) {
            String[] m6787b = C6287tn.m6787b(str, false);
            if (m6787b.length != 0) {
                C6435xn.m5245a(m6787b, this.f31416a, 6, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                c6213rn.f30632b.write(this.f31417b.mo4628a(((C6398wn) it.next()).f33262b));
            } catch (IOException e) {
                cm0.m12439d("Error while writing hash to byteStream", e);
            }
        }
        return c6213rn.toString();
    }
}
