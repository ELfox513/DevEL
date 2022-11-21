package com.prineside.luaj.ast;
/* loaded from: classes2.dex */
public class FuncBody extends SyntaxElement {
    public Block block;
    public ParList parlist;
    public NameScope scope;

    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    public FuncBody(ParList parList, Block block) {
        this.parlist = parList == null ? ParList.EMPTY_PARLIST : parList;
        this.block = block;
    }
}
