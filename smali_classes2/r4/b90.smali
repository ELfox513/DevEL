.class public final Lr4/b90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/u50<",
        "Lr4/q90;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr4/j80;

.field public final synthetic b:Lb3/i1;

.field public final synthetic c:Lr4/p90;


# direct methods
.method public constructor <init>(Lr4/p90;Lr4/u;Lr4/j80;Lb3/i1;)V
    .locals 0

    iput-object p1, p0, Lr4/b90;->c:Lr4/p90;

    iput-object p3, p0, Lr4/b90;->a:Lr4/j80;

    iput-object p4, p0, Lr4/b90;->b:Lb3/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    check-cast p1, Lr4/q90;

    iget-object p1, p0, Lr4/b90;->c:Lr4/p90;

    invoke-static {p1}, Lr4/p90;->a(Lr4/p90;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    invoke-static {p2}, Lr4/cm0;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lr4/b90;->c:Lr4/p90;

    invoke-static {p2}, Lr4/p90;->e(Lr4/p90;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    invoke-static {p2}, Lr4/cm0;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lr4/b90;->c:Lr4/p90;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lr4/p90;->d(Lr4/p90;I)I

    iget-object p2, p0, Lr4/b90;->c:Lr4/p90;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lr4/p90;->f(Lr4/u;)Lr4/o90;

    :cond_0
    iget-object p2, p0, Lr4/b90;->a:Lr4/j80;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lr4/b90;->b:Lb3/i1;

    invoke-virtual {v1}, Lb3/i1;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lr4/q90;->U(Ljava/lang/String;Lr4/u50;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
