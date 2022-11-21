package com.android.p030dx.dex.file;

import java.util.Formatter;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicInteger;
import p102k1.C4422i;
/* renamed from: com.android.dx.dex.file.MemberIdsSection */
/* loaded from: classes.dex */
public abstract class MemberIdsSection extends UniformItemSection {
    public MemberIdsSection(String str, DexFile dexFile) {
        super(str, dexFile, 4);
    }

    private String getTooManyMembersMessage() {
        String str;
        TreeMap treeMap = new TreeMap();
        Iterator<? extends Item> it = items().iterator();
        while (it.hasNext()) {
            String m2103A = ((MemberIdItem) it.next()).getDefiningClass().m2103A();
            AtomicInteger atomicInteger = (AtomicInteger) treeMap.get(m2103A);
            if (atomicInteger == null) {
                atomicInteger = new AtomicInteger();
                treeMap.put(m2103A, atomicInteger);
            }
            atomicInteger.incrementAndGet();
        }
        Formatter formatter = new Formatter();
        try {
            if (this instanceof MethodIdsSection) {
                str = "method";
            } else {
                str = "field";
            }
            formatter.format("Too many %1$s references to fit in one dex file: %2$d; max is %3$d.%nYou may try using multi-dex. If multi-dex is enabled then the list of classes for the main dex list is too large.%nReferences by package:", str, Integer.valueOf(items().size()), 65536);
            for (Map.Entry entry : treeMap.entrySet()) {
                formatter.format("%n%6d %s", Integer.valueOf(((AtomicInteger) entry.getValue()).get()), entry.getKey());
            }
            return formatter.toString();
        } finally {
            formatter.close();
        }
    }

    @Override // com.android.p030dx.dex.file.UniformItemSection
    public void orderItems() {
        if (items().size() <= 65536) {
            Iterator<? extends Item> it = items().iterator();
            int i = 0;
            while (it.hasNext()) {
                ((MemberIdItem) it.next()).setIndex(i);
                i++;
            }
            return;
        }
        throw new C4422i(getTooManyMembersMessage());
    }
}
