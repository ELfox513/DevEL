package com.prineside.luaj.ast;

import com.prineside.luaj.LuaValue;
/* loaded from: classes2.dex */
public class Variable {
    public final NameScope definingScope;
    public boolean hasassignments;
    public LuaValue initialValue;
    public boolean isupvalue;
    public final String name;

    public Variable(String str) {
        this.name = str;
        this.definingScope = null;
    }

    public boolean isConstant() {
        return (this.hasassignments || this.initialValue == null) ? false : true;
    }

    public boolean isLocal() {
        return this.definingScope != null;
    }

    public Variable(String str, NameScope nameScope) {
        this.name = str;
        this.definingScope = nameScope;
    }
}
