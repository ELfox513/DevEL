package com.android.p030dx.dex.code;

import p210w1.C7138b;
import p210w1.C7140c;
import p210w1.C7165u;
import p210w1.C7167w;
/* renamed from: com.android.dx.dex.code.BlockAddresses */
/* loaded from: classes.dex */
public final class BlockAddresses {
    private final CodeAddress[] ends;
    private final CodeAddress[] lasts;
    private final CodeAddress[] starts;

    public CodeAddress getEnd(C7138b c7138b) {
        return this.ends[c7138b.mo2449a()];
    }

    public CodeAddress getLast(C7138b c7138b) {
        return this.lasts[c7138b.mo2449a()];
    }

    public CodeAddress getStart(C7138b c7138b) {
        return this.starts[c7138b.mo2449a()];
    }

    public CodeAddress getEnd(int i) {
        return this.ends[i];
    }

    public CodeAddress getLast(int i) {
        return this.lasts[i];
    }

    public CodeAddress getStart(int i) {
        return this.starts[i];
    }

    public BlockAddresses(C7165u c7165u) {
        int m26450z = c7165u.m2308b().m26450z();
        this.starts = new CodeAddress[m26450z];
        this.lasts = new CodeAddress[m26450z];
        this.ends = new CodeAddress[m26450z];
        setupArrays(c7165u);
    }

    private void setupArrays(C7165u c7165u) {
        C7140c m2308b = c7165u.m2308b();
        int size = m2308b.size();
        for (int i = 0; i < size; i++) {
            C7138b m2438F = m2308b.m2438F(i);
            int mo2449a = m2438F.mo2449a();
            this.starts[mo2449a] = new CodeAddress(m2438F.m2446d().m2411A(0).m2416j());
            C7167w m2416j = m2438F.m2445e().m2416j();
            this.lasts[mo2449a] = new CodeAddress(m2416j);
            this.ends[mo2449a] = new CodeAddress(m2416j);
        }
    }
}
