package com.android.p030dx.dex.code;

import java.util.HashSet;
import p218x1.AbstractC7204a;
import p226y1.C7402c;
/* renamed from: com.android.dx.dex.code.DalvCode */
/* loaded from: classes.dex */
public final class DalvCode {
    private CatchTable catches;
    private DalvInsnList insns;
    private LocalList locals;
    private final int positionInfo;
    private PositionList positions;
    private CatchBuilder unprocessedCatches;
    private OutputFinisher unprocessedInsns;

    /* renamed from: com.android.dx.dex.code.DalvCode$AssignIndicesCallback */
    /* loaded from: classes.dex */
    public interface AssignIndicesCallback {
        int getIndex(AbstractC7204a abstractC7204a);
    }

    public void assignIndices(AssignIndicesCallback assignIndicesCallback) {
        this.unprocessedInsns.assignIndices(assignIndicesCallback);
    }

    public HashSet<C7402c> getCatchTypes() {
        return this.unprocessedCatches.getCatchTypes();
    }

    public HashSet<AbstractC7204a> getInsnConstants() {
        return this.unprocessedInsns.getAllConstants();
    }

    public boolean hasAnyCatches() {
        return this.unprocessedCatches.hasAnyCatches();
    }

    public boolean hasLocals() {
        return this.unprocessedInsns.hasAnyLocalInfo();
    }

    private void finishProcessingIfNecessary() {
        if (this.insns != null) {
            return;
        }
        DalvInsnList finishProcessingAndGetList = this.unprocessedInsns.finishProcessingAndGetList();
        this.insns = finishProcessingAndGetList;
        this.positions = PositionList.make(finishProcessingAndGetList, this.positionInfo);
        this.locals = LocalList.make(this.insns);
        this.catches = this.unprocessedCatches.build();
        this.unprocessedInsns = null;
        this.unprocessedCatches = null;
    }

    public boolean hasPositions() {
        if (this.positionInfo != 1 && this.unprocessedInsns.hasAnyPositionInfo()) {
            return true;
        }
        return false;
    }

    public DalvCode(int i, OutputFinisher outputFinisher, CatchBuilder catchBuilder) {
        if (outputFinisher != null) {
            if (catchBuilder != null) {
                this.positionInfo = i;
                this.unprocessedInsns = outputFinisher;
                this.unprocessedCatches = catchBuilder;
                this.catches = null;
                this.positions = null;
                this.locals = null;
                this.insns = null;
                return;
            }
            throw new NullPointerException("unprocessedCatches == null");
        }
        throw new NullPointerException("unprocessedInsns == null");
    }

    public CatchTable getCatches() {
        finishProcessingIfNecessary();
        return this.catches;
    }

    public DalvInsnList getInsns() {
        finishProcessingIfNecessary();
        return this.insns;
    }

    public LocalList getLocals() {
        finishProcessingIfNecessary();
        return this.locals;
    }

    public PositionList getPositions() {
        finishProcessingIfNecessary();
        return this.positions;
    }
}
