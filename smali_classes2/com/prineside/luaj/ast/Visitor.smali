.class public abstract Lcom/prineside/luaj/ast/Visitor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/prineside/luaj/ast/Block;)V
    .locals 3

    iget-object v0, p1, Lcom/prineside/luaj/ast/Block;->scope:Lcom/prineside/luaj/ast/NameScope;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/NameScope;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Block;->stats:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Lcom/prineside/luaj/ast/Block;->stats:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/luaj/ast/Stat;

    invoke-virtual {v2, p0}, Lcom/prineside/luaj/ast/Stat;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Chunk;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/luaj/ast/Chunk;->block:Lcom/prineside/luaj/ast/Block;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Block;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Exp$AnonFuncDef;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/luaj/ast/Exp$AnonFuncDef;->body:Lcom/prineside/luaj/ast/FuncBody;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/FuncBody;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Exp$BinopExp;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Exp$BinopExp;->lhs:Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object p1, p1, Lcom/prineside/luaj/ast/Exp$BinopExp;->rhs:Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Exp$Constant;)V
    .locals 0

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Exp$FieldExp;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Exp$FieldExp;->lhs:Lcom/prineside/luaj/ast/Exp$PrimaryExp;

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object p1, p1, Lcom/prineside/luaj/ast/Exp$FieldExp;->name:Lcom/prineside/luaj/ast/Name;

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Name;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Exp$FuncCall;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Exp$FuncCall;->lhs:Lcom/prineside/luaj/ast/Exp$PrimaryExp;

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object p1, p1, Lcom/prineside/luaj/ast/Exp$FuncCall;->args:Lcom/prineside/luaj/ast/FuncArgs;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/FuncArgs;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Exp$IndexExp;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Exp$IndexExp;->lhs:Lcom/prineside/luaj/ast/Exp$PrimaryExp;

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object p1, p1, Lcom/prineside/luaj/ast/Exp$IndexExp;->exp:Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Exp$MethodCall;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Exp$FuncCall;->lhs:Lcom/prineside/luaj/ast/Exp$PrimaryExp;

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Exp$MethodCall;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visit(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/prineside/luaj/ast/Exp$FuncCall;->args:Lcom/prineside/luaj/ast/FuncArgs;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/FuncArgs;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Exp$NameExp;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/luaj/ast/Exp$NameExp;->name:Lcom/prineside/luaj/ast/Name;

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Name;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Exp$ParensExp;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/luaj/ast/Exp$ParensExp;->exp:Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Exp$UnopExp;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/luaj/ast/Exp$UnopExp;->rhs:Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Exp$VarargsExp;)V
    .locals 0

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/FuncArgs;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/luaj/ast/FuncArgs;->exps:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visitExps(Ljava/util/List;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/FuncBody;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/FuncBody;->scope:Lcom/prineside/luaj/ast/NameScope;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/NameScope;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/FuncBody;->parlist:Lcom/prineside/luaj/ast/ParList;

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/ParList;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object p1, p1, Lcom/prineside/luaj/ast/FuncBody;->block:Lcom/prineside/luaj/ast/Block;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Block;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Name;)V
    .locals 0

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/NameScope;)V
    .locals 0

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/ParList;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/luaj/ast/ParList;->names:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visitNames(Ljava/util/List;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$Assign;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$Assign;->vars:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visitVars(Ljava/util/List;)V

    iget-object p1, p1, Lcom/prineside/luaj/ast/Stat$Assign;->exps:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visitExps(Ljava/util/List;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$Break;)V
    .locals 0

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$FuncCallStat;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/luaj/ast/Stat$FuncCallStat;->funccall:Lcom/prineside/luaj/ast/Exp$FuncCall;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Exp$FuncCall;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$FuncDef;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/luaj/ast/Stat$FuncDef;->body:Lcom/prineside/luaj/ast/FuncBody;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/FuncBody;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$GenericFor;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$GenericFor;->scope:Lcom/prineside/luaj/ast/NameScope;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/NameScope;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$GenericFor;->names:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visitNames(Ljava/util/List;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$GenericFor;->exps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visitExps(Ljava/util/List;)V

    iget-object p1, p1, Lcom/prineside/luaj/ast/Stat$GenericFor;->block:Lcom/prineside/luaj/ast/Block;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Block;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$Goto;)V
    .locals 0

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$IfThenElse;)V
    .locals 3

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$IfThenElse;->ifexp:Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$IfThenElse;->ifblock:Lcom/prineside/luaj/ast/Block;

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Block;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$IfThenElse;->elseifblocks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Lcom/prineside/luaj/ast/Stat$IfThenElse;->elseifexps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {v2, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object v2, p1, Lcom/prineside/luaj/ast/Stat$IfThenElse;->elseifblocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/luaj/ast/Block;

    invoke-virtual {v2, p0}, Lcom/prineside/luaj/ast/Block;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/prineside/luaj/ast/Stat$IfThenElse;->elseblock:Lcom/prineside/luaj/ast/Block;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Block;)V

    :cond_1
    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$Label;)V
    .locals 0

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$LocalAssign;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$LocalAssign;->names:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visitNames(Ljava/util/List;)V

    iget-object p1, p1, Lcom/prineside/luaj/ast/Stat$LocalAssign;->values:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visitExps(Ljava/util/List;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$LocalFuncDef;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$LocalFuncDef;->name:Lcom/prineside/luaj/ast/Name;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Name;)V

    iget-object p1, p1, Lcom/prineside/luaj/ast/Stat$LocalFuncDef;->body:Lcom/prineside/luaj/ast/FuncBody;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/FuncBody;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$NumericFor;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$NumericFor;->scope:Lcom/prineside/luaj/ast/NameScope;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/NameScope;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$NumericFor;->name:Lcom/prineside/luaj/ast/Name;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Name;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$NumericFor;->initial:Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$NumericFor;->limit:Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$NumericFor;->step:Lcom/prineside/luaj/ast/Exp;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    :cond_0
    iget-object p1, p1, Lcom/prineside/luaj/ast/Stat$NumericFor;->block:Lcom/prineside/luaj/ast/Block;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Block;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$RepeatUntil;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$RepeatUntil;->block:Lcom/prineside/luaj/ast/Block;

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Block;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object p1, p1, Lcom/prineside/luaj/ast/Stat$RepeatUntil;->exp:Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$Return;)V
    .locals 0

    iget-object p1, p1, Lcom/prineside/luaj/ast/Stat$Return;->values:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visitExps(Ljava/util/List;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$WhileDo;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$WhileDo;->exp:Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    iget-object p1, p1, Lcom/prineside/luaj/ast/Stat$WhileDo;->block:Lcom/prineside/luaj/ast/Block;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Block;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/TableConstructor;)V
    .locals 3

    iget-object v0, p1, Lcom/prineside/luaj/ast/TableConstructor;->fields:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Lcom/prineside/luaj/ast/TableConstructor;->fields:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/luaj/ast/TableField;

    invoke-virtual {v2, p0}, Lcom/prineside/luaj/ast/TableField;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/TableField;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/TableField;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visit(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lcom/prineside/luaj/ast/TableField;->index:Lcom/prineside/luaj/ast/Exp;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    :cond_1
    iget-object p1, p1, Lcom/prineside/luaj/ast/TableField;->rhs:Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    return-void
.end method

.method public visit(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public visitExps(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {v2, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visitNames(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Name;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/luaj/ast/Name;

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Name;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visitVars(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp$VarExp;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/luaj/ast/Exp$VarExp;

    invoke-virtual {v2, p0}, Lcom/prineside/luaj/ast/Exp;->accept(Lcom/prineside/luaj/ast/Visitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
