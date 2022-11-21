.class public Lcom/prineside/luaj/ast/NameResolver;
.super Lcom/prineside/luaj/ast/Visitor;
.source "SourceFile"


# instance fields
.field public a:Lcom/prineside/luaj/ast/NameScope;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Visitor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    return-void
.end method


# virtual methods
.method public a(Lcom/prineside/luaj/ast/Name;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    iget-object v1, p1, Lcom/prineside/luaj/ast/Name;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/ast/NameScope;->define(Ljava/lang/String;)Lcom/prineside/luaj/ast/Variable;

    move-result-object v0

    iput-object v0, p1, Lcom/prineside/luaj/ast/Name;->variable:Lcom/prineside/luaj/ast/Variable;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Name;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/luaj/ast/Name;

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/ast/NameResolver;->a(Lcom/prineside/luaj/ast/Name;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    iget-object v0, v0, Lcom/prineside/luaj/ast/NameScope;->outerScope:Lcom/prineside/luaj/ast/NameScope;

    iput-object v0, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    return-void
.end method

.method public final d()V
    .locals 2

    new-instance v0, Lcom/prineside/luaj/ast/NameScope;

    iget-object v1, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    invoke-direct {v0, v1}, Lcom/prineside/luaj/ast/NameScope;-><init>(Lcom/prineside/luaj/ast/NameScope;)V

    iput-object v0, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    return-void
.end method

.method public e(Lcom/prineside/luaj/ast/Name;)Lcom/prineside/luaj/ast/Variable;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    iget-object p1, p1, Lcom/prineside/luaj/ast/Name;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/ast/NameScope;->find(Ljava/lang/String;)Lcom/prineside/luaj/ast/Variable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/ast/Variable;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    iget v0, v0, Lcom/prineside/luaj/ast/NameScope;->functionNestingCount:I

    iget-object v1, p1, Lcom/prineside/luaj/ast/Variable;->definingScope:Lcom/prineside/luaj/ast/NameScope;

    iget v1, v1, Lcom/prineside/luaj/ast/NameScope;->functionNestingCount:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/prineside/luaj/ast/Variable;->isupvalue:Z

    :cond_0
    return-object p1
.end method

.method public visit(Lcom/prineside/luaj/ast/Block;)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/ast/NameResolver;->d()V

    iget-object v0, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    iput-object v0, p1, Lcom/prineside/luaj/ast/Block;->scope:Lcom/prineside/luaj/ast/NameScope;

    invoke-super {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Block;)V

    invoke-virtual {p0}, Lcom/prineside/luaj/ast/NameResolver;->c()V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Exp$NameExp;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/luaj/ast/Exp$NameExp;->name:Lcom/prineside/luaj/ast/Name;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/NameResolver;->e(Lcom/prineside/luaj/ast/Name;)Lcom/prineside/luaj/ast/Variable;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/luaj/ast/Name;->variable:Lcom/prineside/luaj/ast/Variable;

    invoke-super {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Exp$NameExp;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/FuncBody;)V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/ast/NameResolver;->d()V

    iget-object v0, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    iget v1, v0, Lcom/prineside/luaj/ast/NameScope;->functionNestingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/prineside/luaj/ast/NameScope;->functionNestingCount:I

    iput-object v0, p1, Lcom/prineside/luaj/ast/FuncBody;->scope:Lcom/prineside/luaj/ast/NameScope;

    invoke-super {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/FuncBody;)V

    invoke-virtual {p0}, Lcom/prineside/luaj/ast/NameResolver;->c()V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/NameScope;)V
    .locals 0

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/ParList;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/luaj/ast/ParList;->names:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/NameResolver;->b(Ljava/util/List;)V

    :cond_0
    iget-boolean v0, p1, Lcom/prineside/luaj/ast/ParList;->isvararg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    const-string v1, "arg"

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/ast/NameScope;->define(Ljava/lang/String;)Lcom/prineside/luaj/ast/Variable;

    :cond_1
    invoke-super {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/ParList;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$Assign;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$Assign;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$Assign;->vars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Lcom/prineside/luaj/ast/Stat$Assign;->vars:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/luaj/ast/Exp$VarExp;

    invoke-virtual {v2}, Lcom/prineside/luaj/ast/Exp$VarExp;->markHasAssignment()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$FuncDef;)V
    .locals 2

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$FuncDef;->name:Lcom/prineside/luaj/ast/FuncName;

    iget-object v0, v0, Lcom/prineside/luaj/ast/FuncName;->name:Lcom/prineside/luaj/ast/Name;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/NameResolver;->e(Lcom/prineside/luaj/ast/Name;)Lcom/prineside/luaj/ast/Variable;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/luaj/ast/Name;->variable:Lcom/prineside/luaj/ast/Variable;

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$FuncDef;->name:Lcom/prineside/luaj/ast/FuncName;

    iget-object v0, v0, Lcom/prineside/luaj/ast/FuncName;->name:Lcom/prineside/luaj/ast/Name;

    iget-object v0, v0, Lcom/prineside/luaj/ast/Name;->variable:Lcom/prineside/luaj/ast/Variable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/luaj/ast/Variable;->hasassignments:Z

    invoke-super {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$FuncDef;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$GenericFor;)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/ast/NameResolver;->d()V

    iget-object v0, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    iput-object v0, p1, Lcom/prineside/luaj/ast/Stat$GenericFor;->scope:Lcom/prineside/luaj/ast/NameScope;

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$GenericFor;->names:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/NameResolver;->b(Ljava/util/List;)V

    invoke-super {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$GenericFor;)V

    invoke-virtual {p0}, Lcom/prineside/luaj/ast/NameResolver;->c()V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$LocalAssign;)V
    .locals 6

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$LocalAssign;->values:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/Visitor;->visitExps(Ljava/util/List;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$LocalAssign;->names:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/NameResolver;->b(Ljava/util/List;)V

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$LocalAssign;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/prineside/luaj/ast/Stat$LocalAssign;->values:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    if-ge v1, v0, :cond_1

    iget-object v3, p1, Lcom/prineside/luaj/ast/Stat$LocalAssign;->values:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/luaj/ast/Exp;

    invoke-virtual {v3}, Lcom/prineside/luaj/ast/Exp;->isvarargexp()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    if-eqz v3, :cond_2

    add-int/lit8 v4, v1, -0x1

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-ge v2, v4, :cond_4

    iget-object v4, p1, Lcom/prineside/luaj/ast/Stat$LocalAssign;->values:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/prineside/luaj/ast/Exp$Constant;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/prineside/luaj/ast/Stat$LocalAssign;->names:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/luaj/ast/Name;

    iget-object v4, v4, Lcom/prineside/luaj/ast/Name;->variable:Lcom/prineside/luaj/ast/Variable;

    iget-object v5, p1, Lcom/prineside/luaj/ast/Stat$LocalAssign;->values:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/luaj/ast/Exp$Constant;

    iget-object v5, v5, Lcom/prineside/luaj/ast/Exp$Constant;->value:Lcom/prineside/luaj/LuaValue;

    iput-object v5, v4, Lcom/prineside/luaj/ast/Variable;->initialValue:Lcom/prineside/luaj/LuaValue;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    :goto_3
    if-ge v1, v0, :cond_5

    iget-object v2, p1, Lcom/prineside/luaj/ast/Stat$LocalAssign;->names:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/luaj/ast/Name;

    iget-object v2, v2, Lcom/prineside/luaj/ast/Name;->variable:Lcom/prineside/luaj/ast/Variable;

    sget-object v3, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    iput-object v3, v2, Lcom/prineside/luaj/ast/Variable;->initialValue:Lcom/prineside/luaj/LuaValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$LocalFuncDef;)V
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$LocalFuncDef;->name:Lcom/prineside/luaj/ast/Name;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/NameResolver;->a(Lcom/prineside/luaj/ast/Name;)V

    invoke-super {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$LocalFuncDef;)V

    return-void
.end method

.method public visit(Lcom/prineside/luaj/ast/Stat$NumericFor;)V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/ast/NameResolver;->d()V

    iget-object v0, p0, Lcom/prineside/luaj/ast/NameResolver;->a:Lcom/prineside/luaj/ast/NameScope;

    iput-object v0, p1, Lcom/prineside/luaj/ast/Stat$NumericFor;->scope:Lcom/prineside/luaj/ast/NameScope;

    iget-object v0, p1, Lcom/prineside/luaj/ast/Stat$NumericFor;->name:Lcom/prineside/luaj/ast/Name;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/ast/NameResolver;->a(Lcom/prineside/luaj/ast/Name;)V

    invoke-super {p0, p1}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$NumericFor;)V

    invoke-virtual {p0}, Lcom/prineside/luaj/ast/NameResolver;->c()V

    return-void
.end method
