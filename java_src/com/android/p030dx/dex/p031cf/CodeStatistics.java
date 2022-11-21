package com.android.p030dx.dex.p031cf;

import com.android.p030dx.dex.code.DalvCode;
import java.io.PrintStream;
import p210w1.C7165u;
/* renamed from: com.android.dx.dex.cf.CodeStatistics */
/* loaded from: classes.dex */
public final class CodeStatistics {
    private static final boolean DEBUG = false;
    public int runningDeltaRegisters = 0;
    public int runningDeltaInsns = 0;
    public int runningTotalInsns = 0;
    public int dexRunningDeltaRegisters = 0;
    public int dexRunningDeltaInsns = 0;
    public int dexRunningTotalInsns = 0;
    public int runningOriginalBytes = 0;

    public void dumpStatistics(PrintStream printStream) {
        int i;
        int i2;
        double abs = this.runningDeltaInsns / (this.runningTotalInsns + Math.abs(i));
        Double.isNaN(abs);
        printStream.printf("Optimizer Delta Rop Insns: %d total: %d (%.2f%%) Delta Registers: %d\n", Integer.valueOf(this.runningDeltaInsns), Integer.valueOf(this.runningTotalInsns), Double.valueOf(abs * 100.0d), Integer.valueOf(this.runningDeltaRegisters));
        double abs2 = this.dexRunningDeltaInsns / (this.dexRunningTotalInsns + Math.abs(i2));
        Double.isNaN(abs2);
        printStream.printf("Optimizer Delta Dex Insns: Insns: %d total: %d (%.2f%%) Delta Registers: %d\n", Integer.valueOf(this.dexRunningDeltaInsns), Integer.valueOf(this.dexRunningTotalInsns), Double.valueOf(abs2 * 100.0d), Integer.valueOf(this.dexRunningDeltaRegisters));
        printStream.printf("Original bytecode byte count: %d\n", Integer.valueOf(this.runningOriginalBytes));
    }

    public void updateOriginalByteCount(int i) {
        this.runningOriginalBytes += i;
    }

    public void updateDexStatistics(DalvCode dalvCode, DalvCode dalvCode2) {
        this.dexRunningDeltaInsns += dalvCode2.getInsns().codeSize() - dalvCode.getInsns().codeSize();
        this.dexRunningDeltaRegisters += dalvCode2.getInsns().getRegistersSize() - dalvCode.getInsns().getRegistersSize();
        this.dexRunningTotalInsns += dalvCode2.getInsns().codeSize();
    }

    public void updateRopStatistics(C7165u c7165u, C7165u c7165u2) {
        int m2437H = c7165u.m2308b().m2437H();
        int m2434K = c7165u.m2308b().m2434K();
        int m2437H2 = c7165u2.m2308b().m2437H();
        this.runningDeltaInsns += m2437H2 - m2437H;
        this.runningDeltaRegisters += c7165u2.m2308b().m2434K() - m2434K;
        this.runningTotalInsns += m2437H2;
    }
}
