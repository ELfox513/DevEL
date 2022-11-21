.class public final Lr4/a90;
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
.field public final synthetic a:Lr4/o90;

.field public final synthetic b:Lr4/j80;

.field public final synthetic c:Lr4/p90;


# direct methods
.method public constructor <init>(Lr4/p90;Lr4/o90;Lr4/j80;)V
    .locals 0

    iput-object p1, p0, Lr4/a90;->c:Lr4/p90;

    iput-object p2, p0, Lr4/a90;->a:Lr4/o90;

    iput-object p3, p0, Lr4/a90;->b:Lr4/j80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    check-cast p1, Lr4/q90;

    iget-object p1, p0, Lr4/a90;->c:Lr4/p90;

    invoke-static {p1}, Lr4/p90;->a(Lr4/p90;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lr4/a90;->a:Lr4/o90;

    invoke-virtual {p2}, Lr4/cn0;->e()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lr4/a90;->a:Lr4/o90;

    invoke-virtual {p2}, Lr4/cn0;->e()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lr4/a90;->c:Lr4/p90;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lr4/p90;->d(Lr4/p90;I)I

    iget-object p2, p0, Lr4/a90;->b:Lr4/j80;

    const-string v0, "/log"

    sget-object v1, Lr4/t50;->g:Lr4/u50;

    invoke-interface {p2, v0, v1}, Lr4/q90;->A0(Ljava/lang/String;Lr4/u50;)V

    const-string v0, "/result"

    sget-object v1, Lr4/t50;->o:Lr4/j60;

    invoke-interface {p2, v0, v1}, Lr4/q90;->A0(Ljava/lang/String;Lr4/u50;)V

    iget-object p2, p0, Lr4/a90;->a:Lr4/o90;

    iget-object v0, p0, Lr4/a90;->b:Lr4/j80;

    invoke-virtual {p2, v0}, Lr4/cn0;->c(Ljava/lang/Object;)V

    iget-object p2, p0, Lr4/a90;->c:Lr4/p90;

    iget-object v0, p0, Lr4/a90;->a:Lr4/o90;

    invoke-static {p2, v0}, Lr4/p90;->b(Lr4/p90;Lr4/o90;)Lr4/o90;

    const-string p2, "Successfully loaded JS Engine."

    invoke-static {p2}, Lb3/w1;->k(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
