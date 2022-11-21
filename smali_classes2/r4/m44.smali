.class public final Lr4/m44;
.super Lr4/w44;
.source "SourceFile"


# instance fields
.field public n:Lr4/n04;

.field public o:Lr4/l44;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/w44;-><init>()V

    return-void
.end method

.method public static j([B)Z
    .locals 2

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    invoke-super {p0, p1}, Lr4/w44;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lr4/m44;->n:Lr4/n04;

    iput-object p1, p0, Lr4/m44;->o:Lr4/l44;

    :cond_0
    return-void
.end method

.method public final b(Lr4/xb;)J
    .locals 4

    invoke-virtual {p1}, Lr4/xb;->q()[B

    move-result-object v0

    invoke-static {v0}, Lr4/m44;->j([B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lr4/xb;->q()[B

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v0, v1

    const/4 v2, 0x6

    const/4 v3, 0x7

    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x7

    :cond_0
    invoke-virtual {p1, v1}, Lr4/xb;->s(I)V

    invoke-virtual {p1}, Lr4/xb;->h()J

    :cond_1
    invoke-static {p1, v0}, Lr4/i04;->c(Lr4/xb;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lr4/xb;->p(I)V

    int-to-long v0, v0

    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final c(Lr4/xb;JLr4/u44;)Z
    .locals 6

    invoke-virtual {p1}, Lr4/xb;->q()[B

    move-result-object v0

    iget-object v1, p0, Lr4/m44;->n:Lr4/n04;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance p2, Lr4/n04;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lr4/n04;-><init>([BI)V

    iput-object p2, p0, Lr4/m44;->n:Lr4/n04;

    const/16 p3, 0x9

    invoke-virtual {p1}, Lr4/xb;->m()I

    move-result p1

    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lr4/n04;->c([BLr4/j8;)Lr4/e5;

    move-result-object p1

    iput-object p1, p4, Lr4/u44;->a:Lr4/e5;

    return v2

    :cond_0
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-static {p1}, Lr4/k04;->b(Lr4/xb;)Lr4/m04;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr4/n04;->e(Lr4/m04;)Lr4/n04;

    move-result-object p2

    iput-object p2, p0, Lr4/m44;->n:Lr4/n04;

    new-instance p3, Lr4/l44;

    invoke-direct {p3, p2, p1}, Lr4/l44;-><init>(Lr4/n04;Lr4/m04;)V

    iput-object p3, p0, Lr4/m44;->o:Lr4/l44;

    return v2

    :cond_1
    invoke-static {v0}, Lr4/m44;->j([B)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lr4/m44;->o:Lr4/l44;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3}, Lr4/l44;->c(J)V

    iget-object p1, p0, Lr4/m44;->o:Lr4/l44;

    iput-object p1, p4, Lr4/u44;->b:Lr4/r44;

    :cond_2
    iget-object p1, p4, Lr4/u44;->a:Lr4/e5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v3

    :cond_3
    return v2
.end method
