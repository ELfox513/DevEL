.class public final Lr4/e90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/zm0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/zm0<",
        "Lr4/j80;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/o90;

.field public final synthetic b:Lr4/p90;


# direct methods
.method public constructor <init>(Lr4/p90;Lr4/o90;)V
    .locals 0

    iput-object p1, p0, Lr4/e90;->b:Lr4/p90;

    iput-object p2, p0, Lr4/e90;->a:Lr4/o90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lr4/j80;

    iget-object p1, p0, Lr4/e90;->b:Lr4/p90;

    invoke-static {p1}, Lr4/p90;->a(Lr4/p90;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lr4/e90;->b:Lr4/p90;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/p90;->d(Lr4/p90;I)I

    iget-object v0, p0, Lr4/e90;->b:Lr4/p90;

    invoke-static {v0}, Lr4/p90;->c(Lr4/p90;)Lr4/o90;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/e90;->a:Lr4/o90;

    iget-object v1, p0, Lr4/e90;->b:Lr4/p90;

    invoke-static {v1}, Lr4/p90;->c(Lr4/p90;)Lr4/o90;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lb3/w1;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lr4/e90;->b:Lr4/p90;

    invoke-static {v0}, Lr4/p90;->c(Lr4/p90;)Lr4/o90;

    move-result-object v0

    invoke-virtual {v0}, Lr4/o90;->h()V

    :cond_0
    iget-object v0, p0, Lr4/e90;->b:Lr4/p90;

    iget-object v1, p0, Lr4/e90;->a:Lr4/o90;

    invoke-static {v0, v1}, Lr4/p90;->b(Lr4/p90;Lr4/o90;)Lr4/o90;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
