.class public final Lm1/c;
.super Lm1/u;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Ln1/i;

.field public final e:Ln1/g;

.field public final f:Lq1/b;


# direct methods
.method public constructor <init>(IILn1/i;Ln1/g;Lq1/b;)V
    .locals 1

    const-string v0, "Code"

    invoke-direct {p0, v0}, Lm1/u;-><init>(Ljava/lang/String;)V

    if-ltz p1, :cond_4

    if-ltz p2, :cond_3

    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p4}, Lb2/o;->isMutable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    :try_start_1
    invoke-interface {p5}, Lq1/b;->isMutable()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_0

    iput p1, p0, Lm1/c;->b:I

    iput p2, p0, Lm1/c;->c:I

    iput-object p3, p0, Lm1/c;->d:Ln1/i;

    iput-object p4, p0, Lm1/c;->e:Ln1/g;

    iput-object p5, p0, Lm1/c;->f:Lq1/b;

    return-void

    :cond_0
    :try_start_2
    new-instance p1, Lb2/p;

    const-string p2, "attributes.isMutable()"

    invoke-direct {p1, p2}, Lb2/p;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "attributes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_3
    new-instance p1, Lb2/p;

    const-string p2, "catches.isMutable()"

    invoke-direct {p1, p2}, Lb2/p;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxLocals < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxStack < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lq1/b;
    .locals 1

    iget-object v0, p0, Lm1/c;->f:Lq1/b;

    return-object v0
.end method

.method public b()Ln1/g;
    .locals 1

    iget-object v0, p0, Lm1/c;->e:Ln1/g;

    return-object v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Lm1/c;->d:Ln1/i;

    invoke-virtual {v0}, Ln1/i;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lm1/c;->e:Ln1/g;

    invoke-virtual {v1}, Ln1/g;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lm1/c;->f:Lq1/b;

    invoke-interface {v1}, Lq1/b;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public d()Ln1/i;
    .locals 1

    iget-object v0, p0, Lm1/c;->d:Ln1/i;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lm1/c;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lm1/c;->b:I

    return v0
.end method
