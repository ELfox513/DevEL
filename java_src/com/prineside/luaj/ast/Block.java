package com.prineside.luaj.ast;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class Block extends Stat {
    public NameScope scope;
    public List<Stat> stats = new ArrayList();

    @Override // com.prineside.luaj.ast.Stat
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    public void add(Stat stat) {
        if (stat == null) {
            return;
        }
        this.stats.add(stat);
    }
}
