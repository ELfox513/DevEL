package com.android.p030dx.dex.code;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import p015b2.C0437f;
import p210w1.C7157q;
import p210w1.C7163s;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p226y1.C7402c;
/* renamed from: com.android.dx.dex.code.LocalList */
/* loaded from: classes.dex */
public final class LocalList extends C0437f {
    private static final boolean DEBUG = false;
    public static final LocalList EMPTY = new LocalList(0);

    /* renamed from: com.android.dx.dex.code.LocalList$Disposition */
    /* loaded from: classes.dex */
    public enum Disposition {
        START,
        END_SIMPLY,
        END_REPLACED,
        END_MOVED,
        END_CLOBBERED_BY_PREV,
        END_CLOBBERED_BY_NEXT
    }

    /* renamed from: com.android.dx.dex.code.LocalList$Entry */
    /* loaded from: classes.dex */
    public static class Entry implements Comparable<Entry> {
        private final int address;
        private final Disposition disposition;
        private final C7157q spec;
        private final C7214e0 type;

        public int getAddress() {
            return this.address;
        }

        public Disposition getDisposition() {
            return this.disposition;
        }

        public C7212d0 getName() {
            return this.spec.m2354z().m2399f();
        }

        public int getRegister() {
            return this.spec.m2380B();
        }

        public C7157q getRegisterSpec() {
            return this.spec;
        }

        public C7212d0 getSignature() {
            return this.spec.m2354z().m2398h();
        }

        public C7214e0 getType() {
            return this.type;
        }

        public boolean isStart() {
            return this.disposition == Disposition.START;
        }

        public boolean matches(C7157q c7157q) {
            return this.spec.m2356u(c7157q);
        }

        public String toString() {
            return Integer.toHexString(this.address) + " " + this.disposition + " " + this.spec;
        }

