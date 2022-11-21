.class public final Lg5/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lb5/t4;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb5/j4;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public final synthetic e:Lg5/ba;


# direct methods
.method public synthetic constructor <init>(Lg5/ba;Lg5/z9;)V
    .locals 0

    iput-object p1, p0, Lg5/aa;->e:Lg5/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Lb5/j4;)J
    .locals 4

    invoke-virtual {p0}, Lb5/j4;->v()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(JLb5/j4;)Z
    .locals 7

    invoke-static {p3}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg5/aa;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg5/aa;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lg5/aa;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg5/aa;->b:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lg5/aa;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    iget-object v0, p0, Lg5/aa;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/j4;

    invoke-static {v0}, Lg5/aa;->b(Lb5/j4;)J

    move-result-wide v2

    invoke-static {p3}, Lg5/aa;->b(Lb5/j4;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget-wide v2, p0, Lg5/aa;->d:J

    invoke-virtual {p3}, Lb5/x8;->t0()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-object v0, p0, Lg5/aa;->e:Lg5/ba;

    invoke-virtual {v0}, Lg5/ba;->T()Lg5/g;

    sget-object v0, Lg5/c3;->j:Lg5/b3;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lg5/b3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-ltz v0, :cond_4

    return v1

    :cond_4
    iput-wide v2, p0, Lg5/aa;->d:J

    iget-object v0, p0, Lg5/aa;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lg5/aa;->b:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lg5/aa;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lg5/aa;->e:Lg5/ba;

    invoke-virtual {p2}, Lg5/ba;->T()Lg5/g;

    sget-object p2, Lg5/c3;->k:Lg5/b3;

    invoke-virtual {p2, v4}, Lg5/b3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lt p1, p2, :cond_5

    return v1

    :cond_5
    return p3
.end method
