package com.android.p030dx.dex.code;

import com.android.p030dx.dex.DexOptions;
import java.util.ArrayList;
/* renamed from: com.android.dx.dex.code.OutputCollector */
/* loaded from: classes.dex */
public final class OutputCollector {
    private final OutputFinisher finisher;
    private ArrayList<DalvInsn> suffix;

    public void add(DalvInsn dalvInsn) {
        this.finisher.add(dalvInsn);
    }

    public void addSuffix(DalvInsn dalvInsn) {
        this.suffix.add(dalvInsn);
    }

    public void reverseBranch(int i, CodeAddress codeAddress) {
        this.finisher.reverseBranch(i, codeAddress);
    }

    public int size() {
        return this.finisher.size();
    }

    private void appendSuffixToOutput() {
        int size = this.suffix.size();
        for (int i = 0; i < size; i++) {
            this.finisher.add(this.suffix.get(i));
        }
        this.suffix = null;
    }

    public DalvInsn get(int i) {
        if (i < this.finisher.size() && i >= 0) {
            return this.finisher.get(i);
        }
        return null;
    }

    public OutputFinisher getFinisher() {
        if (this.suffix != null) {
            appendSuffixToOutput();
            return this.finisher;
        }
        throw new UnsupportedOperationException("already processed");
    }

    public OutputCollector(DexOptions dexOptions, int i, int i2, int i3, int i4) {
        this.finisher = new OutputFinisher(dexOptions, i, i3, i4);
        this.suffix = new ArrayList<>(i2);
    }
}
