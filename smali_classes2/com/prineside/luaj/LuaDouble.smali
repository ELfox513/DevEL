.class public Lcom/prineside/luaj/LuaDouble;
.super Lcom/prineside/luaj/LuaNumber;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# static fields
.field public static final JSTR_NAN:Ljava/lang/String; = "nan"

.field public static final JSTR_NEGINF:Ljava/lang/String; = "-inf"

.field public static final JSTR_POSINF:Ljava/lang/String; = "inf"

.field public static final NAN:Lcom/prineside/luaj/LuaDouble;

.field public static final NEGINF:Lcom/prineside/luaj/LuaDouble;

.field public static final POSINF:Lcom/prineside/luaj/LuaDouble;


# instance fields
.field public u:D


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/prineside/luaj/LuaDouble;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2}, Lcom/prineside/luaj/LuaDouble;-><init>(D)V

    sput-object v0, Lcom/prineside/luaj/LuaDouble;->NAN:Lcom/prineside/luaj/LuaDouble;

    new-instance v0, Lcom/prineside/luaj/LuaDouble;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lcom/prineside/luaj/LuaDouble;-><init>(D)V

    sput-object v0, Lcom/prineside/luaj/LuaDouble;->POSINF:Lcom/prineside/luaj/LuaDouble;

    new-instance v0, Lcom/prineside/luaj/LuaDouble;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lcom/prineside/luaj/LuaDouble;-><init>(D)V

    sput-object v0, Lcom/prineside/luaj/LuaDouble;->NEGINF:Lcom/prineside/luaj/LuaDouble;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaNumber;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaNumber;-><init>()V

    iput-wide p1, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    return-void
.end method

.method public static ddiv(DD)Lcom/prineside/luaj/LuaValue;
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_0

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p0

    goto :goto_0

    :cond_0
    cmpl-double p2, p0, v0

    if-lez p2, :cond_1

    sget-object p0, Lcom/prineside/luaj/LuaDouble;->POSINF:Lcom/prineside/luaj/LuaDouble;

    goto :goto_0

    :cond_1
    cmpl-double p2, p0, v0

    if-nez p2, :cond_2

    sget-object p0, Lcom/prineside/luaj/LuaDouble;->NAN:Lcom/prineside/luaj/LuaDouble;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/prineside/luaj/LuaDouble;->NEGINF:Lcom/prineside/luaj/LuaDouble;

    :goto_0
    return-object p0
.end method

