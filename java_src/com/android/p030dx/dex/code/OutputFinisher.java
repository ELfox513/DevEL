package com.android.p030dx.dex.code;

import com.android.p030dx.dex.DexOptions;
import com.android.p030dx.dex.code.DalvCode;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashSet;
import java.util.Iterator;
import p102k1.C4420g;
import p210w1.C7151k;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7163s;
import p218x1.AbstractC7204a;
import p218x1.AbstractC7236x;
import p218x1.C7212d0;
import p218x1.C7214e0;
import p226y1.C7402c;
import p234z1.C7532a;
/* renamed from: com.android.dx.dex.code.OutputFinisher */
/* loaded from: classes.dex */
public final class OutputFinisher {
    private final DexOptions dexOptions;
    private ArrayList<DalvInsn> insns;
    private final int paramSize;
    private int reservedParameterCount;
    private final int unreservedRegCount;
    private int reservedCount = -1;
    private boolean hasAnyPositionInfo = false;
    private boolean hasAnyLocalInfo = false;

    private static void addConstants(HashSet<AbstractC7204a> hashSet, DalvInsn dalvInsn) {
        if (dalvInsn instanceof CstInsn) {
            hashSet.add(((CstInsn) dalvInsn).getConstant());
            return;
        }
        int i = 0;
        if (dalvInsn instanceof MultiCstInsn) {
            MultiCstInsn multiCstInsn = (MultiCstInsn) dalvInsn;
            while (i < multiCstInsn.getNumberOfConstants()) {
                hashSet.add(multiCstInsn.getConstant(i));
                i++;
            }
        } else if (dalvInsn instanceof LocalSnapshot) {
            C7163s locals = ((LocalSnapshot) dalvInsn).getLocals();
            int size = locals.size();
            while (i < size) {
                addConstants(hashSet, locals.m2318z(i));
                i++;
            }
        } else if (dalvInsn instanceof LocalStart) {
            addConstants(hashSet, ((LocalStart) dalvInsn).getLocal());
        }
    }

    private static boolean hasLocalInfo(DalvInsn dalvInsn) {
        if (dalvInsn instanceof LocalSnapshot) {
            C7163s locals = ((LocalSnapshot) dalvInsn).getLocals();
            int size = locals.size();
            for (int i = 0; i < size; i++) {
                if (hasLocalInfo(locals.m2318z(i))) {
                    return true;
                }
            }
        } else if ((dalvInsn instanceof LocalStart) && hasLocalInfo(((LocalStart) dalvInsn).getLocal())) {
            return true;
        }
        return false;
    }

    public void assignIndices(DalvCode.AssignIndicesCallback assignIndicesCallback) {
        Iterator<DalvInsn> it = this.insns.iterator();
        while (it.hasNext()) {
            DalvInsn next = it.next();
            if (next instanceof CstInsn) {
                assignIndices((CstInsn) next, assignIndicesCallback);
            } else if (next instanceof MultiCstInsn) {
                assignIndices((MultiCstInsn) next, assignIndicesCallback);
            }
        }
    }

    public DalvInsn get(int i) {
        return this.insns.get(i);
    }

    public boolean hasAnyLocalInfo() {
        return this.hasAnyLocalInfo;
    }

    public boolean hasAnyPositionInfo() {
        return this.hasAnyPositionInfo;
    }

    public int size() {
        return this.insns.size();
    }

    private void align64bits(Dop[] dopArr) {
        boolean z;
        do {
            int i = ((this.unreservedRegCount + this.reservedCount) + this.reservedParameterCount) - this.paramSize;
            Iterator<DalvInsn> it = this.insns.iterator();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (it.hasNext()) {
                C7160r registers = it.next().getRegisters();
                for (int i6 = 0; i6 < registers.size(); i6++) {
                    C7157q m2347A = registers.m2347A(i6);
                    if (m2347A.m2375H()) {
                        if (m2347A.m2380B() >= i) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (m2347A.m2374I()) {
                            if (z) {
                                i3++;
                            } else {
                                i5++;
                            }
                        } else if (z) {
                            i2++;
                        } else {
                            i4++;
                        }
                    }
                }
            }
            if (i2 > i3 && i4 > i5) {
                addReservedRegisters(1);
            } else if (i2 > i3) {
                addReservedParameters(1);
            } else if (i4 > i5) {
                addReservedRegisters(1);
                if (this.paramSize != 0 && i3 > i2) {
                    addReservedParameters(1);
                }
            } else {
                return;
            }
        } while (reserveRegisters(dopArr));
    }

