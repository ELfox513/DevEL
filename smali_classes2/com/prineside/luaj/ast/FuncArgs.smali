.class public Lcom/prineside/luaj/ast/FuncArgs;
.super Lcom/prineside/luaj/ast/SyntaxElement;
.source "SourceFile"


# instance fields
.field public final exps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/LuaString;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/ast/SyntaxElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/ast/FuncArgs;->exps:Ljava/util/List;

    invoke-static {p1}, Lcom/prineside/luaj/ast/Exp;->constant(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/ast/Exp;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/ast/TableConstructor;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/ast/SyntaxElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/ast/FuncArgs;->exps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/prineside/luaj/ast/SyntaxElement;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/ast/FuncArgs;->exps:Ljava/util/List;

    return-void
.end method

.method public static explist(Ljava/util/List;)Lcom/prineside/luaj/ast/FuncArgs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/prineside/luaj/ast/Exp;",
            ">;)",
            "Lcom/prineside/luaj/ast/FuncArgs;"
        }
    .end annotation

    new-instance v0, Lcom/prineside/luaj/ast/FuncArgs;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/ast/FuncArgs;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static string(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/ast/FuncArgs;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/FuncArgs;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/ast/FuncArgs;-><init>(Lcom/prineside/luaj/LuaString;)V

    return-object v0
.end method

.method public static tableconstructor(Lcom/prineside/luaj/ast/TableConstructor;)Lcom/prineside/luaj/ast/FuncArgs;
    .locals 1

    new-instance v0, Lcom/prineside/luaj/ast/FuncArgs;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/ast/FuncArgs;-><init>(Lcom/prineside/luaj/ast/TableConstructor;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/prineside/luaj/ast/Visitor;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/prineside/luaj/ast/Visitor;->visit(Lcom/prineside/luaj/ast/FuncArgs;)V

    return-void
.end method
