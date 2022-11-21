.class public Lcom/prineside/luaj/ast/Stat$GenericFor;
.super Lcom/prineside/luaj/ast/Stat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericFor"
.end annotation


# instance fields
.field public block:Lcom/prineside/luaj/ast/Block;

.field public exps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;"
        }
    .end annotation
.end field

.field public names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Name;",
            ">;"
        }
    .end annotation
.end field

.field public scope:Lcom/prineside/luaj/ast/NameScope;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/prineside/luaj/ast/Block;)V
    .locals 0
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
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Stat;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Stat$GenericFor;->names:Ljava/util/List;

    iput-object p2, p0, Lcom/prineside/luaj/ast/Stat$GenericFor;->exps:Ljava/util/List;

    iput-object p3, p0, Lcom/prineside/luaj/ast/Stat$GenericFor;->block:Lcom/prineside/luaj/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$GenericFor;)V

    return-void
.end method
