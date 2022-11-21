.class public abstract Lcom/prineside/luaj/ast/Stat;
.super Lcom/prineside/luaj/ast/SyntaxElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/ast/Stat$WhileDo;,
        Lcom/prineside/luaj/ast/Stat$RepeatUntil;,
        Lcom/prineside/luaj/ast/Stat$Break;,
        Lcom/prineside/luaj/ast/Stat$Return;,
        Lcom/prineside/luaj/ast/Stat$Assign;,
        Lcom/prineside/luaj/ast/Stat$FuncCallStat;,
        Lcom/prineside/luaj/ast/Stat$LocalFuncDef;,
        Lcom/prineside/luaj/ast/Stat$NumericFor;,
        Lcom/prineside/luaj/ast/Stat$FuncDef;,
        Lcom/prineside/luaj/ast/Stat$GenericFor;,
        Lcom/prineside/luaj/ast/Stat$LocalAssign;,
        Lcom/prineside/luaj/ast/Stat$IfThenElse;,
        Lcom/prineside/luaj/ast/Stat$Goto;,
        Lcom/prineside/luaj/ast/Stat$Label;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/SyntaxElement;-><init>()V

    return-void
.end method

.method public static assignment(Ljava/util/List;Ljava/util/List;)Lcom/prineside/luaj/ast/Stat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp$VarExp;",
            ">;",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;)",
            "Lcom/prineside/luaj/ast/Stat;"
        }
    .end annotation

    new-instance v0, Lcom/prineside/luaj/ast/Stat$Assign;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/ast/Stat$Assign;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static block(Lcom/prineside/luaj/ast/Block;)Lcom/prineside/luaj/ast/Stat;
    .locals 0

    return-object p0
.end method

.method public static breakstat()Lcom/prineside/luaj/ast/Stat;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Stat$Break;

    invoke-direct {v0}, Lcom/prineside/luaj/ast/Stat$Break;-><init>()V

    return-object v0
.end method

.method public static forgeneric(Ljava/util/List;Ljava/util/List;Lcom/prineside/luaj/ast/Block;)Lcom/prineside/luaj/ast/Stat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Name;",
            ">;",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;",
            "Lcom/prineside/luaj/ast/Block;",
            ")",
            "Lcom/prineside/luaj/ast/Stat;"
        }
    .end annotation

    new-instance v0, Lcom/prineside/luaj/ast/Stat$GenericFor;

    invoke-direct {v0, p0, p1, p2}, Lcom/prineside/luaj/ast/Stat$GenericFor;-><init>(Ljava/util/List;Ljava/util/List;Lcom/prineside/luaj/ast/Block;)V

    return-object v0
.end method

.method public static fornumeric(Ljava/lang/String;Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Block;)Lcom/prineside/luaj/ast/Stat;
    .locals 7

    new-instance v6, Lcom/prineside/luaj/ast/Stat$NumericFor;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/prineside/luaj/ast/Stat$NumericFor;-><init>(Ljava/lang/String;Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Block;)V

    return-object v6
.end method

.method public static functioncall(Lcom/prineside/luaj/ast/Exp$FuncCall;)Lcom/prineside/luaj/ast/Stat;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Stat$FuncCallStat;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/ast/Stat$FuncCallStat;-><init>(Lcom/prineside/luaj/ast/Exp$FuncCall;)V

    return-object v0
.end method

.method public static functiondef(Lcom/prineside/luaj/ast/FuncName;Lcom/prineside/luaj/ast/FuncBody;)Lcom/prineside/luaj/ast/Stat;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Stat$FuncDef;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/ast/Stat$FuncDef;-><init>(Lcom/prineside/luaj/ast/FuncName;Lcom/prineside/luaj/ast/FuncBody;)V

    return-object v0
.end method

.method public static gotostat(Ljava/lang/String;)Lcom/prineside/luaj/ast/Stat;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Stat$Goto;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/ast/Stat$Goto;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static ifthenelse(Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Block;Ljava/util/List;Ljava/util/List;Lcom/prineside/luaj/ast/Block;)Lcom/prineside/luaj/ast/Stat;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/luaj/ast/Exp;",
            "Lcom/prineside/luaj/ast/Block;",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Block;",
            ">;",
            "Lcom/prineside/luaj/ast/Block;",
            ")",
            "Lcom/prineside/luaj/ast/Stat;"
        }
    .end annotation

    new-instance v6, Lcom/prineside/luaj/ast/Stat$IfThenElse;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/prineside/luaj/ast/Stat$IfThenElse;-><init>(Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Block;Ljava/util/List;Ljava/util/List;Lcom/prineside/luaj/ast/Block;)V

    return-object v6
.end method

.method public static labelstat(Ljava/lang/String;)Lcom/prineside/luaj/ast/Stat;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Stat$Label;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/ast/Stat$Label;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static localassignment(Ljava/util/List;Ljava/util/List;)Lcom/prineside/luaj/ast/Stat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Name;",
            ">;",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;)",
            "Lcom/prineside/luaj/ast/Stat;"
        }
    .end annotation

    new-instance v0, Lcom/prineside/luaj/ast/Stat$LocalAssign;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/ast/Stat$LocalAssign;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static localfunctiondef(Ljava/lang/String;Lcom/prineside/luaj/ast/FuncBody;)Lcom/prineside/luaj/ast/Stat;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Stat$LocalFuncDef;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/ast/Stat$LocalFuncDef;-><init>(Ljava/lang/String;Lcom/prineside/luaj/ast/FuncBody;)V

    return-object v0
.end method

.method public static repeatuntil(Lcom/prineside/luaj/ast/Block;Lcom/prineside/luaj/ast/Exp;)Lcom/prineside/luaj/ast/Stat;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Stat$RepeatUntil;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/ast/Stat$RepeatUntil;-><init>(Lcom/prineside/luaj/ast/Block;Lcom/prineside/luaj/ast/Exp;)V

    return-object v0
.end method

.method public static returnstat(Ljava/util/List;)Lcom/prineside/luaj/ast/Stat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;)",
            "Lcom/prineside/luaj/ast/Stat;"
        }
    .end annotation

    new-instance v0, Lcom/prineside/luaj/ast/Stat$Return;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/ast/Stat$Return;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static whiledo(Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Block;)Lcom/prineside/luaj/ast/Stat;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/Stat$WhileDo;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/ast/Stat$WhileDo;-><init>(Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Block;)V

    return-object v0
.end method


# virtual methods
.method public abstract accept(Lcom/prineside/luaj/ast/Visitor;)V
.end method
