.class public final Lx3/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/h$a;


# instance fields
.field public final synthetic a:Lu3/h;

.field public final synthetic b:Lj5/j;

.field public final synthetic c:Lx3/p$a;

.field public final synthetic d:Lx3/m0;


# direct methods
.method public constructor <init>(Lu3/h;Lj5/j;Lx3/p$a;Lx3/m0;)V
    .locals 0

    iput-object p1, p0, Lx3/k0;->a:Lu3/h;

    iput-object p2, p0, Lx3/k0;->b:Lj5/j;

    iput-object p3, p0, Lx3/k0;->c:Lx3/p$a;

    iput-object p4, p0, Lx3/k0;->d:Lx3/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lx3/k0;->a:Lu3/h;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lu3/h;->d(JLjava/util/concurrent/TimeUnit;)Lu3/l;

    move-result-object p1

    iget-object v0, p0, Lx3/k0;->b:Lj5/j;

    iget-object v1, p0, Lx3/k0;->c:Lx3/p$a;

    invoke-interface {v1, p1}, Lx3/p$a;->a(Lu3/l;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj5/j;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lx3/k0;->b:Lj5/j;

    invoke-static {p1}, Lx3/b;->a(Lcom/google/android/gms/common/api/Status;)Lu3/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj5/j;->b(Ljava/lang/Exception;)V

    return-void
.end method
