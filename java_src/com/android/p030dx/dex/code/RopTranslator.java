package com.android.p030dx.dex.code;

import com.android.p030dx.dex.DexOptions;
import java.util.ArrayList;
import p015b2.C0431c;
import p015b2.C0441j;
import p210w1.AbstractC7146h;
import p210w1.C7138b;
import p210w1.C7140c;
import p210w1.C7145g;
import p210w1.C7150j;
import p210w1.C7153m;
import p210w1.C7154n;
import p210w1.C7155o;
import p210w1.C7157q;
import p210w1.C7160r;
import p210w1.C7164t;
import p210w1.C7165u;
import p210w1.C7167w;
import p210w1.C7168x;
import p210w1.C7169y;
import p210w1.C7170z;
import p218x1.AbstractC7204a;
import p218x1.C7228p;
/* renamed from: com.android.dx.dex.code.RopTranslator */
/* loaded from: classes.dex */
public final class RopTranslator {
    private final BlockAddresses addresses;
    private final DexOptions dexOptions;
    private final C7153m locals;
    private final C7165u method;
    private int[] order = null;
    private final OutputCollector output;
    private final int paramSize;
    private final boolean paramsAreInOrder;
    private final int positionInfo;
    private final int regCount;
    private final TranslationVisitor translationVisitor;

    /* renamed from: com.android.dx.dex.code.RopTranslator$LocalVariableAwareTranslationVisitor */
    /* loaded from: classes.dex */
    public class LocalVariableAwareTranslationVisitor extends TranslationVisitor {
        private final C7153m locals;

        public LocalVariableAwareTranslationVisitor(OutputCollector outputCollector, C7153m c7153m) {
            super(outputCollector);
            this.locals = c7153m;
        }

        public void addIntroductionIfNecessary(AbstractC7146h abstractC7146h) {
            C7157q m2385z = this.locals.m2385z(abstractC7146h);
            if (m2385z != null) {
                addOutput(new LocalStart(abstractC7146h.m2416j(), m2385z));
            }
        }

        @Override // com.android.p030dx.dex.code.RopTranslator.TranslationVisitor, p210w1.AbstractC7146h.InterfaceC7148b
        public void visitPlainCstInsn(C7154n c7154n) {
            super.visitPlainCstInsn(c7154n);
            addIntroductionIfNecessary(c7154n);
        }

        @Override // com.android.p030dx.dex.code.RopTranslator.TranslationVisitor, p210w1.AbstractC7146h.InterfaceC7148b
        public void visitPlainInsn(C7155o c7155o) {
            super.visitPlainInsn(c7155o);
            addIntroductionIfNecessary(c7155o);
        }

        @Override // com.android.p030dx.dex.code.RopTranslator.TranslationVisitor, p210w1.AbstractC7146h.InterfaceC7148b
        public void visitSwitchInsn(C7168x c7168x) {
            super.visitSwitchInsn(c7168x);
            addIntroductionIfNecessary(c7168x);
        }

        @Override // com.android.p030dx.dex.code.RopTranslator.TranslationVisitor, p210w1.AbstractC7146h.InterfaceC7148b
        public void visitThrowingCstInsn(C7169y c7169y) {
            super.visitThrowingCstInsn(c7169y);
            addIntroductionIfNecessary(c7169y);
        }

        @Override // com.android.p030dx.dex.code.RopTranslator.TranslationVisitor, p210w1.AbstractC7146h.InterfaceC7148b
        public void visitThrowingInsn(C7170z c7170z) {
            super.visitThrowingInsn(c7170z);
            addIntroductionIfNecessary(c7170z);
        }
    }

    /* renamed from: com.android.dx.dex.code.RopTranslator$TranslationVisitor */
    /* loaded from: classes.dex */
    public class TranslationVisitor implements AbstractC7146h.InterfaceC7148b {
        private C7138b block;
        private CodeAddress lastAddress;
        private final OutputCollector output;

        public void addOutput(DalvInsn dalvInsn) {
            this.output.add(dalvInsn);
        }

        public void addOutputSuffix(DalvInsn dalvInsn) {
            this.output.addSuffix(dalvInsn);
        }

