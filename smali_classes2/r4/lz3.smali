.class public final Lr4/lz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/z04;


# instance fields
.field public final a:Lr4/oz3;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Lr4/oz3;JJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lz3;->a:Lr4/oz3;

    iput-wide p2, p0, Lr4/lz3;->b:J

    iput-wide p6, p0, Lr4/lz3;->c:J

    iput-wide p8, p0, Lr4/lz3;->d:J

    iput-wide p10, p0, Lr4/lz3;->e:J

    iput-wide p12, p0, Lr4/lz3;->f:J

    return-void
.end method

.method public static synthetic e(Lr4/lz3;)J
    .locals 2

    iget-wide v0, p0, Lr4/lz3;->c:J

    return-wide v0
.end method

.method public static synthetic f(Lr4/lz3;)J
    .locals 2

    iget-wide v0, p0, Lr4/lz3;->d:J

    return-wide v0
.end method

.method public static synthetic h(Lr4/lz3;)J
    .locals 2

    iget-wide v0, p0, Lr4/lz3;->e:J

    return-wide v0
.end method

.method public static synthetic i(Lr4/lz3;)J
    .locals 2

    iget-wide v0, p0, Lr4/lz3;->f:J

    return-wide v0
.end method


# virtual methods
.method public final a(J)Lr4/x04;
    .locals 13

    iget-object v0, p0, Lr4/lz3;->a:Lr4/oz3;

    invoke-interface {v0, p1, p2}, Lr4/oz3;->V(J)J

    move-result-wide v1

    iget-wide v5, p0, Lr4/lz3;->c:J

    iget-wide v7, p0, Lr4/lz3;->d:J

    iget-wide v9, p0, Lr4/lz3;->e:J

    iget-wide v11, p0, Lr4/lz3;->f:J

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v12}, Lr4/nz3;->a(JJJJJJ)J

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
    .locals 2

    iget-wide v0, p0, Lr4/lz3;->b:J

    return-wide v0
.end method

.method public final j(J)J
    .locals 1

    iget-object v0, p0, Lr4/lz3;->a:Lr4/oz3;

    invoke-interface {v0, p1, p2}, Lr4/oz3;->V(J)J

    move-result-wide p1

    return-wide p1
.end method
