.class public final Ln1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ly1/d;Ly1/d;)Z
    .locals 5

    invoke-interface {p0}, Ly1/d;->getType()Ly1/c;

    move-result-object p0

    invoke-interface {p1}, Ly1/d;->getType()Ly1/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly1/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ly1/c;->f()I

    move-result v0

    invoke-virtual {p1}, Ly1/c;->f()I

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x9

    if-ne v0, v3, :cond_1

    sget-object p0, Ly1/c;->K:Ly1/c;

    const/16 v0, 0x9

    :cond_1
    if-ne v2, v3, :cond_2

    sget-object p1, Ly1/c;->K:Ly1/c;

    const/16 v2, 0x9

    :cond_2
    const/4 v3, 0x0

    if-ne v0, v4, :cond_c

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Ly1/c;->C:Ly1/c;

    if-ne p0, v0, :cond_4

    return v3

    :cond_4
    if-ne p1, v0, :cond_5

    return v1

    :cond_5
    sget-object v0, Ly1/c;->K:Ly1/c;

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Ly1/c;->H()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ly1/c;->H()Z

    move-result v0

    if-nez v0, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Ly1/c;->x()Ly1/c;

    move-result-object p0

    invoke-virtual {p1}, Ly1/c;->x()Ly1/c;

    move-result-object p1

    invoke-virtual {p0}, Ly1/c;->H()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ly1/c;->H()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_8
    invoke-static {p0, p1}, Ln1/r;->a(Ly1/d;Ly1/d;)Z

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p1}, Ly1/c;->H()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Ly1/c;->L:Ly1/c;

    if-eq p0, p1, :cond_b

    sget-object p1, Ly1/c;->G:Ly1/c;

    if-ne p0, p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_0
    return v1

    :cond_c
    :goto_1
    invoke-virtual {p0}, Ly1/c;->L()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {p1}, Ly1/c;->L()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_2

    :cond_d
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public static b(Ln1/s;Ln1/s;)Ln1/s;
    .locals 5

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ln1/s;->J()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ln1/s;->J()I

    move-result v2

    if-ne v2, v0, :cond_6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Ln1/s;->K(I)Ly1/d;

    move-result-object v3

    invoke-virtual {p1, v2}, Ln1/s;->K(I)Ly1/d;

    move-result-object v4

    invoke-static {v3, v4}, Ln1/r;->d(Ly1/d;Ly1/d;)Ly1/d;

    move-result-object v4

    if-eq v4, v3, :cond_3

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ln1/s;->I()Ln1/s;

    move-result-object v1

    :cond_1
    if-nez v4, :cond_2

    invoke-virtual {v1, v2}, Ln1/s;->L(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v2, v4}, Ln1/s;->F(ILy1/d;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    return-object v1

    :cond_6
    new-instance p0, Ln1/w;

    const-string p1, "mismatched maxLocals values"

    invoke-direct {p0, p1}, Ln1/w;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static c(Ln1/k;Ln1/k;)Ln1/k;
    .locals 6

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ln1/k;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ln1/k;->size()I

    move-result v2

    if-ne v2, v0, :cond_6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Ln1/k;->E(I)Ly1/d;

    move-result-object v3

    invoke-virtual {p1, v2}, Ln1/k;->E(I)Ly1/d;

    move-result-object v4

    invoke-static {v3, v4}, Ln1/r;->d(Ly1/d;Ly1/d;)Ly1/d;

    move-result-object v5

    if-eq v5, v3, :cond_3

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ln1/k;->B()Ln1/k;

    move-result-object v1

    :cond_1
    if-eqz v5, :cond_2

    :try_start_0
    invoke-virtual {v1, v2, v5}, Ln1/k;->z(ILy1/d;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance p0, Ln1/w;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "incompatible: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ln1/w;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ln1/w; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while merging stack["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll1/d;->a(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    return-object v1

    :cond_6
    new-instance p0, Ln1/w;

    const-string p1, "mismatched stack depths"

    invoke-direct {p0, p1}, Ln1/w;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static d(Ly1/d;Ly1/d;)Ly1/d;
    .locals 2

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ly1/d;->getType()Ly1/c;

    move-result-object p0

    invoke-interface {p1}, Ly1/d;->getType()Ly1/c;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ly1/c;->N()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ly1/c;->N()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Ly1/c;->C:Ly1/c;

    if-ne p0, v0, :cond_3

    return-object p1

    :cond_3
    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ly1/c;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ly1/c;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ly1/c;->x()Ly1/c;

    move-result-object p0

    invoke-virtual {p1}, Ly1/c;->x()Ly1/c;

    move-result-object p1

    invoke-static {p0, p1}, Ln1/r;->d(Ly1/d;Ly1/d;)Ly1/d;

    move-result-object p0

    if-nez p0, :cond_5

    sget-object p0, Ly1/c;->K:Ly1/c;

    return-object p0

    :cond_5
    check-cast p0, Ly1/c;

    invoke-virtual {p0}, Ly1/c;->j()Ly1/c;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p0, Ly1/c;->K:Ly1/c;

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ly1/c;->L()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Ly1/c;->L()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Ly1/c;->y:Ly1/c;

    return-object p0

    :cond_8
    return-object v0

    :cond_9
    :goto_0
    return-object p0
.end method
