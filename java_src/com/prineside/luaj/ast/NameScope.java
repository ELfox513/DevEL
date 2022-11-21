package com.prineside.luaj.ast;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class NameScope {

    /* renamed from: a */
    public static final Set<String> f8049a = new HashSet();
    public int functionNestingCount;
    public final Map<String, Variable> namedVariables;
    public final NameScope outerScope;

    public NameScope() {
        this.namedVariables = new HashMap();
        this.outerScope = null;
        this.functionNestingCount = 0;
    }

    static {
        String[] strArr = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while"};
        for (int i = 0; i < 21; i++) {
            f8049a.add(strArr[i]);
        }
    }

    /* renamed from: a */
    public final void m22742a(String str) {
        if (!f8049a.contains(str)) {
            return;
        }
        throw new IllegalArgumentException("name is a keyword: '" + str + "'");
    }

    public Variable define(String str) {
        m22742a(str);
        Variable variable = new Variable(str, this);
        this.namedVariables.put(str, variable);
        return variable;
    }

    public Variable find(String str) {
        m22742a(str);
        for (NameScope nameScope = this; nameScope != null; nameScope = nameScope.outerScope) {
            if (nameScope.namedVariables.containsKey(str)) {
                return nameScope.namedVariables.get(str);
            }
        }
        Variable variable = new Variable(str);
        this.namedVariables.put(str, variable);
        return variable;
    }

    public NameScope(NameScope nameScope) {
        this.namedVariables = new HashMap();
        this.outerScope = nameScope;
        this.functionNestingCount = nameScope != null ? nameScope.functionNestingCount : 0;
    }
}
