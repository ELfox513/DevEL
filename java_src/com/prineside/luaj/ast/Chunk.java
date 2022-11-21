package com.prineside.luaj.ast;
/* loaded from: classes2.dex */
public class Chunk extends SyntaxElement {
    public final Block block;

    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    public Chunk(Block block) {
        this.block = block;
    }
}