    private void assignAddresses() {
        int size = this.insns.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            DalvInsn dalvInsn = this.insns.get(i2);
            dalvInsn.setAddress(i);
            i += dalvInsn.codeSize();
        }
    }

    private int calculateReservedCount(Dop[] dopArr) {
        int size = this.insns.size();
        int i = this.reservedCount;
        for (int i2 = 0; i2 < size; i2++) {
            DalvInsn dalvInsn = this.insns.get(i2);
            Dop dop = dopArr[i2];
            Dop findOpcodeForInsn = findOpcodeForInsn(dalvInsn, dop);
            if (findOpcodeForInsn == null) {
                int minimumRegisterRequirement = dalvInsn.getMinimumRegisterRequirement(findExpandedOpcodeForInsn(dalvInsn).getFormat().compatibleRegs(dalvInsn));
                if (minimumRegisterRequirement > i) {
                    i = minimumRegisterRequirement;
                }
            } else if (dop == findOpcodeForInsn) {
            }
            dopArr[i2] = findOpcodeForInsn;
        }
        return i;
    }

    private Dop findOpcodeForInsn(DalvInsn dalvInsn, Dop dop) {
        while (dop != null && (!dop.getFormat().isCompatible(dalvInsn) || (this.dexOptions.forceJumbo && dop.getOpcode() == 26))) {
            dop = Dops.getNextOrNull(dop, this.dexOptions);
        }
        return dop;
    }

    private boolean fixBranches() {
        int size = this.insns.size();
        int i = 0;
        boolean z = false;
        while (i < size) {
            DalvInsn dalvInsn = this.insns.get(i);
            if (dalvInsn instanceof TargetInsn) {
                Dop opcode = dalvInsn.getOpcode();
                TargetInsn targetInsn = (TargetInsn) dalvInsn;
                if (opcode.getFormat().branchFits(targetInsn)) {
                    continue;
                } else {
                    if (opcode.getFamily() == 40) {
                        Dop findOpcodeForInsn = findOpcodeForInsn(dalvInsn, opcode);
                        if (findOpcodeForInsn != null) {
                            this.insns.set(i, dalvInsn.withOpcode(findOpcodeForInsn));
                        } else {
                            throw new UnsupportedOperationException("method too long");
                        }
                    } else {
                        try {
                            int i2 = i + 1;
                            CodeAddress codeAddress = (CodeAddress) this.insns.get(i2);
                            this.insns.set(i, new TargetInsn(Dops.GOTO, targetInsn.getPosition(), C7160r.f36212a, targetInsn.getTarget()));
                            this.insns.add(i, targetInsn.withNewTargetAndReversed(codeAddress));
                            size++;
                            i = i2;
                        } catch (ClassCastException unused) {
                            throw new IllegalStateException("unpaired TargetInsn");
                        } catch (IndexOutOfBoundsException unused2) {
                            throw new IllegalStateException("unpaired TargetInsn (dangling)");
                        }
                    }
                    z = true;
                }
            }
            i++;
        }
        return z;
    }

    private Dop[] makeOpcodesArray() {
        int size = this.insns.size();
        Dop[] dopArr = new Dop[size];
        for (int i = 0; i < size; i++) {
            dopArr[i] = this.insns.get(i).getOpcode();
        }
        return dopArr;
    }

    private void massageInstructions(Dop[] dopArr) {
        if (this.reservedCount == 0) {
            int size = this.insns.size();
            for (int i = 0; i < size; i++) {
                DalvInsn dalvInsn = this.insns.get(i);
                Dop opcode = dalvInsn.getOpcode();
                Dop dop = dopArr[i];
                if (opcode != dop) {
                    this.insns.set(i, dalvInsn.withOpcode(dop));
                }
            }
            return;
        }
        this.insns = performExpansion(dopArr);
    }

    private ArrayList<DalvInsn> performExpansion(Dop[] dopArr) {
        DalvInsn expandedSuffix;
        int size = this.insns.size();
        ArrayList<DalvInsn> arrayList = new ArrayList<>(size * 2);
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < size; i++) {
            DalvInsn dalvInsn = this.insns.get(i);
            Dop opcode = dalvInsn.getOpcode();
            Dop dop = dopArr[i];
            DalvInsn dalvInsn2 = null;
            if (dop != null) {
                expandedSuffix = null;
            } else {
                dop = findExpandedOpcodeForInsn(dalvInsn);
                BitSet compatibleRegs = dop.getFormat().compatibleRegs(dalvInsn);
                DalvInsn expandedPrefix = dalvInsn.expandedPrefix(compatibleRegs);
                expandedSuffix = dalvInsn.expandedSuffix(compatibleRegs);
                dalvInsn = dalvInsn.expandedVersion(compatibleRegs);
                dalvInsn2 = expandedPrefix;
            }
            if (dalvInsn instanceof CodeAddress) {
                CodeAddress codeAddress = (CodeAddress) dalvInsn;
                if (codeAddress.getBindsClosely()) {
                    arrayList2.add(codeAddress);
                }
            }
            if (dalvInsn2 != null) {
                arrayList.add(dalvInsn2);
            }
            if (!(dalvInsn instanceof ZeroSizeInsn) && arrayList2.size() > 0) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    arrayList.add((CodeAddress) it.next());
                }
                arrayList2.clear();
            }
            if (dop != opcode) {
                dalvInsn = dalvInsn.withOpcode(dop);
            }
            arrayList.add(dalvInsn);
            if (expandedSuffix != null) {
                arrayList.add(expandedSuffix);
            }
        }
        return arrayList;
    }

    private boolean reserveRegisters(Dop[] dopArr) {
        int i = this.reservedCount;
        if (i < 0) {
            i = 0;
        }
        boolean z = false;
        while (true) {
            int calculateReservedCount = calculateReservedCount(dopArr);
            if (i >= calculateReservedCount) {
                this.reservedCount = i;
                return z;
            }
            int i2 = calculateReservedCount - i;
            int size = this.insns.size();
            for (int i3 = 0; i3 < size; i3++) {
                DalvInsn dalvInsn = this.insns.get(i3);
                if (!(dalvInsn instanceof CodeAddress)) {
                    this.insns.set(i3, dalvInsn.withRegisterOffset(i2));
                }
            }
            z = true;
            i = calculateReservedCount;
        }
    }

    private void shiftAllRegisters(int i) {
        int size = this.insns.size();
        for (int i2 = 0; i2 < size; i2++) {
            DalvInsn dalvInsn = this.insns.get(i2);
            if (!(dalvInsn instanceof CodeAddress)) {
                this.insns.set(i2, dalvInsn.withRegisterOffset(i));
            }
        }
    }

    private void shiftParameters(int i) {
        int size = this.insns.size();
        int i2 = this.unreservedRegCount + this.reservedCount + this.reservedParameterCount;
        int i3 = i2 - this.paramSize;
        C7532a c7532a = new C7532a(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 >= i3) {
                c7532a.mo1243e(i4, i4 + i, 1);
            } else {
                c7532a.mo1243e(i4, i4, 1);
            }
        }
        for (int i5 = 0; i5 < size; i5++) {
            DalvInsn dalvInsn = this.insns.get(i5);
            if (!(dalvInsn instanceof CodeAddress)) {
                this.insns.set(i5, dalvInsn.withMapper(c7532a));
            }
        }
    }

    private void updateInfo(DalvInsn dalvInsn) {
        if (!this.hasAnyPositionInfo && dalvInsn.getPosition().m2255a() >= 0) {
            this.hasAnyPositionInfo = true;
        }
        if (!this.hasAnyLocalInfo && hasLocalInfo(dalvInsn)) {
            this.hasAnyLocalInfo = true;
        }
    }

    public void add(DalvInsn dalvInsn) {
        this.insns.add(dalvInsn);
        updateInfo(dalvInsn);
    }

    public DalvInsnList finishProcessingAndGetList() {
        if (this.reservedCount < 0) {
            Dop[] makeOpcodesArray = makeOpcodesArray();
            reserveRegisters(makeOpcodesArray);
            if (this.dexOptions.ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER) {
                align64bits(makeOpcodesArray);
            }
            massageInstructions(makeOpcodesArray);
            assignAddressesAndFixBranches();
            return DalvInsnList.makeImmutable(this.insns, this.reservedCount + this.unreservedRegCount + this.reservedParameterCount);
        }
        throw new UnsupportedOperationException("already processed");
    }

    public HashSet<AbstractC7204a> getAllConstants() {
        HashSet<AbstractC7204a> hashSet = new HashSet<>(20);
        Iterator<DalvInsn> it = this.insns.iterator();
        while (it.hasNext()) {
            addConstants(hashSet, it.next());
        }
        return hashSet;
    }

    public void insert(int i, DalvInsn dalvInsn) {
        this.insns.add(i, dalvInsn);
        updateInfo(dalvInsn);
    }

    public void reverseBranch(int i, CodeAddress codeAddress) {
        int size = (this.insns.size() - i) - 1;
        try {
            this.insns.set(size, ((TargetInsn) this.insns.get(size)).withNewTargetAndReversed(codeAddress));
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException("non-reversible instruction");
        } catch (IndexOutOfBoundsException unused2) {
            throw new IllegalArgumentException("too few instructions");
        }
    }

    public OutputFinisher(DexOptions dexOptions, int i, int i2, int i3) {
        this.dexOptions = dexOptions;
        this.unreservedRegCount = i2;
        this.insns = new ArrayList<>(i);
        this.paramSize = i3;
    }

    private void addReservedParameters(int i) {
        shiftParameters(i);
        this.reservedParameterCount += i;
    }

    private void addReservedRegisters(int i) {
        shiftAllRegisters(i);
        this.reservedCount += i;
    }

    private void assignAddressesAndFixBranches() {
        do {
            assignAddresses();
        } while (fixBranches());
    }

    private Dop findExpandedOpcodeForInsn(DalvInsn dalvInsn) {
        Dop findOpcodeForInsn = findOpcodeForInsn(dalvInsn.getLowRegVersion(), dalvInsn.getOpcode());
        if (findOpcodeForInsn != null) {
            return findOpcodeForInsn;
        }
        throw new C4420g("No expanded opcode for " + dalvInsn);
    }

    private static void assignIndices(CstInsn cstInsn, DalvCode.AssignIndicesCallback assignIndicesCallback) {
        int index;
        AbstractC7204a constant = cstInsn.getConstant();
        int index2 = assignIndicesCallback.getIndex(constant);
        if (index2 >= 0) {
            cstInsn.setIndex(index2);
        }
        if (!(constant instanceof AbstractC7236x) || (index = assignIndicesCallback.getIndex(((AbstractC7236x) constant).m2054n())) < 0) {
            return;
        }
        cstInsn.setClassIndex(index);
    }

    private static boolean hasLocalInfo(C7157q c7157q) {
        return (c7157q == null || c7157q.m2354z().m2399f() == null) ? false : true;
    }

    private static void assignIndices(MultiCstInsn multiCstInsn, DalvCode.AssignIndicesCallback assignIndicesCallback) {
        for (int i = 0; i < multiCstInsn.getNumberOfConstants(); i++) {
            AbstractC7204a constant = multiCstInsn.getConstant(i);
            multiCstInsn.setIndex(i, assignIndicesCallback.getIndex(constant));
            if (constant instanceof AbstractC7236x) {
                multiCstInsn.setClassIndex(assignIndicesCallback.getIndex(((AbstractC7236x) constant).m2054n()));
            }
        }
    }

    private static void addConstants(HashSet<AbstractC7204a> hashSet, C7157q c7157q) {
        if (c7157q == null) {
            return;
        }
        C7151k m2354z = c7157q.m2354z();
        C7212d0 m2399f = m2354z.m2399f();
        C7212d0 m2398h = m2354z.m2398h();
        C7402c type = c7157q.getType();
        if (type != C7402c.f37061C) {
            hashSet.add(C7214e0.m2101C(type));
        } else {
            hashSet.add(C7214e0.m2101C(C7402c.f37069K));
        }
        if (m2399f != null) {
            hashSet.add(m2399f);
        }
        if (m2398h != null) {
            hashSet.add(m2398h);
        }
    }
}
