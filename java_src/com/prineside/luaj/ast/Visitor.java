package com.prineside.luaj.ast;

import com.prineside.luaj.ast.Exp;
import com.prineside.luaj.ast.Stat;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class Visitor {
    public void visit(Chunk chunk) {
        chunk.block.accept(this);
    }

    public void visit(Exp.Constant constant) {
    }

    public void visit(Exp.VarargsExp varargsExp) {
    }

    public void visit(Name name) {
    }

    public void visit(NameScope nameScope) {
    }

    public void visit(Stat.Break r1) {
    }

    public void visit(Stat.Goto r1) {
    }

    public void visit(Stat.Label label) {
    }

    public void visit(String str) {
    }

    public void visit(Block block) {
        visit(block.scope);
        List<Stat> list = block.stats;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                block.stats.get(i).accept(this);
            }
        }
    }

    public void visitExps(List<Exp> list) {
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                list.get(i).accept(this);
            }
        }
    }

    public void visitNames(List<Name> list) {
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                visit(list.get(i));
            }
        }
    }

    public void visitVars(List<Exp.VarExp> list) {
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                list.get(i).accept(this);
            }
        }
    }

    public void visit(Stat.Assign assign) {
        visitVars(assign.vars);
        visitExps(assign.exps);
    }

    public void visit(Stat.FuncCallStat funcCallStat) {
        funcCallStat.funccall.accept(this);
    }

    public void visit(Stat.FuncDef funcDef) {
        funcDef.body.accept(this);
    }

    public void visit(Stat.GenericFor genericFor) {
        visit(genericFor.scope);
        visitNames(genericFor.names);
        visitExps(genericFor.exps);
        genericFor.block.accept(this);
    }

    public void visit(Stat.IfThenElse ifThenElse) {
        ifThenElse.ifexp.accept(this);
        ifThenElse.ifblock.accept(this);
        List<Block> list = ifThenElse.elseifblocks;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ifThenElse.elseifexps.get(i).accept(this);
                ifThenElse.elseifblocks.get(i).accept(this);
            }
        }
        Block block = ifThenElse.elseblock;
        if (block != null) {
            visit(block);
        }
    }

    public void visit(Stat.LocalAssign localAssign) {
        visitNames(localAssign.names);
        visitExps(localAssign.values);
    }

    public void visit(Stat.LocalFuncDef localFuncDef) {
        visit(localFuncDef.name);
        localFuncDef.body.accept(this);
    }

    public void visit(Stat.NumericFor numericFor) {
        visit(numericFor.scope);
        visit(numericFor.name);
        numericFor.initial.accept(this);
        numericFor.limit.accept(this);
        Exp exp = numericFor.step;
        if (exp != null) {
            exp.accept(this);
        }
        numericFor.block.accept(this);
    }

    public void visit(Stat.RepeatUntil repeatUntil) {
        repeatUntil.block.accept(this);
        repeatUntil.exp.accept(this);
    }

    public void visit(Stat.Return r1) {
        visitExps(r1.values);
    }

    public void visit(Stat.WhileDo whileDo) {
        whileDo.exp.accept(this);
        whileDo.block.accept(this);
    }

    public void visit(FuncBody funcBody) {
        visit(funcBody.scope);
        funcBody.parlist.accept(this);
        funcBody.block.accept(this);
    }

    public void visit(FuncArgs funcArgs) {
        visitExps(funcArgs.exps);
    }

    public void visit(TableField tableField) {
        String str = tableField.name;
        if (str != null) {
            visit(str);
        }
        Exp exp = tableField.index;
        if (exp != null) {
            exp.accept(this);
        }
        tableField.rhs.accept(this);
    }

    public void visit(Exp.AnonFuncDef anonFuncDef) {
        anonFuncDef.body.accept(this);
    }

    public void visit(Exp.BinopExp binopExp) {
        binopExp.lhs.accept(this);
        binopExp.rhs.accept(this);
    }

    public void visit(Exp.FieldExp fieldExp) {
        fieldExp.lhs.accept(this);
        visit(fieldExp.name);
    }

    public void visit(Exp.FuncCall funcCall) {
        funcCall.lhs.accept(this);
        funcCall.args.accept(this);
    }

    public void visit(Exp.IndexExp indexExp) {
        indexExp.lhs.accept(this);
        indexExp.exp.accept(this);
    }

    public void visit(Exp.MethodCall methodCall) {
        methodCall.lhs.accept(this);
        visit(methodCall.name);
        methodCall.args.accept(this);
    }

    public void visit(Exp.NameExp nameExp) {
        visit(nameExp.name);
    }

    public void visit(Exp.ParensExp parensExp) {
        parensExp.exp.accept(this);
    }

    public void visit(Exp.UnopExp unopExp) {
        unopExp.rhs.accept(this);
    }

    public void visit(ParList parList) {
        visitNames(parList.names);
    }

    public void visit(TableConstructor tableConstructor) {
        List<TableField> list = tableConstructor.fields;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                tableConstructor.fields.get(i).accept(this);
            }
        }
    }
}
