.class public Lcom/prineside/luaj/ast/Stat$LocalAssign;
.super Lcom/prineside/luaj/ast/Stat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/ast/Stat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalAssign"
.end annotation


# instance fields
.field public final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Name;",
            ">;"
        }
    .end annotation
.end field

.field public final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Name;",
            ">;",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/prineside/luaj/ast/Stat;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/Stat$LocalAssign;->names:Ljava/util/List;

    iput-object p2, p0, Lcom/prineside/luaj/ast/Stat$LocalAssign;->values:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/Stat$LocalAssign;)V

    return-void
.end method
