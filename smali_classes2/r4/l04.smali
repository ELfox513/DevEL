.class public final Lr4/l04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/z04;


# instance fields
.field public final a:Lr4/n04;

.field public final b:J


# direct methods
.method public constructor <init>(Lr4/n04;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/l04;->a:Lr4/n04;

    iput-wide p2, p0, Lr4/l04;->b:J

    return-void
.end method


# virtual methods
.method public final a(J)Lr4/x04;
    .locals 9

    iget-object v0, p0, Lr4/l04;->a:Lr4/n04;

    iget-object v0, v0, Lr4/n04;->k:Lr4/m04;

    invoke-static {v0}, Lr4/ja;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lr4/l04;->a:Lr4/n04;

    iget-object v1, v0, Lr4/n04;->k:Lr4/m04;

    iget-object v2, v1, Lr4/m04;->a:[J

    iget-object v1, v1, Lr4/m04;->b:[J

    invoke-virtual {v0, p1, p2}, Lr4/n04;->b(J)J

    move-result-wide v3

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lr4/lc;->d([JJZZ)I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move-wide v7, v4

    goto :goto_0

    :cond_0
    aget-wide v7, v2, v3

    :goto_0
    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    aget-wide v4, v1, v3

    :goto_1
    invoke-virtual {p0, v7, v8, v4, v5}, Lr4/l04;->e(JJ)Lr4/a14;

    move-result-object v4

    iget-wide v7, v4, Lr4/a14;->a:J

    cmp-long v5, v7, p1

    if-eqz v5, :cond_3

    array-length p1, v2

    add-int/2addr p1, v6

    if-ne v3, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v3, v0

    aget-wide p1, v2, v3

    aget-wide v0, v1, v3

    invoke-virtual {p0, p1, p2, v0, v1}, Lr4/l04;->e(JJ)Lr4/a14;

    move-result-object p1

    new-instance p2, Lr4/x04;

    invoke-direct {p2, v4, p1}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    return-object p2

    :cond_3
    :goto_2
    new-instance p1, Lr4/x04;

    invoke-direct {p1, v4, v4}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    return-object p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(JJ)Lr4/a14;
    .locals 3

    iget-object v0, p0, Lr4/l04;->a:Lr4/n04;

    iget v0, v0, Lr4/n04;->e:I

    const-wide/32 v1, 0xf4240

    mul-long p1, p1, v1

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget-wide v0, p0, Lr4/l04;->b:J

    new-instance v2, Lr4/a14;

    add-long/2addr v0, p3

    invoke-direct {v2, p1, p2, v0, v1}, Lr4/a14;-><init>(JJ)V

    return-object v2
.end method

.method public final g()J
    .locals 2

    iget-object v0, p0, Lr4/l04;->a:Lr4/n04;

    invoke-virtual {v0}, Lr4/n04;->a()J

    move-result-wide v0

    return-wide v0
.end method
