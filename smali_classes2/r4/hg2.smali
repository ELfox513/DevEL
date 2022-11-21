.class public final synthetic Lr4/hg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/hg2;->a:Ljava/util/List;

    iput-object p2, p0, Lr4/hg2;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lr4/hg2;->a:Ljava/util/List;

    iget-object v1, p0, Lr4/hg2;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/h83;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/dg2;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lr4/dg2;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method
