.class public final Lr4/cb2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/eg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/eg2<",
        "Lr4/db2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/i83;

.field public final b:Lr4/gq1;

.field public final c:Lr4/pu1;

.field public final d:Lr4/eb2;


# direct methods
.method public constructor <init>(Lr4/i83;Lr4/gq1;Lr4/pu1;Lr4/eb2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/cb2;->a:Lr4/i83;

    iput-object p2, p0, Lr4/cb2;->b:Lr4/gq1;

    iput-object p3, p0, Lr4/cb2;->c:Lr4/pu1;

    iput-object p4, p0, Lr4/cb2;->d:Lr4/eb2;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lr4/db2;
    .locals 7

    sget-object v0, Lr4/rz;->W0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lr4/cb2;->b:Lr4/gq1;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v2, v4}, Lr4/gq1;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lr4/zp2;

    move-result-object v3

    invoke-virtual {v3}, Lr4/zp2;->q()Z

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Lr4/mp2; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v3}, Lr4/zp2;->a()Lr4/rd0;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "sdk_version"

    invoke-virtual {v5}, Lr4/rd0;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lr4/mp2; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lr4/zp2;->C()Lr4/rd0;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v5, "adapter_version"

    invoke-virtual {v3}, Lr4/rd0;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lr4/mp2; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    :try_start_3
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catch Lr4/mp2; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    nop

    goto :goto_0

    :cond_2
    new-instance v0, Lr4/db2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/db2;-><init>(Landroid/os/Bundle;Lr4/wa2;)V

    return-object v0
.end method

.method public final zza()Lr4/h83;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "Lr4/db2;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr4/rz;->W0:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lr4/l13;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/cb2;->d:Lr4/eb2;

    invoke-virtual {v0}, Lr4/eb2;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr4/cb2;->c:Lr4/pu1;

    invoke-virtual {v0}, Lr4/pu1;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/cb2;->d:Lr4/eb2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr4/eb2;->a(Z)V

    iget-object v0, p0, Lr4/cb2;->a:Lr4/i83;

    new-instance v1, Lr4/xa2;

    invoke-direct {v1, p0}, Lr4/xa2;-><init>(Lr4/cb2;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lr4/db2;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr4/db2;-><init>(Landroid/os/Bundle;Lr4/wa2;)V

    invoke-static {v0}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
