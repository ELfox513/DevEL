package com.prineside.luaj.ast;
/* loaded from: classes2.dex */
public class TableField extends SyntaxElement {
    public final Exp index;
    public final String name;
    public final Exp rhs;

    public static TableField keyedField(Exp exp, Exp exp2) {
        return new TableField(exp, null, exp2);
    }

    public static TableField listField(Exp exp) {
        return new TableField(null, null, exp);
    }

    public static TableField namedField(String str, Exp exp) {
        return new TableField(null, str, exp);
    }

    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    public TableField(Exp exp, String str, Exp exp2) {
        this.index = exp;
        this.name = str;
        this.rhs = exp2;
    }
}
