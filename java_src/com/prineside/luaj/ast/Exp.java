package com.prineside.luaj.ast;

import com.prineside.luaj.LuaValue;
/* loaded from: classes2.dex */
public abstract class Exp extends SyntaxElement {

    /* loaded from: classes2.dex */
    public static abstract class PrimaryExp extends Exp {
        @Override // com.prineside.luaj.ast.Exp
        public boolean isfunccall() {
            return false;
        }

        @Override // com.prineside.luaj.ast.Exp
        public boolean isvarexp() {
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class VarExp extends PrimaryExp {
        @Override // com.prineside.luaj.ast.Exp.PrimaryExp, com.prineside.luaj.ast.Exp
        public boolean isvarexp() {
            return true;
        }

        public void markHasAssignment() {
        }
    }

    /* loaded from: classes2.dex */
    public static class VarargsExp extends Exp {
        @Override // com.prineside.luaj.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        @Override // com.prineside.luaj.ast.Exp
        public boolean isvarargexp() {
            return true;
        }
    }

    /* renamed from: a */
    public static boolean m22749a(int i) {
        return i == 18 || i == 22;
    }

    public static Exp anonymousfunction(FuncBody funcBody) {
        return new AnonFuncDef(funcBody);
    }

    /* renamed from: b */
    public static int m22748b(int i) {
        switch (i) {
            case 13:
            case 14:
                return 4;
            case 15:
            case 16:
            case 17:
                return 5;
            case 18:
                return 7;
            case 19:
            case 20:
            case 21:
                return 6;
            case 22:
                return 3;
            default:
                switch (i) {
                    case 24:
                    case 25:
                    case 26:
                        return 2;
                    default:
                        switch (i) {
                            case 59:
                                return 0;
                            case 60:
                                return 1;
                            case 61:
                            case 62:
                            case 63:
                                return 2;
                            default:
                                throw new IllegalStateException("precedence of bad op " + i);
                        }
                }
        }
    }

    public static Exp constant(LuaValue luaValue) {
        return new Constant(luaValue);
    }

    public static FieldExp fieldop(PrimaryExp primaryExp, String str) {
        return new FieldExp(primaryExp, str);
    }

    public static FuncCall functionop(PrimaryExp primaryExp, FuncArgs funcArgs) {
        return new FuncCall(primaryExp, funcArgs);
    }

    public static IndexExp indexop(PrimaryExp primaryExp, Exp exp) {
        return new IndexExp(primaryExp, exp);
    }

    public static MethodCall methodop(PrimaryExp primaryExp, String str, FuncArgs funcArgs) {
        return new MethodCall(primaryExp, str, funcArgs);
    }

    public static NameExp nameprefix(String str) {
        return new NameExp(str);
    }

    public static Exp numberconstant(String str) {
        return new Constant(LuaValue.valueOf(str).tonumber());
    }

    public static ParensExp parensprefix(Exp exp) {
        return new ParensExp(exp);
    }

    public static Exp tableconstructor(TableConstructor tableConstructor) {
        return tableConstructor;
    }

    public static Exp varargs() {
        return new VarargsExp();
    }

    public abstract void accept(Visitor visitor);

    public boolean isfunccall() {
        return false;
    }

    public boolean isvarargexp() {
        return false;
    }

    public boolean isvarexp() {
        return false;
    }

    /* loaded from: classes2.dex */
    public static class AnonFuncDef extends Exp {
        public final FuncBody body;

        @Override // com.prineside.luaj.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public AnonFuncDef(FuncBody funcBody) {
            this.body = funcBody;
        }
    }

    /* loaded from: classes2.dex */
    public static class BinopExp extends Exp {
        public final Exp lhs;

        /* renamed from: op */
        public final int f8046op;
        public final Exp rhs;

        @Override // com.prineside.luaj.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public BinopExp(Exp exp, int i, Exp exp2) {
            this.lhs = exp;
            this.f8046op = i;
            this.rhs = exp2;
        }
    }

    /* loaded from: classes2.dex */
    public static class Constant extends Exp {
        public final LuaValue value;

