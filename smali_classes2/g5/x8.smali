.class public final Lg5/x8;
.super Lg5/r9;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Z

.field public f:J

.field public final g:Lg5/b4;

.field public final h:Lg5/b4;

.field public final i:Lg5/b4;

.field public final j:Lg5/b4;

.field public final k:Lg5/b4;


# direct methods
.method public constructor <init>(Lg5/ba;)V
    .locals 4

    invoke-direct {p0, p1}, Lg5/r9;-><init>(Lg5/ba;)V

    new-instance p1, Lg5/b4;

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "last_delete_stale"

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lg5/b4;-><init>(Lg5/g4;Ljava/lang/String;J)V

    iput-object p1, p0, Lg5/x8;->g:Lg5/b4;

    new-instance p1, Lg5/b4;

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "backoff"

    invoke-direct {p1, v0, v1, v2, v3}, Lg5/b4;-><init>(Lg5/g4;Ljava/lang/String;J)V

    iput-object p1, p0, Lg5/x8;->h:Lg5/b4;

    new-instance p1, Lg5/b4;

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "last_upload"

    invoke-direct {p1, v0, v1, v2, v3}, Lg5/b4;-><init>(Lg5/g4;Ljava/lang/String;J)V

    iput-object p1, p0, Lg5/x8;->i:Lg5/b4;

    new-instance p1, Lg5/b4;

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "last_upload_attempt"

    invoke-direct {p1, v0, v1, v2, v3}, Lg5/b4;-><init>(Lg5/g4;Ljava/lang/String;J)V

    iput-object p1, p0, Lg5/x8;->j:Lg5/b4;

    new-instance p1, Lg5/b4;

    iget-object v0, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->A()Lg5/g4;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "midnight_offset"

    invoke-direct {p1, v0, v1, v2, v3}, Lg5/b4;-><init>(Lg5/g4;Ljava/lang/String;J)V

    iput-object p1, p0, Lg5/x8;->k:Lg5/b4;

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h(Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    invoke-virtual {p0}, Lg5/v5;->c()V

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->Q()Lc4/f;

    move-result-object v1

    invoke-interface {v1}, Lc4/f;->b()J

    move-result-wide v1

    iget-object v3, p0, Lg5/x8;->d:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lg5/x8;->f:J

    cmp-long v6, v1, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, p0, Lg5/x8;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    :goto_0
    iget-object v3, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v3}, Lg5/b5;->u()Lg5/g;

    move-result-object v3

    sget-object v4, Lg5/c3;->c:Lg5/b3;

    invoke-virtual {v3, p1, v4}, Lg5/g;->m(Ljava/lang/String;Lg5/b3;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lg5/x8;->f:J

    const/4 p1, 0x1

    invoke-static {p1}, Lw2/a;->e(Z)V

    :try_start_0
    iget-object p1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {p1}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lw2/a;->b(Landroid/content/Context;)Lw2/a$a;

    move-result-object p1

    iput-object v0, p0, Lg5/x8;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lw2/a$a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lg5/x8;->d:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lw2/a$a;->b()Z

    move-result p1

    iput-boolean p1, p0, Lg5/x8;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v1, p0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->l()Lg5/o3;

    move-result-object v1

    const-string v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, p1}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lg5/x8;->d:Ljava/lang/String;

    :goto_1
    const/4 p1, 0x0

    invoke-static {p1}, Lw2/a;->e(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lg5/x8;->d:Ljava/lang/String;

    iget-boolean v1, p0, Lg5/x8;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final i(Ljava/lang/String;Lg5/h;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lg5/h;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lg5/h;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lg5/x8;->h(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, ""

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lg5/v5;->c()V

    invoke-virtual {p0, p1}, Lg5/x8;->h(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "MD5"

    invoke-static {v0}, Lg5/ia;->n(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v4, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    const-string p1, "%032X"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
