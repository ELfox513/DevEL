.class public Lcom/prineside/luaj/ast/ParList;
.super Lcom/prineside/luaj/ast/SyntaxElement;
.source "SourceFile"


# static fields
.field public static final EMPTY_NAMELIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Name;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_PARLIST:Lcom/prineside/luaj/ast/ParList;


# instance fields
.field public final isvararg:Z

.field public final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/prineside/luaj/ast/ParList;->EMPTY_NAMELIST:Ljava/util/List;

    new-instance v1, Lcom/prineside/luaj/ast/ParList;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/prineside/luaj/ast/ParList;-><init>(Ljava/util/List;Z)V

    sput-object v1, Lcom/prineside/luaj/ast/ParList;->EMPTY_PARLIST:Lcom/prineside/luaj/ast/ParList;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Name;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/prineside/luaj/ast/SyntaxElement;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/ParList;->names:Ljava/util/List;

    iput-boolean p2, p0, Lcom/prineside/luaj/ast/ParList;->isvararg:Z

    return-void
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/ParList;)V

    return-void
.end method