        @Override // com.prineside.luaj.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public Constant(LuaValue luaValue) {
            this.value = luaValue;
        }
    }

    /* loaded from: classes2.dex */
    public static class FieldExp extends VarExp {
        public final PrimaryExp lhs;
        public final Name name;

        @Override // com.prineside.luaj.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public FieldExp(PrimaryExp primaryExp, String str) {
            this.lhs = primaryExp;
            this.name = new Name(str);
        }
    }

    /* loaded from: classes2.dex */
    public static class FuncCall extends PrimaryExp {
        public final FuncArgs args;
        public final PrimaryExp lhs;

        @Override // com.prineside.luaj.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        @Override // com.prineside.luaj.ast.Exp.PrimaryExp, com.prineside.luaj.ast.Exp
        public boolean isfunccall() {
            return true;
        }

        @Override // com.prineside.luaj.ast.Exp
        public boolean isvarargexp() {
            return true;
        }

        public FuncCall(PrimaryExp primaryExp, FuncArgs funcArgs) {
            this.lhs = primaryExp;
            this.args = funcArgs;
        }
    }

    /* loaded from: classes2.dex */
    public static class IndexExp extends VarExp {
        public final Exp exp;
        public final PrimaryExp lhs;

        @Override // com.prineside.luaj.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public IndexExp(PrimaryExp primaryExp, Exp exp) {
            this.lhs = primaryExp;
            this.exp = exp;
        }
    }

    /* loaded from: classes2.dex */
    public static class MethodCall extends FuncCall {
        public final String name;

        @Override // com.prineside.luaj.ast.Exp.FuncCall, com.prineside.luaj.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        @Override // com.prineside.luaj.ast.Exp.FuncCall, com.prineside.luaj.ast.Exp.PrimaryExp, com.prineside.luaj.ast.Exp
        public boolean isfunccall() {
            return true;
        }

        public MethodCall(PrimaryExp primaryExp, String str, FuncArgs funcArgs) {
            super(primaryExp, funcArgs);
            this.name = new String(str);
        }
    }

    /* loaded from: classes2.dex */
    public static class NameExp extends VarExp {
        public final Name name;

        @Override // com.prineside.luaj.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        @Override // com.prineside.luaj.ast.Exp.VarExp
        public void markHasAssignment() {
            this.name.variable.hasassignments = true;
        }

        public NameExp(String str) {
            this.name = new Name(str);
        }
    }

    /* loaded from: classes2.dex */
    public static class ParensExp extends PrimaryExp {
        public final Exp exp;

        @Override // com.prineside.luaj.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public ParensExp(Exp exp) {
            this.exp = exp;
        }
    }

    /* loaded from: classes2.dex */
    public static class UnopExp extends Exp {

        /* renamed from: op */
        public final int f8047op;
        public final Exp rhs;

        @Override // com.prineside.luaj.ast.Exp
        public void accept(Visitor visitor) {
            visitor.visit(this);
        }

        public UnopExp(int i, Exp exp) {
            this.f8047op = i;
            this.rhs = exp;
        }
    }

    public static Exp binaryexp(Exp exp, int i, Exp exp2) {
        if (exp instanceof UnopExp) {
            UnopExp unopExp = (UnopExp) exp;
            if (m22748b(i) > m22748b(unopExp.f8047op)) {
                return unaryexp(unopExp.f8047op, binaryexp(unopExp.rhs, i, exp2));
            }
        }
        if (exp instanceof BinopExp) {
            BinopExp binopExp = (BinopExp) exp;
            if (m22748b(i) > m22748b(binopExp.f8046op) || (m22748b(i) == m22748b(binopExp.f8046op) && m22749a(i))) {
                return binaryexp(binopExp.lhs, binopExp.f8046op, binaryexp(binopExp.rhs, i, exp2));
            }
        }
        if (exp2 instanceof BinopExp) {
            BinopExp binopExp2 = (BinopExp) exp2;
            if (m22748b(i) > m22748b(binopExp2.f8046op) || (m22748b(i) == m22748b(binopExp2.f8046op) && !m22749a(i))) {
                return binaryexp(binaryexp(exp, i, binopExp2.lhs), binopExp2.f8046op, binopExp2.rhs);
            }
        }
        return new BinopExp(exp, i, exp2);
    }

    public static Exp unaryexp(int i, Exp exp) {
        if (exp instanceof BinopExp) {
            BinopExp binopExp = (BinopExp) exp;
            if (m22748b(i) > m22748b(binopExp.f8046op)) {
                return binaryexp(unaryexp(i, binopExp.lhs), binopExp.f8046op, binopExp.rhs);
            }
        }
        return new UnopExp(i, exp);
    }
}
