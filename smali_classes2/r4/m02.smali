.class public final Lr4/m02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lr4/n02;


# direct methods
.method public constructor <init>(Lr4/n02;Z)V
    .locals 0

    iput-object p1, p0, Lr4/m02;->b:Lr4/n02;

    iput-boolean p2, p0, Lr4/m02;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "Failed to get signals bundle"

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Landroid/os/Bundle;

    iget-object v0, p0, Lr4/m02;->b:Lr4/n02;

    invoke-static {v0}, Lr4/n02;->b(Lr4/n02;)Lb3/y1;

    move-result-object v0

    invoke-interface {v0}, Lb3/y1;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ad_types"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v2, "interstitial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :sswitch_1
    const-string v2, "rewarded"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    goto :goto_5

    :sswitch_2
    const-string v2, "native"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    goto :goto_5

    :sswitch_3
    const-string v2, "banner"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v1, -0x1

    :goto_5
    if-eqz v1, :cond_9

    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v3, :cond_6

    sget-object v1, Lr4/eq;->b:Lr4/eq;

    goto :goto_6

    :cond_6
    sget-object v1, Lr4/eq;->v:Lr4/eq;

    goto :goto_6

    :cond_7
    sget-object v1, Lr4/eq;->r:Lr4/eq;

    goto :goto_6

    :cond_8
    sget-object v1, Lr4/eq;->k:Lr4/eq;

    goto :goto_6

    :cond_9
    sget-object v1, Lr4/eq;->d:Lr4/eq;

    :goto_6
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lr4/m02;->b:Lr4/n02;

    invoke-static {v0, p1}, Lr4/n02;->d(Lr4/n02;Landroid/os/Bundle;)Lr4/wr;

    move-result-object v6

    iget-object v0, p0, Lr4/m02;->b:Lr4/n02;

    invoke-static {v0, p1}, Lr4/n02;->c(Lr4/n02;Landroid/os/Bundle;)Lr4/nr;

    move-result-object v5

    iget-object p1, p0, Lr4/m02;->b:Lr4/n02;

    invoke-static {p1}, Lr4/n02;->a(Lr4/n02;)Lr4/b02;

    move-result-object p1

    new-instance v0, Lr4/k02;

    iget-boolean v3, p0, Lr4/m02;->a:Z

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lr4/k02;-><init>(Lr4/m02;ZLjava/util/ArrayList;Lr4/nr;Lr4/wr;)V

    invoke-virtual {p1, v0}, Lr4/b02;->a(Lr4/ps2;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_3
        -0x3ebdafe9 -> :sswitch_2
        -0xe47b3f2 -> :sswitch_1
        0x240b672c -> :sswitch_0
    .end sparse-switch
.end method