.method public static ddiv_d(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_0

    div-double/2addr p0, p2

    goto :goto_0

    :cond_0
    cmpl-double p2, p0, v0

    if-lez p2, :cond_1

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    cmpl-double p2, p0, v0

    if-nez p2, :cond_2

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    :cond_2
    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    return-wide p0
.end method

.method public static dmod(DD)Lcom/prineside/luaj/LuaValue;
    .locals 7

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_5

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, p0, v2

    if-eqz v4, :cond_5

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, p0, v4

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    cmpl-double v6, p2, v2

    if-nez v6, :cond_2

    cmpg-double p2, p0, v0

    if-gez p2, :cond_1

    sget-object p0, Lcom/prineside/luaj/LuaDouble;->POSINF:Lcom/prineside/luaj/LuaDouble;

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    cmpl-double v2, p2, v4

    if-nez v2, :cond_4

    cmpl-double p2, p0, v0

    if-lez p2, :cond_3

    sget-object p0, Lcom/prineside/luaj/LuaDouble;->NEGINF:Lcom/prineside/luaj/LuaDouble;

    goto :goto_1

    :cond_3
    invoke-static {p0, p1}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double p2, p2, v0

    sub-double/2addr p0, p2

    invoke-static {p0, p1}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    sget-object p0, Lcom/prineside/luaj/LuaDouble;->NAN:Lcom/prineside/luaj/LuaDouble;

    return-object p0
.end method

.method public static dmod_d(DD)D
    .locals 7

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-eqz v2, :cond_5

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, p0, v2

    if-eqz v4, :cond_5

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, p0, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    cmpl-double v6, p2, v2

    if-nez v6, :cond_2

    cmpg-double p2, p0, v0

    if-gez p2, :cond_1

    move-wide p0, v2

    :cond_1
    return-wide p0

    :cond_2
    cmpl-double v2, p2, v4

    if-nez v2, :cond_4

    cmpl-double p2, p0, v0

    if-lez p2, :cond_3

    move-wide p0, v4

    :cond_3
    return-wide p0

    :cond_4
    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double p2, p2, v0

    sub-double/2addr p0, p2

    return-wide p0

    :cond_5
    :goto_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static valueOf(D)Lcom/prineside/luaj/LuaNumber;
    .locals 4

    double-to-int v0, p0

    int-to-double v1, v0

    cmpl-double v3, v1, p0

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/prineside/luaj/LuaDouble;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/LuaDouble;-><init>(D)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public add(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->add(D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public checkdouble()D
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    return-wide v0
.end method

.method public checkint()I
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long v0, v0

    long-to-int v1, v0

    return v1
.end method

.method public checkinteger()Lcom/prineside/luaj/LuaInteger;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long v0, v0

    long-to-int v1, v0

    invoke-static {v1}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public checkjstring()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checklong()J
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public checknumber()Lcom/prineside/luaj/LuaNumber;
    .locals 0

    return-object p0
.end method

.method public checkstring()Lcom/prineside/luaj/LuaString;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public div(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-static {v0, v1, p1, p2}, Lcom/prineside/luaj/LuaDouble;->ddiv(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/prineside/luaj/LuaDouble;->ddiv(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public div(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->divInto(D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public divInto(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-static {p1, p2, v0, v1}, Lcom/prineside/luaj/LuaDouble;->ddiv(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public eq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->raweq(D)Z

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
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->raweq(D)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/prineside/luaj/LuaDouble;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/prineside/luaj/LuaDouble;

    iget-wide v0, p1, Lcom/prineside/luaj/LuaDouble;->u:D

    iget-wide v2, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public gt(D)Lcom/prineside/luaj/LuaValue;
    .locals 3

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

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
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public gt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->lt_b(D)Z

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

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

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
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public gt_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 2

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->lt_b(D)Z

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

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

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
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public gteq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->lteq_b(D)Z

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

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

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
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public gteq_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 2

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->lteq_b(D)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/prineside/luaj/LuaValue;->gteq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v3, v2

    long-to-int v1, v0

    add-int/2addr v3, v1

    return v3
.end method

.method public islong()Z
    .locals 5

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long v2, v0

    long-to-double v2, v2

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isnumber()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isstring()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isvalidkey()Z
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public lt(D)Lcom/prineside/luaj/LuaValue;
    .locals 3

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

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
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public lt(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->gt_b(D)Z

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

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

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
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lt_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 2

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->gt_b(D)Z

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

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

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
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object p1
.end method

.method public lteq(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->gteq_b(D)Z

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

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

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
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lteq_b(Lcom/prineside/luaj/LuaValue;)Z
    .locals 2

    instance-of v0, p1, Lcom/prineside/luaj/LuaNumber;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->gteq_b(D)Z

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

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-static {v0, v1, p1, p2}, Lcom/prineside/luaj/LuaDouble;->dmod(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/prineside/luaj/LuaDouble;->dmod(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mod(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->modFrom(D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public modFrom(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-static {p1, p2, v0, v1}, Lcom/prineside/luaj/LuaDouble;->dmod(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public mul(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public mul(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->mul(D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public neg()Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    neg-double v0, v0

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public optdouble(D)D
    .locals 0

    iget-wide p1, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    return-wide p1
.end method

.method public optint(I)I
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long v0, v0

    long-to-int p1, v0

    return p1
.end method

.method public optinteger(Lcom/prineside/luaj/LuaInteger;)Lcom/prineside/luaj/LuaInteger;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long v0, v0

    long-to-int p1, v0

    invoke-static {p1}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public optjstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public optlong(J)J
    .locals 0

    iget-wide p1, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long p1, p1

    return-wide p1
.end method

.method public optnumber(Lcom/prineside/luaj/LuaNumber;)Lcom/prineside/luaj/LuaNumber;
    .locals 0

    return-object p0
.end method

.method public optstring(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaString;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public pow(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-static {v0, v1, p1, p2}, Lcom/prineside/luaj/lib/MathLib;->dpow(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/prineside/luaj/lib/MathLib;->dpow(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public pow(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->powWith(D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-static {p1, p2, v0, v1}, Lcom/prineside/luaj/lib/MathLib;->dpow(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public powWith(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-static {v0, v1, v2, v3}, Lcom/prineside/luaj/lib/MathLib;->dpow(DD)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public raweq(D)Z
    .locals 3

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

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
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public raweq(Lcom/prineside/luaj/LuaValue;)Z
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->raweq(D)Z

    move-result p1

    return p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    return-void
.end method

.method public setDirectly(D)V
    .locals 0

    iput-wide p1, p0, Lcom/prineside/luaj/LuaDouble;->u:D

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

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public sub(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public sub(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public sub(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/LuaValue;->subFrom(D)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public subFrom(D)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaDouble;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public tobyte()B
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long v0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    return v0
.end method

.method public tochar()C
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long v0, v0

    long-to-int v1, v0

    int-to-char v0, v1

    return v0
.end method

.method public todouble()D
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    return-wide v0
.end method

.method public tofloat()F
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-float v0, v0

    return v0
.end method

.method public toint()I
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long v0, v0

    long-to-int v1, v0

    return v1
.end method

.method public tojstring()Ljava/lang/String;
    .locals 7

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v6, v4, v0

    if-nez v6, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "nan"

    return-object v0

    :cond_1
    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    const-string v0, "-inf"

    goto :goto_0

    :cond_2
    const-string v0, "inf"

    :goto_0
    return-object v0

    :cond_3
    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tolong()J
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public tonumber()Lcom/prineside/luaj/LuaValue;
    .locals 0

    return-object p0
.end method

.method public toshort()S
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    double-to-long v0, v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public tostring()Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaDouble;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-wide v0, p0, Lcom/prineside/luaj/LuaDouble;->u:D

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeDouble(D)V

    return-void
.end method