        @Override // java.lang.Comparable
        public int compareTo(Entry entry) {
            int i = this.address;
            int i2 = entry.address;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            boolean isStart = isStart();
            if (isStart != entry.isStart()) {
                return isStart ? 1 : -1;
            }
            return this.spec.compareTo(entry.spec);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Entry) || compareTo((Entry) obj) != 0) {
                return false;
            }
            return true;
        }

        public boolean matches(Entry entry) {
            return matches(entry.spec);
        }

        public Entry withDisposition(Disposition disposition) {
            if (disposition == this.disposition) {
                return this;
            }
            return new Entry(this.address, disposition, this.spec);
        }

        public Entry(int i, Disposition disposition, C7157q c7157q) {
            if (i >= 0) {
                if (disposition != null) {
                    try {
                        if (c7157q.m2354z() != null) {
                            this.address = i;
                            this.disposition = disposition;
                            this.spec = c7157q;
                            this.type = C7214e0.m2101C(c7157q.getType());
                            return;
                        }
                        throw new NullPointerException("spec.getLocalItem() == null");
                    } catch (NullPointerException unused) {
                        throw new NullPointerException("spec == null");
                    }
                }
                throw new NullPointerException("disposition == null");
            }
            throw new IllegalArgumentException("address < 0");
        }
    }

    /* renamed from: com.android.dx.dex.code.LocalList$MakeState */
    /* loaded from: classes.dex */
    public static class MakeState {
        private final ArrayList<Entry> result;
        private int nullResultCount = 0;
        private C7163s regs = null;
        private int[] endIndices = null;
        private final int lastAddress = 0;

        public void endLocal(int i, C7157q c7157q) {
            endLocal(i, c7157q, Disposition.END_SIMPLY);
        }

        private void aboutToProcess(int i, int i2) {
            boolean z;
            int[] iArr = this.endIndices;
            if (iArr == null) {
                z = true;
            } else {
                z = false;
            }
            int i3 = this.lastAddress;
            if (i == i3 && !z) {
                return;
            }
            if (i >= i3) {
                if (z || i2 >= iArr.length) {
                    int i4 = i2 + 1;
                    C7163s c7163s = new C7163s(i4);
                    int[] iArr2 = new int[i4];
                    Arrays.fill(iArr2, -1);
                    if (!z) {
                        c7163s.m2322H(this.regs);
                        int[] iArr3 = this.endIndices;
                        System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
                    }
                    this.regs = c7163s;
                    this.endIndices = iArr2;
                    return;
                }
                return;
            }
            throw new RuntimeException("shouldn't happen");
        }

        private void addOrUpdateEnd(int i, Disposition disposition, C7157q c7157q) {
            if (disposition != Disposition.START) {
                int i2 = this.endIndices[c7157q.m2380B()];
                if (i2 >= 0) {
                    Entry entry = this.result.get(i2);
                    if (entry.getAddress() == i && entry.getRegisterSpec().equals(c7157q)) {
                        this.result.set(i2, entry.withDisposition(disposition));
                        this.regs.m2321I(c7157q);
                        return;
                    }
                }
                endLocal(i, c7157q, disposition);
                return;
            }
            throw new RuntimeException("shouldn't happen");
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
            r5.regs.m2321I(r7);
            r4 = null;
            r5.result.set(r0, null);
            r5.nullResultCount++;
            r7 = r7.m2380B();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x003b, code lost:
            r0 = r0 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x003d, code lost:
            if (r0 < 0) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
            r4 = r5.result.get(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
            if (r4 != null) goto L16;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0053, code lost:
            if (r4.getRegisterSpec().m2380B() != r7) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0055, code lost:
            r2 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0056, code lost:
            if (r2 == false) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
            r5.endIndices[r7] = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0060, code lost:
            if (r4.getAddress() != r6) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
            r5.result.set(r0, r4.withDisposition(com.android.p030dx.dex.code.LocalList.Disposition.END_SIMPLY));
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x006d, code lost:
            return true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean checkForEmptyRange(int r6, p210w1.C7157q r7) {
            /*
                r5 = this;
                java.util.ArrayList<com.android.dx.dex.code.LocalList$Entry> r0 = r5.result
                int r0 = r0.size()
                r1 = 1
                int r0 = r0 - r1
            L8:
                r2 = 0
                if (r0 < 0) goto L27
                java.util.ArrayList<com.android.dx.dex.code.LocalList$Entry> r3 = r5.result
                java.lang.Object r3 = r3.get(r0)
                com.android.dx.dex.code.LocalList$Entry r3 = (com.android.p030dx.dex.code.LocalList.Entry) r3
                if (r3 != 0) goto L16
                goto L24
            L16:
                int r4 = r3.getAddress()
                if (r4 == r6) goto L1d
                return r2
            L1d:
                boolean r3 = r3.matches(r7)
                if (r3 == 0) goto L24
                goto L27
            L24:
                int r0 = r0 + (-1)
                goto L8
            L27:
                w1.s r3 = r5.regs
                r3.m2321I(r7)
                java.util.ArrayList<com.android.dx.dex.code.LocalList$Entry> r3 = r5.result
                r4 = 0
                r3.set(r0, r4)
                int r3 = r5.nullResultCount
                int r3 = r3 + r1
                r5.nullResultCount = r3
                int r7 = r7.m2380B()
            L3b:
                int r0 = r0 + (-1)
                if (r0 < 0) goto L56
                java.util.ArrayList<com.android.dx.dex.code.LocalList$Entry> r3 = r5.result
                java.lang.Object r3 = r3.get(r0)
                r4 = r3
                com.android.dx.dex.code.LocalList$Entry r4 = (com.android.p030dx.dex.code.LocalList.Entry) r4
                if (r4 != 0) goto L4b
                goto L3b
            L4b:
                w1.q r3 = r4.getRegisterSpec()
                int r3 = r3.m2380B()
                if (r3 != r7) goto L3b
                r2 = 1
            L56:
                if (r2 == 0) goto L6d
                int[] r2 = r5.endIndices
                r2[r7] = r0
                int r7 = r4.getAddress()
                if (r7 != r6) goto L6d
                java.util.ArrayList<com.android.dx.dex.code.LocalList$Entry> r6 = r5.result
                com.android.dx.dex.code.LocalList$Disposition r7 = com.android.p030dx.dex.code.LocalList.Disposition.END_SIMPLY
                com.android.dx.dex.code.LocalList$Entry r7 = r4.withDisposition(r7)
                r6.set(r0, r7)
            L6d:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.p030dx.dex.code.LocalList.MakeState.checkForEmptyRange(int, w1.q):boolean");
        }

        private static C7157q filterSpec(C7157q c7157q) {
            if (c7157q != null && c7157q.getType() == C7402c.f37061C) {
                return c7157q.m2362U(C7402c.f37069K);
            }
            return c7157q;
        }

        public void endLocal(int i, C7157q c7157q, Disposition disposition) {
            int m2380B = c7157q.m2380B();
            C7157q filterSpec = filterSpec(c7157q);
            aboutToProcess(i, m2380B);
            if (this.endIndices[m2380B] < 0 && !checkForEmptyRange(i, filterSpec)) {
                add(i, disposition, filterSpec);
            }
        }

        public MakeState(int i) {
            this.result = new ArrayList<>(i);
        }

        private void add(int i, Disposition disposition, C7157q c7157q) {
            int m2380B = c7157q.m2380B();
            this.result.add(new Entry(i, disposition, c7157q));
            if (disposition == Disposition.START) {
                this.regs.m2323F(c7157q);
                this.endIndices[m2380B] = -1;
                return;
            }
            this.regs.m2321I(c7157q);
            this.endIndices[m2380B] = this.result.size() - 1;
        }

        public LocalList finish() {
            aboutToProcess(Integer.MAX_VALUE, 0);
            int size = this.result.size();
            int i = size - this.nullResultCount;
            if (i == 0) {
                return LocalList.EMPTY;
            }
            Entry[] entryArr = new Entry[i];
            if (size == i) {
                this.result.toArray(entryArr);
            } else {
                Iterator<Entry> it = this.result.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    Entry next = it.next();
                    if (next != null) {
                        entryArr[i2] = next;
                        i2++;
                    }
                }
            }
            Arrays.sort(entryArr);
            LocalList localList = new LocalList(i);
            for (int i3 = 0; i3 < i; i3++) {
                localList.set(i3, entryArr[i3]);
            }
            localList.setImmutable();
            return localList;
        }

        public void snapshot(int i, C7163s c7163s) {
            int m2327B = c7163s.m2327B();
            aboutToProcess(i, m2327B - 1);
            for (int i2 = 0; i2 < m2327B; i2++) {
                C7157q m2318z = this.regs.m2318z(i2);
                C7157q filterSpec = filterSpec(c7163s.m2318z(i2));
                if (m2318z == null) {
                    if (filterSpec != null) {
                        startLocal(i, filterSpec);
                    }
                } else if (filterSpec == null) {
                    endLocal(i, m2318z);
                } else if (!filterSpec.m2356u(m2318z)) {
                    endLocal(i, m2318z);
                    startLocal(i, filterSpec);
                }
            }
        }

        public void startLocal(int i, C7157q c7157q) {
            C7157q m2318z;
            C7157q m2318z2;
            int m2380B = c7157q.m2380B();
            C7157q filterSpec = filterSpec(c7157q);
            aboutToProcess(i, m2380B);
            C7157q m2318z3 = this.regs.m2318z(m2380B);
            if (filterSpec.m2356u(m2318z3)) {
                return;
            }
            C7157q m2319x = this.regs.m2319x(filterSpec);
            if (m2319x != null) {
                addOrUpdateEnd(i, Disposition.END_MOVED, m2319x);
            }
            int i2 = this.endIndices[m2380B];
            if (m2318z3 != null) {
                add(i, Disposition.END_REPLACED, m2318z3);
            } else if (i2 >= 0) {
                Entry entry = this.result.get(i2);
                if (entry.getAddress() == i) {
                    if (entry.matches(filterSpec)) {
                        this.result.set(i2, null);
                        this.nullResultCount++;
                        this.regs.m2323F(filterSpec);
                        this.endIndices[m2380B] = -1;
                        return;
                    }
                    this.result.set(i2, entry.withDisposition(Disposition.END_REPLACED));
                }
            }
            if (m2380B > 0 && (m2318z2 = this.regs.m2318z(m2380B - 1)) != null && m2318z2.m2375H()) {
                addOrUpdateEnd(i, Disposition.END_CLOBBERED_BY_NEXT, m2318z2);
            }
            if (filterSpec.m2375H() && (m2318z = this.regs.m2318z(m2380B + 1)) != null) {
                addOrUpdateEnd(i, Disposition.END_CLOBBERED_BY_PREV, m2318z);
            }
            add(i, Disposition.START, filterSpec);
        }
    }

    public LocalList(int i) {
        super(i);
    }

    public Entry get(int i) {
        return (Entry) get0(i);
    }

    public void set(int i, Entry entry) {
        set0(i, entry);
    }

    private static void debugVerify(LocalList localList) {
        try {
            debugVerify0(localList);
        } catch (RuntimeException e) {
            int size = localList.size();
            for (int i = 0; i < size; i++) {
                System.err.println(localList.get(i));
            }
            throw e;
        }
    }

    private static void debugVerify0(LocalList localList) {
        int size = localList.size();
        Entry[] entryArr = new Entry[65536];
        for (int i = 0; i < size; i++) {
            Entry entry = localList.get(i);
            int register = entry.getRegister();
            if (entry.isStart()) {
                Entry entry2 = entryArr[register];
                if (entry2 != null && entry.matches(entry2)) {
                    throw new RuntimeException("redundant start at " + Integer.toHexString(entry.getAddress()) + ": got " + entry + "; had " + entry2);
                }
                entryArr[register] = entry;
            } else if (entryArr[register] != null) {
                int address = entry.getAddress();
                boolean z = false;
                for (int i2 = i + 1; i2 < size; i2++) {
                    Entry entry3 = localList.get(i2);
                    if (entry3.getAddress() != address) {
                        break;
                    }
                    if (entry3.getRegisterSpec().m2380B() == register) {
                        if (entry3.isStart()) {
                            if (entry.getDisposition() == Disposition.END_REPLACED) {
                                z = true;
                            } else {
                                throw new RuntimeException("improperly marked end at " + Integer.toHexString(address));
                            }
                        } else {
                            throw new RuntimeException("redundant end at " + Integer.toHexString(address));
                        }
                    }
                }
                if (!z && entry.getDisposition() == Disposition.END_REPLACED) {
                    throw new RuntimeException("improper end replacement claim at " + Integer.toHexString(address));
                }
                entryArr[register] = null;
            } else {
                throw new RuntimeException("redundant end at " + Integer.toHexString(entry.getAddress()));
            }
        }
    }

    public static LocalList make(DalvInsnList dalvInsnList) {
        int size = dalvInsnList.size();
        MakeState makeState = new MakeState(size);
        for (int i = 0; i < size; i++) {
            DalvInsn dalvInsn = dalvInsnList.get(i);
            if (dalvInsn instanceof LocalSnapshot) {
                makeState.snapshot(dalvInsn.getAddress(), ((LocalSnapshot) dalvInsn).getLocals());
            } else if (dalvInsn instanceof LocalStart) {
                makeState.startLocal(dalvInsn.getAddress(), ((LocalStart) dalvInsn).getLocal());
            }
        }
        return makeState.finish();
    }

    public void debugPrint(PrintStream printStream, String str) {
        int size = size();
        for (int i = 0; i < size; i++) {
            printStream.print(str);
            printStream.println(get(i));
        }
    }
}
