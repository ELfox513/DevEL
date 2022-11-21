.class public final enum Lt1/j$c0;
.super Lt1/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lt1/j;-><init>(Ljava/lang/String;ILt1/j$k;)V

    return-void
.end method


# virtual methods
.method public O(ILt1/d;)Lt1/f;
    .locals 7

    invoke-interface {p2}, Lt1/d;->read()I

    move-result v0

    invoke-interface {p2}, Lt1/d;->readInt()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    if-ne v0, v2, :cond_1

    new-array v0, v1, [J

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {p2}, Lt1/d;->readLong()J

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lt1/g;

    invoke-direct {p2, p0, p1, v0}, Lt1/g;-><init>(Lt1/j;I[J)V

    return-object p2

    :cond_1
    new-instance p1, Lk1/g;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bogus element_width: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-array v0, v1, [I

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-interface {p2}, Lt1/d;->readInt()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance p2, Lt1/g;

    invoke-direct {p2, p0, p1, v0}, Lt1/g;-><init>(Lt1/j;I[I)V

    return-object p2

    :cond_4
    new-array v0, v1, [S

    :goto_2
    if-ge v3, v1, :cond_5

    invoke-interface {p2}, Lt1/d;->read()I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    new-instance p2, Lt1/g;

    invoke-direct {p2, p0, p1, v0}, Lt1/g;-><init>(Lt1/j;I[S)V

    return-object p2

    :cond_6
    new-array v0, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_3
    if-ge v3, v1, :cond_8

    if-eqz v5, :cond_7

    invoke-interface {p2}, Lt1/d;->read()I

    move-result v4

    :cond_7
    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    shr-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    xor-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    new-instance p2, Lt1/g;

    invoke-direct {p2, p0, p1, v0}, Lt1/g;-><init>(Lt1/j;I[B)V

    return-object p2
.end method

.method public R(Lt1/f;Lt1/e;)V
    .locals 3

    check-cast p1, Lt1/g;

    invoke-virtual {p1}, Lt1/g;->F()S

    move-result v0

    invoke-virtual {p1}, Lt1/g;->E()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lt1/f;->v()S

    move-result v2

    invoke-interface {p2, v2}, Lt1/e;->i(S)V

    invoke-interface {p2, v0}, Lt1/e;->i(S)V

    invoke-virtual {p1}, Lt1/g;->G()I

    move-result p1

    invoke-interface {p2, p1}, Lt1/e;->writeInt(I)V

    const/4 p1, 0x1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/16 p1, 0x8

    if-ne v0, p1, :cond_0

    check-cast v1, [J

    invoke-interface {p2, v1}, Lt1/e;->c([J)V

    goto :goto_0

    :cond_0
    new-instance p1, Lk1/g;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bogus element_width: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v1, [I

    invoke-interface {p2, v1}, Lt1/e;->d([I)V

    goto :goto_0

    :cond_2
    check-cast v1, [S

    invoke-interface {p2, v1}, Lt1/e;->a([S)V

    goto :goto_0

    :cond_3
    check-cast v1, [B

    invoke-interface {p2, v1}, Lt1/e;->write([B)V

    :goto_0
    return-void
.end method
