.class public Lcom/prineside/luaj/ast/Exp$NameExp;
.super Lcom/prineside/luaj/ast/Exp$VarExp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Exp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameExp"
.end annotation


# instance fields
.field public final name:Lcom/prineside/luaj/ast/Name;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Exp$VarExp;-><init>()V

    new-instance v0, Lcom/prineside/luaj/ast/Name;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/prineside/luaj/ast/Exp$NameExp;->name:Lcom/prineside/luaj/ast/Name;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Exp$NameExp;)V

    return-void
.end method

.method public markHasAssignment()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/ast/Exp$NameExp;->name:Lcom/prineside/luaj/ast/Name;

    iget-object v0, v0, Lcom/prineside/luaj/ast/Name;->variable:Lcom/prineside/luaj/ast/Variable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/luaj/ast/Variable;->hasassignments:Z

    return-void
.end method
