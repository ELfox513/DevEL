.class public final Lg5/b8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/pa;

.field public final synthetic b:Lb5/i1;

.field public final synthetic d:Lg5/w8;


# direct methods
.method public constructor <init>(Lg5/w8;Lg5/pa;Lb5/i1;)V
    .locals 0

    iput-object p1, p0, Lg5/b8;->d:Lg5/w8;

    iput-object p2, p0, Lg5/b8;->a:Lg5/pa;

    iput-object p3, p0, Lg5/b8;->b:Lb5/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->A()Lg5/g4;

    move-result-object v2

    invoke-virtual {v2}, Lg5/g4;->l()Lg5/h;

    move-result-object v2

    invoke-virtual {v2}, Lg5/h;->k()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->s()Lg5/o3;

    move-result-object v2

    const-string v3, "Analytics storage consent denied; will not get app instance id"

    invoke-virtual {v2, v3}, Lg5/o3;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->D()Lg5/i7;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg5/i7;->x(Ljava/lang/String;)V

    iget-object v2, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->A()Lg5/g4;

    move-result-object v2

    iget-object v2, v2, Lg5/g4;->g:Lg5/e4;

    invoke-virtual {v2, v1}, Lg5/e4;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    :goto_0
    invoke-virtual {v0}, Lg5/b5;->K()Lg5/ia;

    move-result-object v0

    iget-object v2, p0, Lg5/b8;->b:Lb5/i1;

    invoke-virtual {v0, v2, v1}, Lg5/ia;->D(Lb5/i1;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lg5/b8;->d:Lg5/w8;

    invoke-static {v2}, Lg5/w8;->C(Lg5/w8;)Lg5/g3;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->F()Lg5/q3;

    move-result-object v2

    invoke-virtual {v2}, Lg5/q3;->m()Lg5/o3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lg5/o3;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v3, p0, Lg5/b8;->a:Lg5/pa;

    invoke-static {v3}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lg5/b8;->a:Lg5/pa;

    invoke-interface {v2, v3}, Lg5/g3;->g6(Lg5/pa;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->D()Lg5/i7;

    move-result-object v2

    invoke-virtual {v2, v1}, Lg5/i7;->x(Ljava/lang/String;)V

    iget-object v2, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->A()Lg5/g4;

    move-result-object v2

    iget-object v2, v2, Lg5/g4;->g:Lg5/e4;

    invoke-virtual {v2, v1}, Lg5/e4;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lg5/b8;->d:Lg5/w8;

    invoke-static {v2}, Lg5/w8;->K(Lg5/w8;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v3, v3, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->F()Lg5/q3;

    move-result-object v3

    invoke-virtual {v3}, Lg5/q3;->m()Lg5/o3;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lg5/b8;->d:Lg5/w8;

    iget-object v2, v2, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v2}, Lg5/b5;->K()Lg5/ia;

    move-result-object v2

    iget-object v3, p0, Lg5/b8;->b:Lb5/i1;

    invoke-virtual {v2, v3, v1}, Lg5/ia;->D(Lb5/i1;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
