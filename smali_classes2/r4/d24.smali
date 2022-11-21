.class public final Lr4/d24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/z04;


# instance fields
.field public final synthetic a:Lr4/z04;

.field public final synthetic b:Lr4/e24;


# direct methods
.method public constructor <init>(Lr4/e24;Lr4/z04;)V
    .locals 0

    iput-object p1, p0, Lr4/d24;->b:Lr4/e24;

    iput-object p2, p0, Lr4/d24;->a:Lr4/z04;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lr4/x04;
    .locals 8

    iget-object v0, p0, Lr4/d24;->a:Lr4/z04;

    invoke-interface {v0, p1, p2}, Lr4/z04;->a(J)Lr4/x04;

    move-result-object p1

    new-instance p2, Lr4/x04;

    new-instance v0, Lr4/a14;

    iget-object v1, p1, Lr4/x04;->a:Lr4/a14;

    iget-wide v2, v1, Lr4/a14;->a:J

    iget-wide v4, v1, Lr4/a14;->b:J

    iget-object v1, p0, Lr4/d24;->b:Lr4/e24;

    invoke-static {v1}, Lr4/e24;->a(Lr4/e24;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lr4/a14;-><init>(JJ)V

    new-instance v1, Lr4/a14;

    iget-object p1, p1, Lr4/x04;->b:Lr4/a14;

    iget-wide v2, p1, Lr4/a14;->a:J

    iget-wide v4, p1, Lr4/a14;->b:J

    iget-object p1, p0, Lr4/d24;->b:Lr4/e24;

    invoke-static {p1}, Lr4/e24;->a(Lr4/e24;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lr4/a14;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    return-object p2
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lr4/d24;->a:Lr4/z04;

    invoke-interface {v0}, Lr4/z04;->c()Z

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2

    iget-object v0, p0, Lr4/d24;->a:Lr4/z04;

    invoke-interface {v0}, Lr4/z04;->g()J

    move-result-wide v0

    return-wide v0
.end method
