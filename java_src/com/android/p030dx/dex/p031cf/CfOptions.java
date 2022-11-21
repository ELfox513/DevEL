package com.android.p030dx.dex.p031cf;

import java.io.PrintStream;
/* renamed from: com.android.dx.dex.cf.CfOptions */
/* loaded from: classes.dex */
public class CfOptions {
    public boolean statistics;
    public int positionInfo = 2;
    public boolean localInfo = false;
    public boolean strictNameCheck = true;
    public boolean optimize = false;
    public String optimizeListFile = null;
    public String dontOptimizeListFile = null;
    public PrintStream warn = System.err;
}
