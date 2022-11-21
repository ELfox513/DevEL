.class public Lcom/prineside/luaj/ast/FuncBody;
.super Lcom/prineside/luaj/ast/SyntaxElement;
.source "SourceFile"


# instance fields
.field public block:Lcom/prineside/luaj/ast/Block;

.field public parlist:Lcom/prineside/luaj/ast/ParList;

.field public scope:Lcom/prineside/luaj/ast/NameScope;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/ParList;Lcom/prineside/luaj/ast/Block;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/ast/SyntaxElement;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/ast/ParList;->EMPTY_PARLIST:Lcom/prineside/luaj/ast/ParList;

    :goto_0
    iput-object p1, p0, Lcom/prineside/luaj/ast/FuncBody;->parlist:Lcom/prineside/luaj/ast/ParList;

    iput-object p2, p0, Lcom/prineside/luaj/ast/FuncBody;->block:Lcom/prineside/luaj/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/FuncBody;)V

    return-void
.end method
