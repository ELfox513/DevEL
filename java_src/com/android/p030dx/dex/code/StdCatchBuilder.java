package com.android.p030dx.dex.code;

import com.android.p030dx.dex.code.CatchTable;
import java.util.ArrayList;
import java.util.HashSet;
import p015b2.C0441j;
import p210w1.C7138b;
import p210w1.C7140c;
import p210w1.C7165u;
import p218x1.C7214e0;
import p226y1.C7402c;
import p226y1.InterfaceC7404e;
/* renamed from: com.android.dx.dex.code.StdCatchBuilder */
/* loaded from: classes.dex */
public final class StdCatchBuilder implements CatchBuilder {
    private static final int MAX_CATCH_RANGE = 65535;
    private final BlockAddresses addresses;
    private final C7165u method;
    private final int[] order;

    @Override // com.android.p030dx.dex.code.CatchBuilder
    public CatchTable build() {
        return build(this.method, this.order, this.addresses);
    }

    public static CatchTable build(C7165u c7165u, int[] iArr, BlockAddresses blockAddresses) {
        int length = iArr.length;
        C7140c m2308b = c7165u.m2308b();
        ArrayList arrayList = new ArrayList(length);
        CatchHandlerList catchHandlerList = CatchHandlerList.EMPTY;
        C7138b c7138b = null;
        C7138b c7138b2 = null;
        for (int i : iArr) {
            C7138b m2433L = m2308b.m2433L(i);
            if (m2433L.m2448b()) {
                CatchHandlerList handlersFor = handlersFor(m2433L, blockAddresses);
                if (catchHandlerList.size() != 0) {
                    if (catchHandlerList.equals(handlersFor) && rangeIsValid(c7138b, m2433L, blockAddresses)) {
                        c7138b2 = m2433L;
                    } else if (catchHandlerList.size() != 0) {
                        arrayList.add(makeEntry(c7138b, c7138b2, catchHandlerList, blockAddresses));
                    }
                }
                c7138b = m2433L;
                c7138b2 = c7138b;
                catchHandlerList = handlersFor;
            }
        }
        if (catchHandlerList.size() != 0) {
            arrayList.add(makeEntry(c7138b, c7138b2, catchHandlerList, blockAddresses));
        }
        int size = arrayList.size();
        if (size == 0) {
            return CatchTable.EMPTY;
        }
        CatchTable catchTable = new CatchTable(size);
        for (int i2 = 0; i2 < size; i2++) {
            catchTable.set(i2, (CatchTable.Entry) arrayList.get(i2));
        }
        catchTable.setImmutable();
        return catchTable;
    }

    private static boolean rangeIsValid(C7138b c7138b, C7138b c7138b2, BlockAddresses blockAddresses) {
        if (c7138b != null) {
            if (c7138b2 != null) {
                if (blockAddresses.getEnd(c7138b2).getAddress() - blockAddresses.getLast(c7138b).getAddress() <= 65535) {
                    return true;
                }
                return false;
            }
            throw new NullPointerException("end == null");
        }
        throw new NullPointerException("start == null");
    }

    @Override // com.android.p030dx.dex.code.CatchBuilder
    public HashSet<C7402c> getCatchTypes() {
        HashSet<C7402c> hashSet = new HashSet<>(20);
        C7140c m2308b = this.method.m2308b();
        int size = m2308b.size();
        for (int i = 0; i < size; i++) {
            InterfaceC7404e mo2249e = m2308b.m2438F(i).m2445e().mo2249e();
            int size2 = mo2249e.size();
            for (int i2 = 0; i2 < size2; i2++) {
                hashSet.add(mo2249e.getType(i2));
            }
        }
        return hashSet;
    }

    @Override // com.android.p030dx.dex.code.CatchBuilder
    public boolean hasAnyCatches() {
        C7140c m2308b = this.method.m2308b();
        int size = m2308b.size();
        for (int i = 0; i < size; i++) {
            if (m2308b.m2438F(i).m2445e().mo2249e().size() != 0) {
                return true;
            }
        }
        return false;
    }

    public StdCatchBuilder(C7165u c7165u, int[] iArr, BlockAddresses blockAddresses) {
        if (c7165u != null) {
            if (iArr != null) {
                if (blockAddresses != null) {
                    this.method = c7165u;
                    this.order = iArr;
                    this.addresses = blockAddresses;
                    return;
                }
                throw new NullPointerException("addresses == null");
            }
            throw new NullPointerException("order == null");
        }
        throw new NullPointerException("method == null");
    }

    private static CatchHandlerList handlersFor(C7138b c7138b, BlockAddresses blockAddresses) {
        C0441j m2442h = c7138b.m2442h();
        int size = m2442h.size();
        int m2444f = c7138b.m2444f();
        InterfaceC7404e mo2249e = c7138b.m2445e().mo2249e();
        int size2 = mo2249e.size();
        if (size2 == 0) {
            return CatchHandlerList.EMPTY;
        }
        if ((m2444f == -1 && size != size2) || (m2444f != -1 && (size != size2 + 1 || m2444f != m2442h.m26470B(size2)))) {
            throw new RuntimeException("shouldn't happen: weird successors list");
        }
        int i = 0;
        while (true) {
            if (i >= size2) {
                break;
            } else if (mo2249e.getType(i).equals(C7402c.f37069K)) {
                size2 = i + 1;
                break;
            } else {
                i++;
            }
        }
        CatchHandlerList catchHandlerList = new CatchHandlerList(size2);
        for (int i2 = 0; i2 < size2; i2++) {
            catchHandlerList.set(i2, new C7214e0(mo2249e.getType(i2)), blockAddresses.getStart(m2442h.m26470B(i2)).getAddress());
        }
        catchHandlerList.setImmutable();
        return catchHandlerList;
    }

    private static CatchTable.Entry makeEntry(C7138b c7138b, C7138b c7138b2, CatchHandlerList catchHandlerList, BlockAddresses blockAddresses) {
        return new CatchTable.Entry(blockAddresses.getLast(c7138b).getAddress(), blockAddresses.getEnd(c7138b2).getAddress(), catchHandlerList);
    }
}
