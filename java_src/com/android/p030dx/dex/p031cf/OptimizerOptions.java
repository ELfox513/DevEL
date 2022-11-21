package com.android.p030dx.dex.p031cf;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintStream;
import java.util.EnumSet;
import java.util.HashSet;
import p210w1.C7165u;
import p210w1.InterfaceC7137a0;
import p234z1.C7559m;
/* renamed from: com.android.dx.dex.cf.OptimizerOptions */
/* loaded from: classes.dex */
public class OptimizerOptions {
    private HashSet<String> dontOptimizeList;
    private HashSet<String> optimizeList;
    private boolean optimizeListsLoaded;

    private static HashSet<String> loadStringsFromFile(String str) {
        HashSet<String> hashSet = new HashSet<>();
        try {
            FileReader fileReader = new FileReader(str);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    hashSet.add(readLine);
                } else {
                    fileReader.close();
                    return hashSet;
                }
            }
        } catch (IOException e) {
            throw new RuntimeException("Error with optimize list: " + str, e);
        }
    }

    public void compareOptimizerStep(C7165u c7165u, int i, boolean z, CfOptions cfOptions, InterfaceC7137a0 interfaceC7137a0, C7165u c7165u2) {
        EnumSet allOf = EnumSet.allOf(C7559m.EnumC7560a.class);
        allOf.remove(C7559m.EnumC7560a.CONST_COLLECTOR);
        C7165u m1209d = C7559m.m1209d(c7165u, i, z, cfOptions.localInfo, interfaceC7137a0, allOf);
        int m2437H = c7165u2.m2308b().m2437H();
        int m2437H2 = m1209d.m2308b().m2437H();
        PrintStream printStream = System.err;
        double m2434K = (m1209d.m2308b().m2434K() - c7165u2.m2308b().m2434K()) / m1209d.m2308b().m2434K();
        Double.isNaN(m2434K);
        double d = (m2437H2 - m2437H) / m2437H2;
        Double.isNaN(d);
        printStream.printf("optimize step regs:(%d/%d/%.2f%%) insns:(%d/%d/%.2f%%)\n", Integer.valueOf(c7165u2.m2308b().m2434K()), Integer.valueOf(m1209d.m2308b().m2434K()), Double.valueOf(m2434K * 100.0d), Integer.valueOf(m2437H), Integer.valueOf(m2437H2), Double.valueOf(d * 100.0d));
    }

    public void loadOptimizeLists(String str, String str2) {
        if (this.optimizeListsLoaded) {
            return;
        }
        if (str != null && str2 != null) {
            throw new RuntimeException("optimize and don't optimize lists  are mutually exclusive.");
        }
        if (str != null) {
            this.optimizeList = loadStringsFromFile(str);
        }
        if (str2 != null) {
            this.dontOptimizeList = loadStringsFromFile(str2);
        }
        this.optimizeListsLoaded = true;
    }

    public boolean shouldOptimize(String str) {
        HashSet<String> hashSet = this.optimizeList;
        if (hashSet != null) {
            return hashSet.contains(str);
        }
        HashSet<String> hashSet2 = this.dontOptimizeList;
        if (hashSet2 == null) {
            return true;
        }
        return !hashSet2.contains(str);
    }
}
