package com.android.p030dx.dex.code;

import java.util.HashSet;
import p226y1.C7402c;
/* renamed from: com.android.dx.dex.code.CatchBuilder */
/* loaded from: classes.dex */
public interface CatchBuilder {
    CatchTable build();

    HashSet<C7402c> getCatchTypes();

    boolean hasAnyCatches();
}
