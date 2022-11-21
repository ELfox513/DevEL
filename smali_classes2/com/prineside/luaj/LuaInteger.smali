.class public Lcom/prineside/luaj/LuaInteger;
.super Lcom/prineside/luaj/LuaNumber;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# static fields
.field public static final u:[Lcom/prineside/luaj/LuaInteger;


# instance fields
.field public v:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x200

    new-array v1, v0, [Lcom/prineside/luaj/LuaInteger;

    sput-object v1, Lcom/prineside/luaj/LuaInteger;->u:[Lcom/prineside/luaj/LuaInteger;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/prineside/luaj/LuaInteger;->u:[Lcom/prineside/luaj/LuaInteger;

    new-instance v3, Lcom/prineside/luaj/LuaInteger;

    add-int/lit16 v4, v1, -0x100

    invoke-direct {v3, v4}, Lcom/prineside/luaj/LuaInteger;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaNumber;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaNumber;-><init>()V

    iput p1, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    return-void
.end method

.method public static hashCode(I)I
    .locals 0

    return p0
.end method

.method public static valueOf(I)Lcom/prineside/luaj/LuaInteger;
    .locals 1

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/16 v0, -0x100

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/prineside/luaj/LuaInteger;->u:[Lcom/prineside/luaj/LuaInteger;

    add-int/lit16 p0, p0, 0x100

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/prineside/luaj/LuaInteger;

    invoke-direct {v0, p0}, Lcom/prineside/luaj/LuaInteger;-><init>(I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static valueOf(J)Lcom/prineside/luaj/LuaNumber;
    .locals 4

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v3, p0, v1

    if-nez v3, :cond_1

    const/16 p0, 0xff

    if-gt v0, p0, :cond_0

    const/16 p0, -0x100

    if-lt v0, p0, :cond_0

    sget-object p0, Lcom/prineside/luaj/LuaInteger;->u:[Lcom/prineside/luaj/LuaInteger;

    add-int/lit16 v0, v0, 0x100

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/prineside/luaj/LuaInteger;

    invoke-direct {p0, v0}, Lcom/prineside/luaj/LuaInteger;-><init>(I)V

    goto :goto_0

    :cond_1
    long-to-double p0, p0

    invoke-static {p0, p1}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public add(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public add(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    int-to-long v0, p1

    iget p1, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaInteger;->valueOf(J)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->add(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public checkdouble()D
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public checkint()I
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    return v0
.end method

.method public checkinteger()Lcom/prineside/luaj/LuaInteger;
    .locals 0

    return-object p0
.end method

.method public checkjstring()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-static {v0}, Lcom/prineside/tdi2/utils/PMath;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checklong()J
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public checkstring()Lcom/prineside/luaj/LuaString;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-static {v0}, Lcom/prineside/tdi2/utils/PMath;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public div(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {v0, v1, p1, p2}, Lcom/prineside/luaj/LuaDouble;->ddiv(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/prineside/luaj/LuaDouble;->ddiv(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->divInto(D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public divInto(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Lcom/prineside/luaj/LuaDouble;->ddiv(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->raweq(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public eq_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->raweq(I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/prineside/luaj/LuaInteger;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/prineside/luaj/LuaInteger;

    iget p1, p1, Lcom/prineside/luaj/LuaInteger;->v:I

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public gt(D)Lcom/prineside/luaj/LuaValue;
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public gt(I)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    if-le v0, p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public gt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->lt_b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaValue;->gt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public gt_b(D)Z
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public gt_b(I)Z
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public gt_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->lt_b(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaValue;->gt_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public gteq(D)Lcom/prineside/luaj/LuaValue;
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    cmpl-double v2, v0, p1

    if-ltz v2, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public gteq(I)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    if-lt v0, p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public gteq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->lteq_b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaValue;->gteq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public gteq_b(D)Z
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    cmpl-double v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public gteq_b(I)Z
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public gteq_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->lteq_b(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaValue;->gteq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    return v0
.end method

.method public isint()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isinttype()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public islong()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isstring()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lt(D)Lcom/prineside/luaj/LuaValue;
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    cmpg-double v2, v0, p1

    if-gez v2, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public lt(I)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    if-ge v0, p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public lt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->gt_b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaValue;->lt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public lt_b(D)Z
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    cmpg-double v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lt_b(I)Z
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lt_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->gt_b(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaValue;->lt_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public lteq(D)Lcom/prineside/luaj/LuaValue;
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public lteq(I)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    if-gt v0, p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public lteq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->gteq_b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaValue;->lteq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public lteq_b(D)Z
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lteq_b(I)Z
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lteq_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->gteq_b(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaValue;->lteq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public mod(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {v0, v1, p1, p2}, Lcom/prineside/luaj/LuaDouble;->dmod(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/prineside/luaj/LuaDouble;->dmod(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->modFrom(D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public modFrom(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Lcom/prineside/luaj/LuaDouble;->dmod(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mul(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public mul(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    int-to-long v0, p1

    iget p1, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaInteger;->valueOf(J)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->mul(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public neg()Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-long v0, v0

    neg-long v0, v0

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaInteger;->valueOf(J)Lcom/prineside/luaj/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public optdouble(D)D
    .locals 0

    iget p1, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double p1, p1

    return-wide p1
.end method

.method public optint(I)I
    .locals 0

    iget p1, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    return p1
.end method

.method public optinteger(Lcom/prineside/luaj/LuaInteger;)Lcom/prineside/luaj/LuaInteger;
    .locals 0

    return-object p0
.end method

.method public optjstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget p1, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public optlong(J)J
    .locals 0

    iget p1, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-long p1, p1

    return-wide p1
.end method

.method public optstring(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaString;
    .locals 0

    iget p1, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public pow(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {v0, v1, p1, p2}, Lcom/prineside/luaj/lib/MathLib;->dpow(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/prineside/luaj/lib/MathLib;->dpow(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->powWith(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {p1, p2, v0, v1}, Lcom/prineside/luaj/lib/MathLib;->dpow(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    int-to-double v0, p1

    iget p1, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/prineside/luaj/lib/MathLib;->dpow(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public raweq(D)Z
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    cmpl-double v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public raweq(I)Z
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public raweq(Lcom/prineside/luaj/LuaValue;)Z
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->raweq(I)Z

    move-result p1

    return p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    return-void
.end method

.method public strcmp(Lcom/prineside/luaj/LuaString;)I
    .locals 0

    const-string p1, "attempt to compare number with string"

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->o(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return p1
.end method

.method public strvalue()Lcom/prineside/luaj/LuaString;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public sub(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public sub(I)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public sub(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->subFrom(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public subFrom(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public subFrom(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    int-to-long v0, p1

    iget p1, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaInteger;->valueOf(J)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public tobyte()B
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-byte v0, v0

    return v0
.end method

.method public tochar()C
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-char v0, v0

    return v0
.end method

.method public todouble()D
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public tofloat()F
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-float v0, v0

    return v0
.end method

.method public toint()I
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tolong()J
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public toshort()S
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    int-to-short v0, v0

    return v0
.end method

.method public tostring()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget v0, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    iget p1, p0, Lcom/prineside/luaj/LuaInteger;->v:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method
