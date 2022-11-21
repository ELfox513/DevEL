package com.prineside.luaj.ast;

import com.prineside.luaj.ast.Exp;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class Stat extends SyntaxElement {

    /* loaded from: classes2.dex */
    public static class Break extends Stat {
        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }
    }

    /* loaded from: classes2.dex */
    public static class Return extends Stat {
        public final List<Exp> values;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public int nreturns() {
            int i;
            List<Exp> list = this.values;
            if (list != null) {
                i = list.size();
            } else {
                i = 0;
            }
            if (i > 0 && this.values.get(i - 1).isvarargexp()) {
                return -1;
            }
            return i;
        }

        public Return(List<Exp> list) {
            this.values = list;
        }
    }

    public static Stat assignment(List<Exp.VarExp> list, List<Exp> list2) {
        return new Assign(list, list2);
    }

    public static Stat block(Block block) {
        return block;
    }

    public static Stat breakstat() {
        return new Break();
    }

    public static Stat forgeneric(List<Name> list, List<Exp> list2, Block block) {
        return new GenericFor(list, list2, block);
    }

    public static Stat fornumeric(String str, Exp exp, Exp exp2, Exp exp3, Block block) {
        return new NumericFor(str, exp, exp2, exp3, block);
    }

    public static Stat functioncall(Exp.FuncCall funcCall) {
        return new FuncCallStat(funcCall);
    }

    public static Stat functiondef(FuncName funcName, FuncBody funcBody) {
        return new FuncDef(funcName, funcBody);
    }

    public static Stat gotostat(String str) {
        return new Goto(str);
    }

    public static Stat ifthenelse(Exp exp, Block block, List<Exp> list, List<Block> list2, Block block2) {
        return new IfThenElse(exp, block, list, list2, block2);
    }

    public static Stat labelstat(String str) {
        return new Label(str);
    }

    public static Stat localassignment(List<Name> list, List<Exp> list2) {
        return new LocalAssign(list, list2);
    }

    public static Stat localfunctiondef(String str, FuncBody funcBody) {
        return new LocalFuncDef(str, funcBody);
    }

    public static Stat repeatuntil(Block block, Exp exp) {
        return new RepeatUntil(block, exp);
    }

    public static Stat returnstat(List<Exp> list) {
        return new Return(list);
    }

    public static Stat whiledo(Exp exp, Block block) {
        return new WhileDo(exp, block);
    }

    public abstract void accept(Visitor visitor);

    /* loaded from: classes2.dex */
    public static class Assign extends Stat {
        public final List<Exp> exps;
        public final List<Exp.VarExp> vars;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public Assign(List<Exp.VarExp> list, List<Exp> list2) {
            this.vars = list;
            this.exps = list2;
        }
    }

    /* loaded from: classes2.dex */
    public static class FuncCallStat extends Stat {
        public final Exp.FuncCall funccall;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public FuncCallStat(Exp.FuncCall funcCall) {
            this.funccall = funcCall;
        }
    }

    /* loaded from: classes2.dex */
    public static class FuncDef extends Stat {
        public final FuncBody body;
        public final FuncName name;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public FuncDef(FuncName funcName, FuncBody funcBody) {
            this.name = funcName;
            this.body = funcBody;
        }
    }

    /* loaded from: classes2.dex */
    public static class GenericFor extends Stat {
        public Block block;
        public List<Exp> exps;
        public List<Name> names;
        public NameScope scope;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public GenericFor(List<Name> list, List<Exp> list2, Block block) {
            this.names = list;
            this.exps = list2;
            this.block = block;
        }
    }

    /* loaded from: classes2.dex */
    public static class Goto extends Stat {
        public final String name;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public Goto(String str) {
            this.name = str;
        }
    }

    /* loaded from: classes2.dex */
    public static class IfThenElse extends Stat {
        public final Block elseblock;
        public final List<Block> elseifblocks;
        public final List<Exp> elseifexps;
        public final Block ifblock;
        public final Exp ifexp;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public IfThenElse(Exp exp, Block block, List<Exp> list, List<Block> list2, Block block2) {
            this.ifexp = exp;
            this.ifblock = block;
            this.elseifexps = list;
            this.elseifblocks = list2;
            this.elseblock = block2;
        }
    }

    /* loaded from: classes2.dex */
    public static class Label extends Stat {
        public final String name;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public Label(String str) {
            this.name = str;
        }
    }

    /* loaded from: classes2.dex */
    public static class LocalAssign extends Stat {
        public final List<Name> names;
        public final List<Exp> values;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public LocalAssign(List<Name> list, List<Exp> list2) {
            this.names = list;
            this.values = list2;
        }
    }

    /* loaded from: classes2.dex */
    public static class LocalFuncDef extends Stat {
        public final FuncBody body;
        public final Name name;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public LocalFuncDef(String str, FuncBody funcBody) {
            this.name = new Name(str);
            this.body = funcBody;
        }
    }

    /* loaded from: classes2.dex */
    public static class NumericFor extends Stat {
        public final Block block;
        public final Exp initial;
        public final Exp limit;
        public final Name name;
        public NameScope scope;
        public final Exp step;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public NumericFor(String str, Exp exp, Exp exp2, Exp exp3, Block block) {
            this.name = new Name(str);
            this.initial = exp;
            this.limit = exp2;
            this.step = exp3;
            this.block = block;
        }
    }

    /* loaded from: classes2.dex */
    public static class RepeatUntil extends Stat {
        public final Block block;
        public final Exp exp;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public RepeatUntil(Block block, Exp exp) {
            this.block = block;
            this.exp = exp;
        }
    }

    /* loaded from: classes2.dex */
    public static class WhileDo extends Stat {
        public final Block block;
        public final Exp exp;

        @Override // com.prineside.luaj.ast.Stat
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public WhileDo(Exp exp, Block block) {
            this.exp = exp;
            this.block = block;
        }
    }
}
