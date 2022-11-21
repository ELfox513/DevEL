.class public final synthetic Lr4/xc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lr4/yc2;


# direct methods
.method public constructor <init>(Lr4/yc2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/xc2;->a:Lr4/yc2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v0

    invoke-interface {v0}, Lb3/y1;->a()Lr4/nn;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v2

    invoke-virtual {v2}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v2

    invoke-interface {v2}, Lb3/y1;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v2

    invoke-virtual {v2}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v2

    invoke-interface {v2}, Lb3/y1;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Lr4/nn;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lr4/nn;->f()V

    :cond_2
    invoke-virtual {v0}, Lr4/nn;->e()Lr4/cn;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lr4/cn;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lr4/cn;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lr4/cn;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_3

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v4

    invoke-virtual {v4}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v4

    invoke-interface {v4, v2}, Lb3/y1;->H(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_5

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v4

    invoke-virtual {v4}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v4

    invoke-interface {v4, v0}, Lb3/y1;->P0(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v0

    invoke-interface {v0}, Lb3/y1;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v0

    invoke-interface {v0}, Lb3/y1;->h()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    :cond_5
    :goto_0
    new-instance v4, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(I)V

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v5

    invoke-virtual {v5}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v5

    invoke-interface {v5}, Lb3/y1;->f()Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "v_fp_vertical"

    if-eqz v0, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v0, "no_hash"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v0

    invoke-virtual {v0}, Lr4/nl0;->p()Lb3/y1;

    move-result-object v0

    invoke-interface {v0}, Lb3/y1;->e()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "fingerprint"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "v_fp"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    move-object v1, v4

    :cond_9
    :goto_2
    new-instance v0, Lr4/zc2;

    invoke-direct {v0, v1}, Lr4/zc2;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
