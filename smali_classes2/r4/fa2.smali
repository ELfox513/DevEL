.class public final Lr4/fa2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/ga2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Landroid/content/Context;

.field public final c:Lr4/hp2;

.field public final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lr4/i83;Landroid/content/Context;Lr4/hp2;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/fa2;->a:Lr4/i83;

    iput-object p2, p0, Lr4/fa2;->b:Landroid/content/Context;

    iput-object p3, p0, Lr4/fa2;->c:Lr4/hp2;

    iput-object p4, p0, Lr4/fa2;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lr4/ga2;
    .locals 9

    new-instance v0, Lr4/ga2;

    iget-object v1, p0, Lr4/fa2;->b:Landroid/content/Context;

    iget-object v2, p0, Lr4/fa2;->c:Lr4/hp2;

    iget-object v2, v2, Lr4/hp2;->e:Lr4/yt;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lr4/fa2;->d:Landroid/view/View;

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "index_of_child"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v4, v5, Landroid/view/View;

    if-eqz v4, :cond_2

    move-object v4, v5

    check-cast v4, Landroid/view/View;

    goto :goto_0

    :cond_2
    :goto_2
    invoke-direct {v0, v1, v2, v3}, Lr4/ga2;-><init>(Landroid/content/Context;Lr4/yt;Ljava/util/List;)V

    return-object v0
.end method

.method public final zza()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/ga2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/fa2;->a:Lr4/i83;

    new-instance v1, Lr4/ea2;

    invoke-direct {v1, p0}, Lr4/ea2;-><init>(Lr4/fa2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
