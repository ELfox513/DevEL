.class public final Lg5/g8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/u;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Lb5/i1;

.field public final synthetic k:Lg5/w8;


# direct methods
.method public constructor <init>(Lg5/w8;Lg5/u;Ljava/lang/String;Lb5/i1;)V
    .locals 0

    iput-object p1, p0, Lg5/g8;->k:Lg5/w8;

    iput-object p2, p0, Lg5/g8;->a:Lg5/u;

    iput-object p3, p0, Lg5/g8;->b:Ljava/lang/String;

    iput-object p4, p0, Lg5/g8;->d:Lb5/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lg5/g8;->k:Lg5/w8;

    invoke-static {v1}, Lg5/w8;->C(Lg5/w8;)Lg5/g3;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lg5/g8;->k:Lg5/w8;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->m()Lg5/o3;

    move-result-object v1

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    invoke-virtual {v1, v2}, Lg5/o3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lg5/g8;->k:Lg5/w8;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    :goto_0
    invoke-virtual {v1}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    iget-object v2, p0, Lg5/g8;->d:Lb5/i1;

    invoke-virtual {v1, v2, v0}, Lg5/ia;->A(Lb5/i1;[B)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lg5/g8;->a:Lg5/u;

    iget-object v3, p0, Lg5/g8;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lg5/g3;->V1(Lg5/u;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lg5/g8;->k:Lg5/w8;

    invoke-static {v1}, Lg5/w8;->K(Lg5/w8;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lg5/g8;->k:Lg5/w8;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lg5/g8;->k:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->m()Lg5/o3;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lg5/g8;->k:Lg5/w8;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lg5/g8;->k:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->K()Lg5/ia;

    move-result-object v2

    iget-object v3, p0, Lg5/g8;->d:Lb5/i1;

    invoke-virtual {v2, v3, v0}, Lg5/ia;->A(Lb5/i1;[B)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
