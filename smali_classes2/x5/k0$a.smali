.class public Lx5/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/k0;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Callable;

.field public final synthetic b:Lj5/j;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lj5/j;)V
    .locals 0

    iput-object p1, p0, Lx5/k0$a;->a:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lx5/k0$a;->b:Lj5/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lx5/k0$a;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj5/i;

    new-instance v1, Lx5/k0$a$a;

    invoke-direct {v1, p0}, Lx5/k0$a$a;-><init>(Lx5/k0$a;)V

    invoke-virtual {v0, v1}, Lj5/i;->g(Lj5/a;)Lj5/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lx5/k0$a;->b:Lj5/j;

    invoke-virtual {v1, v0}, Lj5/j;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
