.class public final Lr4/nc0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lc2/a;)I
    .locals 1

    sget-object v0, Lc2/a;->b:Lc2/a;

    sget-object v0, Lc2/b;->a:Lc2/b;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    return v0
.end method

.method public static b(Lr4/tt;Z)Ld2/a;
    .locals 8

    iget-object v0, p0, Lr4/tt;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    new-instance v0, Ld2/a;

    new-instance v3, Ljava/util/Date;

    iget-wide v1, p0, Lr4/tt;->b:J

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget v1, p0, Lr4/tt;->k:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    sget-object v1, Lc2/b;->a:Lc2/b;

    goto :goto_1

    :cond_1
    sget-object v1, Lc2/b;->d:Lc2/b;

    goto :goto_1

    :cond_2
    sget-object v1, Lc2/b;->b:Lc2/b;

    :goto_1
    move-object v4, v1

    iget-object v7, p0, Lr4/tt;->v:Landroid/location/Location;

    move-object v2, v0

    move v6, p1

    invoke-direct/range {v2 .. v7}, Ld2/a;-><init>(Ljava/util/Date;Lc2/b;Ljava/util/Set;ZLandroid/location/Location;)V

    return-object v0
.end method
