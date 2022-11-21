package com.prineside.luaj.ast;

import com.prineside.luaj.LuaValue;
import com.prineside.luaj.ast.Exp;
import com.prineside.luaj.ast.Stat;
import java.util.List;
import net.bytebuddy.description.method.ParameterDescription;
/* loaded from: classes2.dex */
public class NameResolver extends Visitor {

    /* renamed from: a */
    public NameScope f8048a = null;

    /* renamed from: a */
    public void m22747a(Name name) {
        name.variable = this.f8048a.define(name.name);
    }

    /* renamed from: c */
    public final void m22745c() {
        this.f8048a = this.f8048a.outerScope;
    }

    /* renamed from: d */
    public final void m22744d() {
        this.f8048a = new NameScope(this.f8048a);
    }

    @Override // com.prineside.luaj.ast.Visitor
    public void visit(Block block) {
        m22744d();
        block.scope = this.f8048a;
        super.visit(block);
        m22745c();
    }

    @Override // com.prineside.luaj.ast.Visitor
    public void visit(NameScope nameScope) {
    }

    /* renamed from: e */
    public Variable m22743e(Name name) {
        Variable find = this.f8048a.find(name.name);
        if (find.isLocal() && this.f8048a.functionNestingCount != find.definingScope.functionNestingCount) {
            find.isupvalue = true;
        }
        return find;
    }

    /* renamed from: b */
    public void m22746b(List<Name> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m22747a(list.get(i));
        }
    }

    @Override // com.prineside.luaj.ast.Visitor
    public void visit(FuncBody funcBody) {
        m22744d();
        NameScope nameScope = this.f8048a;
        nameScope.functionNestingCount++;
        funcBody.scope = nameScope;
        super.visit(funcBody);
        m22745c();
    }

    @Override // com.prineside.luaj.ast.Visitor
    public void visit(Stat.LocalFuncDef localFuncDef) {
        m22747a(localFuncDef.name);
        super.visit(localFuncDef);
    }

    @Override // com.prineside.luaj.ast.Visitor
    public void visit(Stat.NumericFor numericFor) {
        m22744d();
        numericFor.scope = this.f8048a;
        m22747a(numericFor.name);
        super.visit(numericFor);
        m22745c();
    }

    @Override // com.prineside.luaj.ast.Visitor
    public void visit(Stat.GenericFor genericFor) {
        m22744d();
        genericFor.scope = this.f8048a;
        m22746b(genericFor.names);
        super.visit(genericFor);
        m22745c();
    }

    @Override // com.prineside.luaj.ast.Visitor
    public void visit(Exp.NameExp nameExp) {
        Name name = nameExp.name;
        name.variable = m22743e(name);
        super.visit(nameExp);
    }

    @Override // com.prineside.luaj.ast.Visitor
    public void visit(Stat.FuncDef funcDef) {
        Name name = funcDef.name.name;
        name.variable = m22743e(name);
        funcDef.name.name.variable.hasassignments = true;
        super.visit(funcDef);
    }

    @Override // com.prineside.luaj.ast.Visitor
    public void visit(Stat.Assign assign) {
        super.visit(assign);
        int size = assign.vars.size();
        for (int i = 0; i < size; i++) {
            assign.vars.get(i).markHasAssignment();
        }
    }

    @Override // com.prineside.luaj.ast.Visitor
    public void visit(Stat.LocalAssign localAssign) {
        visitExps(localAssign.values);
        m22746b(localAssign.names);
        int size = localAssign.names.size();
        List<Exp> list = localAssign.values;
        int size2 = list != null ? list.size() : 0;
        boolean z = size2 > 0 && size2 < size && localAssign.values.get(size2 + (-1)).isvarargexp();
        for (int i = 0; i < size; i++) {
            if (i >= (z ? size2 - 1 : size2)) {
                break;
            }
            if (localAssign.values.get(i) instanceof Exp.Constant) {
                localAssign.names.get(i).variable.initialValue = ((Exp.Constant) localAssign.values.get(i)).value;
            }
        }
        if (z) {
            return;
        }
        while (size2 < size) {
            localAssign.names.get(size2).variable.initialValue = LuaValue.NIL;
            size2++;
        }
    }

    @Override // com.prineside.luaj.ast.Visitor
    public void visit(ParList parList) {
        List<Name> list = parList.names;
        if (list != null) {
            m22746b(list);
        }
        if (parList.isvararg) {
            this.f8048a.define(ParameterDescription.NAME_PREFIX);
        }
        super.visit(parList);
    }
}
