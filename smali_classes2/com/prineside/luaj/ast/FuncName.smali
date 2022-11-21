.class public Lcom/prineside/luaj/ast/FuncName;
.super Lcom/prineside/luaj/ast/SyntaxElement;
.source "SourceFile"


# instance fields
.field public dots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public method:Ljava/lang/String;

.field public final name:Lcom/prineside/luaj/ast/Name;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/ast/SyntaxElement;-><init>()V

    new-instance v0, Lcom/prineside/luaj/ast/Name;

    invoke-direct {v0, p1}, Lcom/prineside/luaj/ast/Name;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/prineside/luaj/ast/FuncName;->name:Lcom/prineside/luaj/ast/Name;

    return-void
.end method


# virtual methods
.method public adddot(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/ast/FuncName;->dots:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/ast/FuncName;->dots:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/ast/FuncName;->dots:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
