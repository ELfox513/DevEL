.class public final Lh3/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/t73;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/t73<",
        "Lh3/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/sk0;

.field public final synthetic b:Lh3/g0;


# direct methods
.method public constructor <init>(Lh3/g0;Lr4/sk0;)V
    .locals 0

    iput-object p1, p0, Lh3/c0;->b:Lh3/g0;

    iput-object p2, p0, Lh3/c0;->a:Lr4/sk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lz2/t;->h()Lr4/nl0;

    move-result-object v1

    const-string v2, "SignalGeneratorImpl.generateSignals"

    invoke-virtual {v1, p1, v2}, Lr4/nl0;->k(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lh3/c0;->b:Lh3/g0;

    const-string v1, "sgf"

    const-string v2, "sgf_reason"

    invoke-static {p1, v1, v2, v0}, Lh3/g0;->I7(Lh3/g0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lh3/c0;->a:Lr4/sk0;

    const-string v1, "Internal error. "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1, v0}, Lr4/sk0;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 9

    const-string v0, "sgf_reason"

    const-string v1, "sgf"

    const-string v2, "QueryInfo generation has been disabled."

    check-cast p1, Lh3/j;

    sget-object v3, Lr4/rz;->x5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v4

    invoke-virtual {v4, v3}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    iget-object p1, p0, Lh3/c0;->a:Lr4/sk0;

    invoke-interface {p1, v2}, Lr4/sk0;->u(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/cm0;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "rid"

    const-string v3, "sgs"

    const-string v4, ""

    if-nez p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lh3/c0;->a:Lr4/sk0;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0}, Lr4/sk0;->f2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lh3/c0;->b:Lh3/g0;

    const-string v0, "-1"

    invoke-static {p1, v3, v2, v0}, Lh3/g0;->I7(Lh3/g0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_1
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p1, Lh3/j;->b:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v6, "request_id"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string p1, "The request ID is empty in request JSON."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lh3/c0;->a:Lr4/sk0;

    const-string v2, "Internal error: request ID is empty in request JSON."

    invoke-interface {p1, v2}, Lr4/sk0;->u(Ljava/lang/String;)V

    iget-object p1, p0, Lh3/c0;->b:Lh3/g0;

    const-string v2, "rid_missing"

    invoke-static {p1, v1, v0, v2}, Lh3/g0;->I7(Lh3/g0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lr4/rz;->i5:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {v0}, Lh3/g0;->t7(Lh3/g0;)Lh3/m;

    move-result-object v0

    iget-object v1, p1, Lh3/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lh3/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p1, Lh3/j;->c:Landroid/os/Bundle;

    iget-object v1, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {v1}, Lh3/g0;->y7(Lh3/g0;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {v1}, Lh3/g0;->A7(Lh3/g0;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, -0x1

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {v1}, Lh3/g0;->A7(Lh3/g0;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {v6}, Lh3/g0;->B7(Lh3/g0;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object v1, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {v1}, Lh3/g0;->x7(Lh3/g0;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {v1}, Lh3/g0;->z7(Lh3/g0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {v1}, Lh3/g0;->D7(Lh3/g0;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {}, Lz2/t;->d()Lb3/k2;

    move-result-object v6

    iget-object v7, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {v7}, Lh3/g0;->s7(Lh3/g0;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {v8}, Lh3/g0;->C7(Lh3/g0;)Lr4/im0;

    move-result-object v8

    iget-object v8, v8, Lr4/im0;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lb3/k2;->P(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lh3/g0;->E7(Lh3/g0;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    iget-object v1, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {v1}, Lh3/g0;->z7(Lh3/g0;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {v6}, Lh3/g0;->D7(Lh3/g0;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lh3/c0;->a:Lr4/sk0;

    iget-object v6, p1, Lh3/j;->a:Ljava/lang/String;

    iget-object p1, p1, Lh3/j;->b:Ljava/lang/String;

    invoke-interface {v1, v6, p1, v0}, Lr4/sk0;->f2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lh3/c0;->b:Lh3/g0;

    invoke-static {p1, v3, v2, v5}, Lh3/g0;->I7(Lh3/g0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v2, "Failed to create JSON object from the request string."

    invoke-static {v2}, Lr4/cm0;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lh3/c0;->a:Lr4/sk0;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Internal error for request JSON: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lr4/sk0;->u(Ljava/lang/String;)V

    iget-object p1, p0, Lh3/c0;->b:Lh3/g0;

    const-string v2, "request_invalid"

    invoke-static {p1, v1, v0, v2}, Lh3/g0;->I7(Lh3/g0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :goto_0
    invoke-static {v4, p1}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
