.class public final Lr4/l44;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/r44;


# instance fields
.field public final a:Lr4/n04;

.field public final b:Lr4/m04;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Lr4/n04;Lr4/m04;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/l44;->a:Lr4/n04;

    iput-object p2, p0, Lr4/l44;->b:Lr4/m04;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lr4/l44;->c:J

    iput-wide p1, p0, Lr4/l44;->d:J

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lr4/l44;->b:Lr4/m04;

    iget-object v0, v0, Lr4/m04;->a:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lr4/lc;->d([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    iput-wide p1, p0, Lr4/l44;->d:J

    return-void
.end method

.method public final b(Lr4/b04;)J
    .locals 6

    iget-wide v0, p0, Lr4/l44;->d:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_0

    iput-wide v2, p0, Lr4/l44;->d:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v0, v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lr4/l44;->c:J

    return-void
.end method

.method public final g()Lr4/z04;
    .locals 5

    iget-wide v0, p0, Lr4/l44;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/ja;->d(Z)V

    new-instance v0, Lr4/l04;

    iget-object v1, p0, Lr4/l44;->a:Lr4/n04;

    iget-wide v2, p0, Lr4/l44;->c:J

    invoke-direct {v0, v1, v2, v3}, Lr4/l04;-><init>(Lr4/n04;J)V

    return-object v0
.end method