        public TranslationVisitor(OutputCollector outputCollector) {
            this.output = outputCollector;
        }

        private C7157q getNextMoveResultPseudo() {
            int m2444f = this.block.m2444f();
            if (m2444f < 0) {
                return null;
            }
            AbstractC7146h m2411A = RopTranslator.this.method.m2308b().m2433L(m2444f).m2446d().m2411A(0);
            if (m2411A.m2417i().m2314d() != 56) {
                return null;
            }
            return m2411A.m2415k();
        }

        public DalvInsn getPrevNonSpecialInsn() {
            for (int size = this.output.size() - 1; size >= 0; size--) {
                DalvInsn dalvInsn = this.output.get(size);
                if (dalvInsn.getOpcode().getOpcode() != -1) {
                    return dalvInsn;
                }
            }
            return null;
        }

        public void setBlock(C7138b c7138b, CodeAddress codeAddress) {
            this.block = c7138b;
            this.lastAddress = codeAddress;
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitFillArrayDataInsn(C7145g c7145g) {
            C7167w m2416j = c7145g.m2416j();
            AbstractC7204a m2422t = c7145g.m2422t();
            ArrayList<AbstractC7204a> m2421u = c7145g.m2421u();
            if (c7145g.m2417i().m2316b() == 1) {
                CodeAddress codeAddress = new CodeAddress(m2416j);
                DalvInsn arrayData = new ArrayData(m2416j, this.lastAddress, m2421u, m2422t);
                DalvInsn targetInsn = new TargetInsn(Dops.FILL_ARRAY_DATA, m2416j, RopTranslator.getRegs(c7145g), codeAddress);
                addOutput(this.lastAddress);
                addOutput(targetInsn);
                addOutputSuffix(new OddSpacer(m2416j));
                addOutputSuffix(codeAddress);
                addOutputSuffix(arrayData);
                return;
            }
            throw new RuntimeException("shouldn't happen");
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitInvokePolymorphicInsn(C7150j c7150j) {
            C7167w m2416j = c7150j.m2416j();
            Dop dopFor = RopToDop.dopFor(c7150j);
            C7164t m2417i = c7150j.m2417i();
            if (m2417i.m2316b() == 6) {
                if (m2417i.m2311g()) {
                    addOutput(this.lastAddress);
                    addOutput(new MultiCstInsn(dopFor, m2416j, c7150j.m2414m(), new AbstractC7204a[]{c7150j.m2404w(), c7150j.m2405u()}));
                    return;
                }
                throw new RuntimeException("Expected call-like operation");
            }
            throw new RuntimeException("Expected BRANCH_THROW got " + m2417i.m2316b());
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitPlainCstInsn(C7154n c7154n) {
            C7167w m2416j = c7154n.m2416j();
            Dop dopFor = RopToDop.dopFor(c7154n);
            C7164t m2417i = c7154n.m2417i();
            int m2314d = m2417i.m2314d();
            if (m2417i.m2316b() == 1) {
                if (m2314d == 3) {
                    if (!RopTranslator.this.paramsAreInOrder) {
                        C7157q m2415k = c7154n.m2415k();
                        addOutput(new SimpleInsn(dopFor, m2416j, C7160r.m2343E(m2415k, C7157q.m2373J((RopTranslator.this.regCount - RopTranslator.this.paramSize) + ((C7228p) c7154n.m2427t()).m2075B(), m2415k.getType()))));
                        return;
                    }
                    return;
                }
                addOutput(new CstInsn(dopFor, m2416j, RopTranslator.getRegs(c7154n), c7154n.m2427t()));
                return;
            }
            throw new RuntimeException("shouldn't happen");
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitPlainInsn(C7155o c7155o) {
            DalvInsn simpleInsn;
            C7164t m2417i = c7155o.m2417i();
            if (m2417i.m2314d() == 54 || m2417i.m2314d() == 56) {
                return;
            }
            C7167w m2416j = c7155o.m2416j();
            Dop dopFor = RopToDop.dopFor(c7155o);
            int m2316b = m2417i.m2316b();
            if (m2316b != 1 && m2316b != 2) {
                if (m2316b != 3) {
                    if (m2316b != 4) {
                        if (m2316b != 6) {
                            throw new RuntimeException("shouldn't happen");
                        }
                    } else {
                        simpleInsn = new TargetInsn(dopFor, m2416j, RopTranslator.getRegs(c7155o), RopTranslator.this.addresses.getStart(this.block.m2442h().m26470B(1)));
                        addOutput(simpleInsn);
                    }
                } else {
                    return;
                }
            }
            simpleInsn = new SimpleInsn(dopFor, m2416j, RopTranslator.getRegs(c7155o));
            addOutput(simpleInsn);
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitSwitchInsn(C7168x c7168x) {
            Dop dop;
            C7167w m2416j = c7168x.m2416j();
            C0441j m2251t = c7168x.m2251t();
            C0441j m2442h = this.block.m2442h();
            int size = m2251t.size();
            int size2 = m2442h.size();
            int m2444f = this.block.m2444f();
            if (size == size2 - 1 && m2444f == m2442h.m26470B(size)) {
                CodeAddress[] codeAddressArr = new CodeAddress[size];
                for (int i = 0; i < size; i++) {
                    codeAddressArr[i] = RopTranslator.this.addresses.getStart(m2442h.m26470B(i));
                }
                CodeAddress codeAddress = new CodeAddress(m2416j);
                CodeAddress codeAddress2 = new CodeAddress(this.lastAddress.getPosition(), true);
                SwitchData switchData = new SwitchData(m2416j, codeAddress2, m2251t, codeAddressArr);
                if (switchData.isPacked()) {
                    dop = Dops.PACKED_SWITCH;
                } else {
                    dop = Dops.SPARSE_SWITCH;
                }
                DalvInsn targetInsn = new TargetInsn(dop, m2416j, RopTranslator.getRegs(c7168x), codeAddress);
                addOutput(codeAddress2);
                addOutput(targetInsn);
                addOutputSuffix(new OddSpacer(m2416j));
                addOutputSuffix(codeAddress);
                addOutputSuffix(switchData);
                return;
            }
            throw new RuntimeException("shouldn't happen");
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitThrowingCstInsn(C7169y c7169y) {
            boolean z;
            boolean z2;
            DalvInsn cstInsn;
            int opcode;
            C7167w m2416j = c7169y.m2416j();
            Dop dopFor = RopToDop.dopFor(c7169y);
            C7164t m2417i = c7169y.m2417i();
            AbstractC7204a m2427t = c7169y.m2427t();
            if (m2417i.m2316b() == 6) {
                addOutput(this.lastAddress);
                if (m2417i.m2311g()) {
                    addOutput(new CstInsn(dopFor, m2416j, c7169y.m2414m(), m2427t));
                    return;
                }
                C7157q nextMoveResultPseudo = getNextMoveResultPseudo();
                C7160r regs = RopTranslator.getRegs(c7169y, nextMoveResultPseudo);
                if (!dopFor.hasResult() && m2417i.m2314d() != 43) {
                    z = false;
                } else {
                    z = true;
                }
                if (nextMoveResultPseudo != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z == z2) {
                    if (m2417i.m2314d() == 41 && dopFor.getOpcode() != 35) {
                        cstInsn = new SimpleInsn(dopFor, m2416j, regs);
                    } else {
                        cstInsn = new CstInsn(dopFor, m2416j, regs, m2427t);
                    }
                    DalvInsn prevNonSpecialInsn = getPrevNonSpecialInsn();
                    if (dopFor.getOpcode() == 32 && prevNonSpecialInsn != null && (((opcode = prevNonSpecialInsn.getOpcode().getOpcode()) == 7 || opcode == 8 || opcode == 9) && cstInsn.getRegisters().size() > 0 && prevNonSpecialInsn.getRegisters().size() > 1 && cstInsn.getRegisters().m2347A(0).m2380B() == prevNonSpecialInsn.getRegisters().m2347A(1).m2380B())) {
                        addOutput(new SimpleInsn(Dops.NOP, m2416j, C7160r.f36212a));
                    }
                    addOutput(cstInsn);
                    return;
                }
                throw new RuntimeException("Insn with result/move-result-pseudo mismatch " + c7169y);
            }
            throw new RuntimeException("Expected BRANCH_THROW got " + m2417i.m2316b());
        }

        @Override // p210w1.AbstractC7146h.InterfaceC7148b
        public void visitThrowingInsn(C7170z c7170z) {
            boolean z;
            C7167w m2416j = c7170z.m2416j();
            Dop dopFor = RopToDop.dopFor(c7170z);
            if (c7170z.m2417i().m2316b() == 6) {
                C7157q nextMoveResultPseudo = getNextMoveResultPseudo();
                boolean hasResult = dopFor.hasResult();
                if (nextMoveResultPseudo != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (hasResult == z) {
                    addOutput(this.lastAddress);
                    addOutput(new SimpleInsn(dopFor, m2416j, RopTranslator.getRegs(c7170z, nextMoveResultPseudo)));
                    return;
                }
                throw new RuntimeException("Insn with result/move-result-pseudo mismatch" + c7170z);
            }
            throw new RuntimeException("shouldn't happen");
        }
    }

    private static boolean calculateParamsAreInOrder(C7165u c7165u, final int i) {
        final boolean[] zArr = {true};
        final int m2434K = c7165u.m2308b().m2434K();
        c7165u.m2308b().m2439E(new AbstractC7146h.C7147a() { // from class: com.android.dx.dex.code.RopTranslator.1
            @Override // p210w1.AbstractC7146h.C7147a, p210w1.AbstractC7146h.InterfaceC7148b
            public void visitPlainCstInsn(C7154n c7154n) {
                boolean z;
                if (c7154n.m2417i().m2314d() == 3) {
                    int m2075B = ((C7228p) c7154n.m2427t()).m2075B();
                    boolean[] zArr2 = zArr;
                    if (zArr2[0] && (m2434K - i) + m2075B == c7154n.m2415k().m2380B()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    zArr2[0] = z;
                }
            }
        });
        return zArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static C7160r getRegs(AbstractC7146h abstractC7146h) {
        return getRegs(abstractC7146h, abstractC7146h.m2415k());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static C7160r getRegs(AbstractC7146h abstractC7146h, C7157q c7157q) {
        C7160r m2414m = abstractC7146h.m2414m();
        if (abstractC7146h.m2417i().m2310h() && m2414m.size() == 2 && c7157q.m2380B() == m2414m.m2347A(1).m2380B()) {
            m2414m = C7160r.m2343E(m2414m.m2347A(1), m2414m.m2347A(0));
        }
        return c7157q == null ? m2414m : m2414m.m2339J(c7157q);
    }

    private void outputBlock(C7138b c7138b, int i) {
        CodeAddress start = this.addresses.getStart(c7138b);
        this.output.add(start);
        C7153m c7153m = this.locals;
        if (c7153m != null) {
            this.output.add(new LocalSnapshot(start.getPosition(), c7153m.m2391C(c7138b)));
        }
        this.translationVisitor.setBlock(c7138b, this.addresses.getLast(c7138b));
        c7138b.m2446d().m2407z(this.translationVisitor);
        this.output.add(this.addresses.getEnd(c7138b));
        int m2444f = c7138b.m2444f();
        AbstractC7146h m2445e = c7138b.m2445e();
        if (m2444f >= 0 && m2444f != i) {
            if (m2445e.m2417i().m2316b() == 4 && c7138b.m2443g() == i) {
                this.output.reverseBranch(1, this.addresses.getStart(m2444f));
                return;
            }
            this.output.add(new TargetInsn(Dops.GOTO, m2445e.m2416j(), C7160r.f36212a, this.addresses.getStart(m2444f)));
        }
    }

    private void outputInstructions() {
        int i;
        C7140c m2308b = this.method.m2308b();
        int[] iArr = this.order;
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 1;
            if (i3 == iArr.length) {
                i = -1;
            } else {
                i = iArr[i3];
            }
            outputBlock(m2308b.m2433L(iArr[i2]), i);
            i2 = i3;
        }
    }

    private void pickOrder() {
        int m26470B;
        C7140c m2308b = this.method.m2308b();
        int size = m2308b.size();
        int m26450z = m2308b.m26450z();
        int[] m26526i = C0431c.m26526i(m26450z);
        int[] m26526i2 = C0431c.m26526i(m26450z);
        for (int i = 0; i < size; i++) {
            C0431c.m26524k(m26526i, m2308b.m2438F(i).mo2449a());
        }
        int[] iArr = new int[size];
        int m2307c = this.method.m2307c();
        int i2 = 0;
        while (m2307c != -1) {
            while (true) {
                C0441j m2306d = this.method.m2306d(m2307c);
                int size2 = m2306d.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    m26470B = m2306d.m26470B(i3);
                    if (C0431c.m26529f(m26526i2, m26470B)) {
                        break;
                    } else if (C0431c.m26529f(m26526i, m26470B) && m2308b.m2433L(m26470B).m2444f() == m2307c) {
                        break;
                    }
                }
                C0431c.m26524k(m26526i2, m26470B);
                m2307c = m26470B;
            }
            while (m2307c != -1) {
                C0431c.m26532c(m26526i, m2307c);
                C0431c.m26532c(m26526i2, m2307c);
                iArr[i2] = m2307c;
                i2++;
                C7138b m2433L = m2308b.m2433L(m2307c);
                C7138b m2432M = m2308b.m2432M(m2433L);
                if (m2432M == null) {
                    break;
                }
                int mo2449a = m2432M.mo2449a();
                int m2444f = m2433L.m2444f();
                if (C0431c.m26529f(m26526i, mo2449a)) {
                    m2307c = mo2449a;
                } else if (m2444f != mo2449a && m2444f >= 0 && C0431c.m26529f(m26526i, m2444f)) {
                    m2307c = m2444f;
                } else {
                    C0441j m2442h = m2433L.m2442h();
                    int size3 = m2442h.size();
                    int i4 = 0;
                    while (true) {
                        if (i4 < size3) {
                            int m26470B2 = m2442h.m26470B(i4);
                            if (C0431c.m26529f(m26526i, m26470B2)) {
                                m2307c = m26470B2;
                                break;
                            }
                            i4++;
                        } else {
                            m2307c = -1;
                            break;
                        }
                    }
                }
            }
            m2307c = C0431c.m26530e(m26526i, 0);
        }
        if (i2 == size) {
            this.order = iArr;
            return;
        }
        throw new RuntimeException("shouldn't happen");
    }

    public static DalvCode translate(C7165u c7165u, int i, C7153m c7153m, int i2, DexOptions dexOptions) {
        return new RopTranslator(c7165u, i, c7153m, i2, dexOptions).translateAndGetResult();
    }

    private RopTranslator(C7165u c7165u, int i, C7153m c7153m, int i2, DexOptions dexOptions) {
        int i3;
        this.dexOptions = dexOptions;
        this.method = c7165u;
        this.positionInfo = i;
        this.locals = c7153m;
        this.addresses = new BlockAddresses(c7165u);
        this.paramSize = i2;
        boolean calculateParamsAreInOrder = calculateParamsAreInOrder(c7165u, i2);
        this.paramsAreInOrder = calculateParamsAreInOrder;
        C7140c m2308b = c7165u.m2308b();
        int size = m2308b.size();
        int i4 = size * 3;
        int m2436I = m2308b.m2436I() + i4;
        int m2393A = c7153m != null ? m2436I + size + c7153m.m2393A() : m2436I;
        int m2434K = m2308b.m2434K();
        if (calculateParamsAreInOrder) {
            i3 = 0;
        } else {
            i3 = i2;
        }
        int i5 = m2434K + i3;
        this.regCount = i5;
        OutputCollector outputCollector = new OutputCollector(dexOptions, m2393A, i4, i5, i2);
        this.output = outputCollector;
        if (c7153m != null) {
            this.translationVisitor = new LocalVariableAwareTranslationVisitor(outputCollector, c7153m);
        } else {
            this.translationVisitor = new TranslationVisitor(outputCollector);
        }
    }

    private DalvCode translateAndGetResult() {
        pickOrder();
        outputInstructions();
        return new DalvCode(this.positionInfo, this.output.getFinisher(), new StdCatchBuilder(this.method, this.order, this.addresses));
    }
}
