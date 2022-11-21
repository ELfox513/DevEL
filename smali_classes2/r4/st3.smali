.class public final Lr4/st3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vu3;


# instance fields
.field public final a:Lr4/vu3;

.field public final b:J


# direct methods
.method public constructor <init>(Lr4/vu3;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/st3;->a:Lr4/vu3;

    iput-wide p2, p0, Lr4/st3;->b:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lr4/st3;->a:Lr4/vu3;

    invoke-interface {v0}, Lr4/vu3;->a()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lr4/st3;->a:Lr4/vu3;

    invoke-interface {v0}, Lr4/vu3;->b()V

    return-void
.end method

.method public final c(J)I
    .locals 3

    iget-object v0, p0, Lr4/st3;->a:Lr4/vu3;

    iget-wide v1, p0, Lr4/st3;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lr4/vu3;->c(J)I

    move-result p1

    return p1
.end method

.method public final d(Lr4/f5;Lr4/i4;I)I
    .locals 6

    iget-object v0, p0, Lr4/st3;->a:Lr4/vu3;

    invoke-interface {v0, p1, p2, p3}, Lr4/vu3;->d(Lr4/f5;Lr4/i4;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    const-wide/16 v0, 0x0

    iget-wide v2, p2, Lr4/i4;->e:J

    iget-wide v4, p0, Lr4/st3;->b:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lr4/i4;->e:J

    return p3

    :cond_0
    return p1
.end method

.method public final e()Lr4/vu3;
    .locals 1

    iget-object v0, p0, Lr4/st3;->a:Lr4/vu3;

    return-object v0
.end method
