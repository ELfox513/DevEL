.class public Lcom/prineside/luaj/ast/Block;
.super Lcom/prineside/luaj/ast/Stat;
.source "SourceFile"


# instance fields
.field public scope:Lcom/prineside/luaj/ast/NameScope;

.field public stats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Stat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Stat;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/ast/Block;->stats:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Block;)V

    return-void
.end method

.method public add(Lcom/prineside/luaj/ast/Stat;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/ast/Block;->stats:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
