.class public final Lr4/ou1;
.super Lr4/j70;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic k:Lr4/vm0;

.field public final synthetic p:Lr4/pu1;


# direct methods
.method public constructor <init>(Lr4/pu1;Ljava/lang/Object;Ljava/lang/String;JLr4/vm0;)V
    .locals 0

    iput-object p1, p0, Lr4/ou1;->p:Lr4/pu1;

    iput-object p2, p0, Lr4/ou1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lr4/ou1;->b:Ljava/lang/String;

    iput-wide p4, p0, Lr4/ou1;->d:J

    iput-object p6, p0, Lr4/ou1;->k:Lr4/vm0;

    invoke-direct {p0}, Lr4/j70;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 9

    iget-object v0, p0, Lr4/ou1;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/ou1;->p:Lr4/pu1;

    iget-object v2, p0, Lr4/ou1;->b:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v5

    invoke-interface {v5}, Lc4/f;->b()J

    move-result-wide v5

    iget-wide v7, p0, Lr4/ou1;->d:J

    sub-long/2addr v5, v7

    long-to-int v6, v5

    invoke-static {v1, v2, v3, v4, v6}, Lr4/pu1;->l(Lr4/pu1;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v1, p0, Lr4/ou1;->p:Lr4/pu1;

    invoke-static {v1}, Lr4/pu1;->e(Lr4/pu1;)Lr4/us1;

    move-result-object v1

    iget-object v2, p0, Lr4/ou1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lr4/us1;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lr4/ou1;->p:Lr4/pu1;

    invoke-static {v1}, Lr4/pu1;->f(Lr4/pu1;)Lr4/ge1;

    move-result-object v1

    iget-object v2, p0, Lr4/ou1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lr4/ge1;->u(Ljava/lang/String;)V

    iget-object v1, p0, Lr4/ou1;->k:Lr4/vm0;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lr4/ou1;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr4/ou1;->p:Lr4/pu1;

    iget-object v2, p0, Lr4/ou1;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v4

    invoke-interface {v4}, Lc4/f;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lr4/ou1;->d:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    invoke-static {v1, v2, v3, p1, v5}, Lr4/pu1;->l(Lr4/pu1;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object p1, p0, Lr4/ou1;->p:Lr4/pu1;

    invoke-static {p1}, Lr4/pu1;->e(Lr4/pu1;)Lr4/us1;

    move-result-object p1

    iget-object v1, p0, Lr4/ou1;->b:Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {p1, v1, v2}, Lr4/us1;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lr4/ou1;->p:Lr4/pu1;

    invoke-static {p1}, Lr4/pu1;->f(Lr4/pu1;)Lr4/ge1;

    move-result-object p1

    iget-object v1, p0, Lr4/ou1;->b:Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {p1, v1, v2}, Lr4/ge1;->b0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lr4/ou1;->k:Lr4/vm0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
