package com.prineside.luaj.ast;

import java.util.List;
/* loaded from: classes2.dex */
public class TableConstructor extends Exp {
    public List<TableField> fields;

    @Override // com.prineside.luaj.ast.Exp
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
