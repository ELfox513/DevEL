.class public final Lr4/j64;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/m54;

.field public final b:Lr4/fc;

.field public final c:Lr4/wb;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lr4/m54;Lr4/fc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j64;->a:Lr4/m54;

    iput-object p2, p0, Lr4/j64;->b:Lr4/fc;

    new-instance p1, Lr4/wb;

    const/16 p2, 0x40

    new-array v0, p2, [B

    invoke-direct {p1, v0, p2}, Lr4/wb;-><init>([BI)V

    iput-object p1, p0, Lr4/j64;->c:Lr4/wb;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/j64;->f:Z

    iget-object v0, p0, Lr4/j64;->a:Lr4/m54;

    invoke-interface {v0}, Lr4/m54;->zza()V

    return-void
.end method

.method public final b(Lr4/xb;)V
    .locals 12

    iget-object v0, p0, Lr4/j64;->c:Lr4/wb;

    iget-object v0, v0, Lr4/wb;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lr4/xb;->u([BII)V

    iget-object v0, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v0, v1}, Lr4/wb;->d(I)V

    iget-object v0, p0, Lr4/j64;->c:Lr4/wb;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lr4/wb;->f(I)V

    iget-object v0, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v0}, Lr4/wb;->g()Z

    move-result v0

    iput-boolean v0, p0, Lr4/j64;->d:Z

    iget-object v0, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v0}, Lr4/wb;->g()Z

    move-result v0

    iput-boolean v0, p0, Lr4/j64;->e:Z

    iget-object v0, p0, Lr4/j64;->c:Lr4/wb;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lr4/wb;->f(I)V

    iget-object v0, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v0, v3}, Lr4/wb;->h(I)I

    move-result v0

    iget-object v3, p0, Lr4/j64;->c:Lr4/wb;

    iget-object v3, v3, Lr4/wb;->a:[B

    invoke-virtual {p1, v3, v1, v0}, Lr4/xb;->u([BII)V

    iget-object v0, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v0, v1}, Lr4/wb;->d(I)V

    iget-boolean v0, p0, Lr4/j64;->d:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v0, v1}, Lr4/wb;->f(I)V

    iget-object v0, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v0, v2}, Lr4/wb;->h(I)I

    move-result v0

    iget-object v3, p0, Lr4/j64;->c:Lr4/wb;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lr4/wb;->f(I)V

    iget-object v3, p0, Lr4/j64;->c:Lr4/wb;

    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Lr4/wb;->h(I)I

    move-result v3

    iget-object v6, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v6, v4}, Lr4/wb;->f(I)V

    int-to-long v6, v0

    const/16 v0, 0x1e

    shl-long/2addr v6, v0

    shl-int/2addr v3, v5

    int-to-long v8, v3

    or-long/2addr v6, v8

    iget-object v3, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v3, v5}, Lr4/wb;->h(I)I

    move-result v3

    int-to-long v8, v3

    or-long/2addr v6, v8

    iget-object v3, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v3, v4}, Lr4/wb;->f(I)V

    iget-boolean v3, p0, Lr4/j64;->f:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lr4/j64;->e:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v3, v1}, Lr4/wb;->f(I)V

    iget-object v3, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v3, v2}, Lr4/wb;->h(I)I

    move-result v2

    iget-object v3, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v3, v4}, Lr4/wb;->f(I)V

    iget-object v3, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v3, v5}, Lr4/wb;->h(I)I

    move-result v3

    iget-object v8, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v8, v4}, Lr4/wb;->f(I)V

    iget-object v8, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v8, v5}, Lr4/wb;->h(I)I

    move-result v8

    iget-object v9, p0, Lr4/j64;->c:Lr4/wb;

    invoke-virtual {v9, v4}, Lr4/wb;->f(I)V

    iget-object v9, p0, Lr4/j64;->b:Lr4/fc;

    int-to-long v10, v2

    shl-long/2addr v10, v0

    shl-int/lit8 v0, v3, 0xf

    int-to-long v2, v0

    or-long/2addr v2, v10

    int-to-long v10, v8

    or-long/2addr v2, v10

    invoke-virtual {v9, v2, v3}, Lr4/fc;->e(J)J

    iput-boolean v4, p0, Lr4/j64;->f:Z

    :cond_0
    iget-object v0, p0, Lr4/j64;->b:Lr4/fc;

    invoke-virtual {v0, v6, v7}, Lr4/fc;->e(J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    iget-object v0, p0, Lr4/j64;->a:Lr4/m54;

    invoke-interface {v0, v2, v3, v1}, Lr4/m54;->d(JI)V

    iget-object v0, p0, Lr4/j64;->a:Lr4/m54;

    invoke-interface {v0, p1}, Lr4/m54;->b(Lr4/xb;)V

    iget-object p1, p0, Lr4/j64;->a:Lr4/m54;

    invoke-interface {p1}, Lr4/m54;->c()V

    return-void
.end method
