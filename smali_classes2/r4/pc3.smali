.class public final Lr4/pc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/bj3;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:Lr4/ne3;

.field public d:Lr4/od3;

.field public e:I

.field public f:Lr4/ze3;


# direct methods
.method public constructor <init>(Lr4/zg3;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lr4/zg3;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr4/pc3;->a:Ljava/lang/String;

    sget-object v1, Lr4/la3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lr4/zg3;->D()Lr4/ll3;

    move-result-object v0

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v1

    invoke-static {v0, v1}, Lr4/qe3;->D(Lr4/ll3;Lr4/bm3;)Lr4/qe3;

    move-result-object v0

    invoke-static {p1}, Lr4/ja3;->h(Lr4/zg3;)Lr4/ao3;

    move-result-object p1

    check-cast p1, Lr4/ne3;

    iput-object p1, p0, Lr4/pc3;->c:Lr4/ne3;

    invoke-virtual {v0}, Lr4/qe3;->C()I

    move-result p1

    iput p1, p0, Lr4/pc3;->b:I
    :try_end_0
    .catch Lr4/bn3; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    sget-object v1, Lr4/la3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lr4/zg3;->D()Lr4/ll3;

    move-result-object v0

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v1

    invoke-static {v0, v1}, Lr4/rd3;->E(Lr4/ll3;Lr4/bm3;)Lr4/rd3;

    move-result-object v0

    invoke-static {p1}, Lr4/ja3;->h(Lr4/zg3;)Lr4/ao3;

    move-result-object p1

    check-cast p1, Lr4/od3;

    iput-object p1, p0, Lr4/pc3;->d:Lr4/od3;

    invoke-virtual {v0}, Lr4/rd3;->C()Lr4/xd3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/xd3;->D()I

    move-result p1

    iput p1, p0, Lr4/pc3;->e:I

    invoke-virtual {v0}, Lr4/rd3;->D()Lr4/qg3;

    move-result-object p1

    invoke-virtual {p1}, Lr4/qg3;->D()I

    move-result p1

    iget v0, p0, Lr4/pc3;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lr4/pc3;->b:I
    :try_end_1
    .catch Lr4/bn3; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    sget-object v1, Lr4/ac3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Lr4/zg3;->D()Lr4/ll3;

    move-result-object v0

    invoke-static {}, Lr4/bm3;->a()Lr4/bm3;

    move-result-object v1

    invoke-static {v0, v1}, Lr4/df3;->D(Lr4/ll3;Lr4/bm3;)Lr4/df3;

    move-result-object v0

    invoke-static {p1}, Lr4/ja3;->h(Lr4/zg3;)Lr4/ao3;

    move-result-object p1

    check-cast p1, Lr4/ze3;

    iput-object p1, p0, Lr4/pc3;->f:Lr4/ze3;

    invoke-virtual {v0}, Lr4/df3;->C()I

    move-result p1

    iput p1, p0, Lr4/pc3;->b:I
    :try_end_2
    .catch Lr4/bn3; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([B)Lr4/qc3;
    .locals 4

    const-class v0, Lr4/c93;

    array-length v1, p1

    iget v2, p0, Lr4/pc3;->b:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lr4/pc3;->a:Ljava/lang/String;

    sget-object v2, Lr4/la3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lr4/ne3;->I()Lr4/me3;

    move-result-object v1

    iget-object v3, p0, Lr4/pc3;->c:Lr4/ne3;

    invoke-virtual {v1, v3}, Lr4/lm3;->p(Lr4/pm3;)Lr4/lm3;

    iget v3, p0, Lr4/pc3;->b:I

    invoke-static {p1, v2, v3}, Lr4/ll3;->H([BII)Lr4/ll3;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr4/me3;->x(Lr4/ll3;)Lr4/me3;

    invoke-virtual {v1}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/ne3;

    new-instance v1, Lr4/qc3;

    iget-object v2, p0, Lr4/pc3;->a:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lr4/ja3;->i(Ljava/lang/String;Lr4/ao3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/c93;

    invoke-direct {v1, p1}, Lr4/qc3;-><init>(Lr4/c93;)V

    return-object v1

    :cond_0
    iget-object v1, p0, Lr4/pc3;->a:Ljava/lang/String;

    sget-object v3, Lr4/la3;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lr4/pc3;->e:I

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lr4/pc3;->e:I

    iget v3, p0, Lr4/pc3;->b:I

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {}, Lr4/ud3;->J()Lr4/td3;

    move-result-object v2

    iget-object v3, p0, Lr4/pc3;->d:Lr4/od3;

    invoke-virtual {v3}, Lr4/od3;->D()Lr4/ud3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr4/lm3;->p(Lr4/pm3;)Lr4/lm3;

    invoke-static {v1}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object v1

    invoke-virtual {v2, v1}, Lr4/td3;->z(Lr4/ll3;)Lr4/td3;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object v1

    check-cast v1, Lr4/ud3;

    invoke-static {}, Lr4/ng3;->J()Lr4/mg3;

    move-result-object v2

    iget-object v3, p0, Lr4/pc3;->d:Lr4/od3;

    invoke-virtual {v3}, Lr4/od3;->E()Lr4/ng3;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr4/lm3;->p(Lr4/pm3;)Lr4/lm3;

    invoke-static {p1}, Lr4/ll3;->I([B)Lr4/ll3;

    move-result-object p1

    invoke-virtual {v2, p1}, Lr4/mg3;->z(Lr4/ll3;)Lr4/mg3;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/ng3;

    invoke-static {}, Lr4/od3;->J()Lr4/nd3;

    move-result-object v2

    iget-object v3, p0, Lr4/pc3;->d:Lr4/od3;

    invoke-virtual {v3}, Lr4/od3;->C()I

    move-result v3

    invoke-virtual {v2, v3}, Lr4/nd3;->v(I)Lr4/nd3;

    invoke-virtual {v2, v1}, Lr4/nd3;->x(Lr4/ud3;)Lr4/nd3;

    invoke-virtual {v2, p1}, Lr4/nd3;->z(Lr4/ng3;)Lr4/nd3;

    invoke-virtual {v2}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/od3;

    new-instance v1, Lr4/qc3;

    iget-object v2, p0, Lr4/pc3;->a:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lr4/ja3;->i(Ljava/lang/String;Lr4/ao3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/c93;

    invoke-direct {v1, p1}, Lr4/qc3;-><init>(Lr4/c93;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lr4/pc3;->a:Ljava/lang/String;

    sget-object v1, Lr4/ac3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lr4/ze3;->I()Lr4/ye3;

    move-result-object v0

    iget-object v1, p0, Lr4/pc3;->f:Lr4/ze3;

    invoke-virtual {v0, v1}, Lr4/lm3;->p(Lr4/pm3;)Lr4/lm3;

    iget v1, p0, Lr4/pc3;->b:I

    invoke-static {p1, v2, v1}, Lr4/ll3;->H([BII)Lr4/ll3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/ye3;->x(Lr4/ll3;)Lr4/ye3;

    invoke-virtual {v0}, Lr4/lm3;->o()Lr4/pm3;

    move-result-object p1

    check-cast p1, Lr4/ze3;

    new-instance v0, Lr4/qc3;

    iget-object v1, p0, Lr4/pc3;->a:Ljava/lang/String;

    const-class v2, Lr4/f93;

    invoke-static {v1, p1, v2}, Lr4/ja3;->i(Ljava/lang/String;Lr4/ao3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/f93;

    invoke-direct {v0, p1}, Lr4/qc3;-><init>(Lr4/f93;)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lr4/pc3;->b:I

    return v0
.end method
