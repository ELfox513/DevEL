package com.prineside.luaj.ast;

import com.prineside.luaj.LuaString;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class FuncArgs extends SyntaxElement {
    public final List<Exp> exps;

    public FuncArgs(List<Exp> list) {
        this.exps = list;
    }

    public static FuncArgs explist(List<Exp> list) {
        return new FuncArgs(list);
    }

    public static FuncArgs string(LuaString luaString) {
        return new FuncArgs(luaString);
    }

    public static FuncArgs tableconstructor(TableConstructor tableConstructor) {
        return new FuncArgs(tableConstructor);
    }

    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    public FuncArgs(LuaString luaString) {
        ArrayList arrayList = new ArrayList();
        this.exps = arrayList;
        arrayList.add(Exp.constant(luaString));
    }

    public FuncArgs(TableConstructor tableConstructor) {
        ArrayList arrayList = new ArrayList();
        this.exps = arrayList;
        arrayList.add(tableConstructor);
    }
}
