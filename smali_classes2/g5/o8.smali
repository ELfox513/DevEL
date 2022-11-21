.class public final Lg5/o8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Lg5/pa;

.field public final synthetic k:Lb5/i1;

.field public final synthetic p:Lg5/w8;


# direct methods
.method public constructor <init>(Lg5/w8;Ljava/lang/String;Ljava/lang/String;Lg5/pa;Lb5/i1;)V
    .locals 0

    iput-object p1, p0, Lg5/o8;->p:Lg5/w8;

    iput-object p2, p0, Lg5/o8;->a:Ljava/lang/String;

    iput-object p3, p0, Lg5/o8;->b:Ljava/lang/String;

    iput-object p4, p0, Lg5/o8;->d:Lg5/pa;

    iput-object p5, p0, Lg5/o8;->k:Lb5/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lg5/o8;->p:Lg5/w8;

    invoke-static {v1}, Lg5/w8;->C(Lg5/w8;)Lg5/g3;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lg5/o8;->p:Lg5/w8;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->m()Lg5/o3;

    move-result-object v1

    const-string v2, "Failed to get conditional properties; not connected to service"

    iget-object v3, p0, Lg5/o8;->a:Ljava/lang/String;

    iget-object v4, p0, Lg5/o8;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lg5/o3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lg5/o8;->p:Lg5/w8;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    :goto_0
    invoke-virtual {v1}, Lg5/b5;->K()Lg5/ia;

    move-result-object v1

    iget-object v2, p0, Lg5/o8;->k:Lb5/i1;

    invoke-virtual {v1, v2, v0}, Lg5/ia;->y(Lb5/i1;Ljava/util/ArrayList;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lg5/o8;->d:Lg5/pa;

    invoke-static {v2}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lg5/o8;->a:Ljava/lang/String;

    iget-object v3, p0, Lg5/o8;->b:Ljava/lang/String;

    iget-object v4, p0, Lg5/o8;->d:Lg5/pa;

    invoke-interface {v1, v2, v3, v4}, Lg5/g3;->Y5(Ljava/lang/String;Ljava/lang/String;Lg5/pa;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lg5/ia;->p(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lg5/o8;->p:Lg5/w8;

    invoke-static {v1}, Lg5/w8;->K(Lg5/w8;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lg5/o8;->p:Lg5/w8;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lg5/o8;->p:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->m()Lg5/o3;

    move-result-object v2

    const-string v3, "Failed to get conditional properties; remote exception"

    iget-object v4, p0, Lg5/o8;->a:Ljava/lang/String;

    iget-object v5, p0, Lg5/o8;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Lg5/o3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lg5/o8;->p:Lg5/w8;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lg5/o8;->p:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->K()Lg5/ia;

    move-result-object v2

    iget-object v3, p0, Lg5/o8;->k:Lb5/i1;

    invoke-virtual {v2, v3, v0}, Lg5/ia;->y(Lb5/i1;Ljava/util/ArrayList;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
