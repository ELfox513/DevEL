.class public Lcom/prineside/luaj/ast/Stat$IfThenElse;
.super Lcom/prineside/luaj/ast/Stat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IfThenElse"
.end annotation


# instance fields
.field public final elseblock:Lcom/prineside/luaj/ast/Block;

.field public final elseifblocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Block;",
            ">;"
        }
    .end annotation
.end field

.field public final elseifexps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;"
        }
    .end annotation
.end field

.field public final ifblock:Lcom/prineside/luaj/ast/Block;

.field public final ifexp:Lcom/prineside/luaj/ast/Exp;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/ast/Exp;Lcom/prineside/luaj/ast/Block;Ljava/util/List;Ljava/util/List;Lcom/prineside/luaj/ast/Block;)V
    .locals 0
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
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Stat;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Stat$IfThenElse;->ifexp:Lcom/prineside/luaj/ast/Exp;

    iput-object p2, p0, Lcom/prineside/luaj/ast/Stat$IfThenElse;->ifblock:Lcom/prineside/luaj/ast/Block;

    iput-object p3, p0, Lcom/prineside/luaj/ast/Stat$IfThenElse;->elseifexps:Ljava/util/List;

    iput-object p4, p0, Lcom/prineside/luaj/ast/Stat$IfThenElse;->elseifblocks:Ljava/util/List;

    iput-object p5, p0, Lcom/prineside/luaj/ast/Stat$IfThenElse;->elseblock:Lcom/prineside/luaj/ast/Block;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$IfThenElse;)V

    return-void
.end method
