.class public final Lr4/i02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nt2;


# instance fields
.field public final a:Lr4/f02;


# direct methods
.method public constructor <init>(Lr4/f02;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/i02;->a:Lr4/f02;

    return-void
.end method


# virtual methods
.method public final a(Lr4/gt2;Ljava/lang/String;)V
    .locals 4

    sget-object p2, Lr4/rz;->x4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lr4/gt2;->p:Lr4/gt2;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lr4/i02;->a:Lr4/f02;

    invoke-virtual {p1}, Lr4/f02;->f()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-object p1, p0, Lr4/i02;->a:Lr4/f02;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object p2

    invoke-interface {p2}, Lc4/f;->b()J

    move-result-wide v0

    iget-object p2, p0, Lr4/i02;->a:Lr4/f02;

    invoke-virtual {p2}, Lr4/f02;->f()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lr4/f02;->g(J)V

    :cond_0
    return-void
.end method

.method public final c(Lr4/gt2;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object p2, Lr4/rz;->x4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object p3

    invoke-virtual {p3, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lr4/gt2;->p:Lr4/gt2;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lr4/i02;->a:Lr4/f02;

    invoke-virtual {p1}, Lr4/f02;->f()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lr4/i02;->a:Lr4/f02;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object p2

    invoke-interface {p2}, Lc4/f;->b()J

    move-result-wide p2

    iget-object v0, p0, Lr4/i02;->a:Lr4/f02;

    invoke-virtual {v0}, Lr4/f02;->f()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lr4/f02;->g(J)V

    :cond_0
    return-void
.end method

.method public final s(Lr4/gt2;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final u(Lr4/gt2;Ljava/lang/String;)V
    .locals 2

    sget-object p2, Lr4/rz;->x4:Lr4/jz;

    invoke-static {}, Lr4/av;->c()Lr4/pz;

    move-result-object v0

    invoke-virtual {v0, p2}, Lr4/pz;->c(Lr4/jz;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lr4/gt2;->p:Lr4/gt2;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lr4/i02;->a:Lr4/f02;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object p2

    invoke-interface {p2}, Lc4/f;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lr4/f02;->e(J)V

    :cond_0
    return-void
.end method
