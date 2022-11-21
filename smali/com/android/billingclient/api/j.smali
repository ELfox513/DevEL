.class public final Lcom/android/billingclient/api/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/b$a;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Void;
    .locals 10

    iget-object v0, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    invoke-static {v0}, Lcom/android/billingclient/api/b$a;->a(Lcom/android/billingclient/api/b$a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    invoke-static {v1}, Lcom/android/billingclient/api/b$a;->f(Lcom/android/billingclient/api/b$a;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v3, v3, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v3}, Lcom/android/billingclient/api/b;->l(Lcom/android/billingclient/api/b;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/4 v6, 0x3

    :goto_0
    if-lt v5, v0, :cond_2

    :try_start_2
    iget-object v7, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v7, v7, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v7}, Lcom/android/billingclient/api/b;->z(Lcom/android/billingclient/api/b;)Lc5/c;

    move-result-object v7

    const-string v8, "subs"

    invoke-interface {v7, v5, v3, v8}, Lc5/c;->n1(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v7, v7, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-lt v5, v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    invoke-static {v7, v8}, Lcom/android/billingclient/api/b;->x(Lcom/android/billingclient/api/b;Z)Z

    iget-object v7, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v7, v7, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    if-lt v5, v0, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    invoke-static {v7, v8}, Lcom/android/billingclient/api/b;->B(Lcom/android/billingclient/api/b;Z)Z

    if-ge v5, v0, :cond_5

    const-string v5, "BillingClient"

    const-string v7, "In-app billing API does not support subscription on this device."

    invoke-static {v5, v7}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/16 v5, 0xe

    :goto_4
    if-lt v5, v0, :cond_7

    iget-object v7, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v7, v7, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v7}, Lcom/android/billingclient/api/b;->z(Lcom/android/billingclient/api/b;)Lc5/c;

    move-result-object v7

    const-string v8, "inapp"

    invoke-interface {v7, v5, v3, v8}, Lc5/c;->n1(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    iget-object v3, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v3, v3, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v3, v5}, Lcom/android/billingclient/api/b;->y(Lcom/android/billingclient/api/b;I)I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_7
    :goto_5
    iget-object v3, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v3, v3, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v3}, Lcom/android/billingclient/api/b;->E(Lcom/android/billingclient/api/b;)I

    move-result v5

    if-lt v5, v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    invoke-static {v3, v4}, Lcom/android/billingclient/api/b;->D(Lcom/android/billingclient/api/b;Z)Z

    iget-object v3, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v3, v3, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v3}, Lcom/android/billingclient/api/b;->E(Lcom/android/billingclient/api/b;)I

    move-result v4

    const/16 v5, 0xd

    if-lt v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    invoke-static {v3, v4}, Lcom/android/billingclient/api/b;->H(Lcom/android/billingclient/api/b;Z)Z

    iget-object v3, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v3, v3, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v3}, Lcom/android/billingclient/api/b;->E(Lcom/android/billingclient/api/b;)I

    move-result v4

    const/16 v5, 0xc

    if-lt v4, v5, :cond_a

    const/4 v4, 0x1

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    :goto_8
    invoke-static {v3, v4}, Lcom/android/billingclient/api/b;->J(Lcom/android/billingclient/api/b;Z)Z

    iget-object v3, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v3, v3, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v3}, Lcom/android/billingclient/api/b;->E(Lcom/android/billingclient/api/b;)I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_b

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    :goto_9
    invoke-static {v3, v4}, Lcom/android/billingclient/api/b;->K(Lcom/android/billingclient/api/b;Z)Z

    iget-object v3, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v3, v3, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v3}, Lcom/android/billingclient/api/b;->E(Lcom/android/billingclient/api/b;)I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_c

    const/4 v4, 0x1

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    :goto_a
    invoke-static {v3, v4}, Lcom/android/billingclient/api/b;->L(Lcom/android/billingclient/api/b;Z)Z

    iget-object v3, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v3, v3, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v3}, Lcom/android/billingclient/api/b;->E(Lcom/android/billingclient/api/b;)I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_d

    const/4 v4, 0x1

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    :goto_b
    invoke-static {v3, v4}, Lcom/android/billingclient/api/b;->M(Lcom/android/billingclient/api/b;Z)Z

    iget-object v3, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v3, v3, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v3}, Lcom/android/billingclient/api/b;->E(Lcom/android/billingclient/api/b;)I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_e

    goto :goto_c

    :cond_e
    const/4 v9, 0x0

    :goto_c
    invoke-static {v3, v9}, Lcom/android/billingclient/api/b;->N(Lcom/android/billingclient/api/b;Z)Z

    iget-object v3, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v3, v3, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v3}, Lcom/android/billingclient/api/b;->E(Lcom/android/billingclient/api/b;)I

    move-result v3

    if-ge v3, v0, :cond_f

    const-string v0, "BillingClient"

    const-string v3, "In-app billing API version 3 is not supported on this device."

    invoke-static {v0, v3}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-nez v6, :cond_10

    iget-object v0, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v0, v0, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/billingclient/api/b;->k(Lcom/android/billingclient/api/b;I)I

    goto :goto_d

    :cond_10
    iget-object v0, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v0, v0, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/b;->k(Lcom/android/billingclient/api/b;I)I

    iget-object v0, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v0, v0, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v0, v2}, Lcom/android/billingclient/api/b;->m(Lcom/android/billingclient/api/b;Lc5/c;)Lc5/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_d

    :catch_0
    move v0, v6

    :catch_1
    const-string v3, "BillingClient"

    const-string v4, "Exception while checking if billing is supported; try to reconnect"

    invoke-static {v3, v4}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v3, v3, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v3, v1}, Lcom/android/billingclient/api/b;->k(Lcom/android/billingclient/api/b;I)I

    iget-object v1, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    iget-object v1, v1, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    invoke-static {v1, v2}, Lcom/android/billingclient/api/b;->m(Lcom/android/billingclient/api/b;Lc5/c;)Lc5/c;

    move v6, v0

    :goto_d
    if-nez v6, :cond_11

    iget-object v0, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    sget-object v1, Lcom/android/billingclient/api/k;->p:Lcom/android/billingclient/api/c;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/b$a;->c(Lcom/android/billingclient/api/b$a;Lcom/android/billingclient/api/c;)V

    goto :goto_e

    :cond_11
    iget-object v0, p0, Lcom/android/billingclient/api/j;->a:Lcom/android/billingclient/api/b$a;

    sget-object v1, Lcom/android/billingclient/api/k;->a:Lcom/android/billingclient/api/c;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/b$a;->c(Lcom/android/billingclient/api/b$a;Lcom/android/billingclient/api/c;)V

    :goto_e
    return-object v2

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_10

    :goto_f
    throw v1

    :goto_10
    goto :goto_f
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/billingclient/api/j;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
