.class public final Ly4/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/k1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly4/k1<",
        "Ly4/g2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/n;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/y1;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/k2;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ly4/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly4/n1<",
            "Ly4/s1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;Ly4/n1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4/n1<",
            "Landroid/app/Application;",
            ">;",
            "Ly4/n1<",
            "Ly4/d;",
            ">;",
            "Ly4/n1<",
            "Landroid/os/Handler;",
            ">;",
            "Ly4/n1<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ly4/n1<",
            "Ly4/n;",
            ">;",
            "Ly4/n1<",
            "Ly4/c0;",
            ">;",
            "Ly4/n1<",
            "Ly4/y1;",
            ">;",
            "Ly4/n1<",
            "Ly4/k2;",
            ">;",
            "Ly4/n1<",
            "Ly4/s1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/h2;->a:Ly4/n1;

    iput-object p2, p0, Ly4/h2;->b:Ly4/n1;

    iput-object p3, p0, Ly4/h2;->c:Ly4/n1;

    iput-object p4, p0, Ly4/h2;->d:Ly4/n1;

    iput-object p5, p0, Ly4/h2;->e:Ly4/n1;

    iput-object p6, p0, Ly4/h2;->f:Ly4/n1;

    iput-object p7, p0, Ly4/h2;->g:Ly4/n1;

    iput-object p8, p0, Ly4/h2;->h:Ly4/n1;

    iput-object p9, p0, Ly4/h2;->i:Ly4/n1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly4/h2;->b()Ly4/g2;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ly4/g2;
    .locals 11

    iget-object v0, p0, Ly4/h2;->a:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Application;

    iget-object v0, p0, Ly4/h2;->b:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ly4/d;

    sget-object v4, Ly4/g1;->a:Landroid/os/Handler;

    invoke-static {v4}, Ly4/m1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ly4/g1;->b:Ljava/util/concurrent/Executor;

    invoke-static {v5}, Ly4/m1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ly4/h2;->e:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ly4/n;

    iget-object v0, p0, Ly4/h2;->f:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ly4/c0;

    iget-object v0, p0, Ly4/h2;->g:Ly4/n1;

    check-cast v0, Ly4/a2;

    invoke-virtual {v0}, Ly4/a2;->b()Ly4/y1;

    move-result-object v8

    iget-object v0, p0, Ly4/h2;->h:Ly4/n1;

    check-cast v0, Ly4/c;

    invoke-virtual {v0}, Ly4/c;->b()Ly4/k2;

    move-result-object v9

    iget-object v0, p0, Ly4/h2;->i:Ly4/n1;

    invoke-interface {v0}, Ly4/n1;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ly4/s1;

    new-instance v0, Ly4/g2;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Ly4/g2;-><init>(Landroid/app/Application;Ly4/d;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ly4/n;Ly4/c0;Ly4/y1;Ly4/k2;Ly4/s1;)V

    return-object v0
.end method
