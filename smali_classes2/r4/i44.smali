.class public final Lr4/i44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/z04;


# instance fields
.field public final synthetic a:Lr4/k44;


# direct methods
.method public synthetic constructor <init>(Lr4/k44;Lr4/h44;)V
    .locals 0

    iput-object p1, p0, Lr4/i44;->a:Lr4/k44;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lr4/x04;
    .locals 11

    iget-object v0, p0, Lr4/i44;->a:Lr4/k44;

    invoke-static {v0}, Lr4/k44;->e(Lr4/k44;)Lr4/w44;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lr4/w44;->h(J)J

    move-result-wide v0

    iget-object v2, p0, Lr4/i44;->a:Lr4/k44;

    invoke-static {v2}, Lr4/k44;->c(Lr4/k44;)J

    move-result-wide v2

    iget-object v4, p0, Lr4/i44;->a:Lr4/k44;

    invoke-static {v4}, Lr4/k44;->d(Lr4/k44;)J

    move-result-wide v4

    iget-object v6, p0, Lr4/i44;->a:Lr4/k44;

    invoke-static {v6}, Lr4/k44;->c(Lr4/k44;)J

    move-result-wide v6

    iget-object v8, p0, Lr4/i44;->a:Lr4/k44;

    invoke-static {v8}, Lr4/k44;->f(Lr4/k44;)J

    move-result-wide v8

    sub-long/2addr v4, v6

    mul-long v0, v0, v4

    div-long/2addr v0, v8

    iget-object v4, p0, Lr4/i44;->a:Lr4/k44;

    invoke-static {v4}, Lr4/k44;->c(Lr4/k44;)J

    move-result-wide v7

    iget-object v4, p0, Lr4/i44;->a:Lr4/k44;

    invoke-static {v4}, Lr4/k44;->d(Lr4/k44;)J

    move-result-wide v4

    add-long/2addr v2, v0

    const-wide/16 v0, -0x7530

    add-long/2addr v0, v2

    const-wide/16 v2, -0x1

    add-long v9, v4, v2

    move-wide v5, v0

    invoke-static/range {v5 .. v10}, Lr4/lc;->d0(JJJ)J

    move-result-wide v0

    new-instance v2, Lr4/x04;

    new-instance v3, Lr4/a14;

    invoke-direct {v3, p1, p2, v0, v1}, Lr4/a14;-><init>(JJ)V

    invoke-direct {v2, v3, v3}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    return-object v2
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()J
    .locals 3

    iget-object v0, p0, Lr4/i44;->a:Lr4/k44;

    invoke-static {v0}, Lr4/k44;->e(Lr4/k44;)Lr4/w44;

    move-result-object v0

    iget-object v1, p0, Lr4/i44;->a:Lr4/k44;

    invoke-static {v1}, Lr4/k44;->f(Lr4/k44;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/w44;->g(J)J

    move-result-wide v0

    return-wide v0
.end method
