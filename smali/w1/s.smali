.class public final Lw1/s;
.super Lb2/o;
.source "SourceFile"


# static fields
.field public static final d:Lw1/s;


# instance fields
.field public final a:[Lw1/q;

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw1/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw1/s;-><init>(I)V

    sput-object v0, Lw1/s;->d:Lw1/s;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lb2/o;-><init>(Z)V

    new-array p1, p1, [Lw1/q;

    iput-object p1, p0, Lw1/s;->a:[Lw1/q;

    iput v0, p0, Lw1/s;->b:I

    return-void
.end method


# virtual methods
.method public A(Lw1/q;)Lw1/q;
    .locals 0

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    invoke-virtual {p0, p1}, Lw1/s;->z(I)Lw1/q;

    move-result-object p1

    return-object p1
.end method

.method public B()I
    .locals 1

    iget-object v0, p0, Lw1/s;->a:[Lw1/q;

    array-length v0, v0

    return v0
.end method

.method public C(Lw1/s;Z)V
    .locals 5

    invoke-virtual {p0}, Lb2/o;->throwIfImmutable()V

    iget-object p1, p1, Lw1/s;->a:[Lw1/q;

    iget-object v0, p0, Lw1/s;->a:[Lw1/q;

    array-length v0, v0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, -0x1

    iput v2, p0, Lw1/s;->b:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lw1/s;->a:[Lw1/q;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, p1, v2

    invoke-virtual {v3, v4, p2}, Lw1/q;->F(Lw1/q;Z)Lw1/q;

    move-result-object v4

    if-eq v4, v3, :cond_1

    iget-object v3, p0, Lw1/s;->a:[Lw1/q;

    aput-object v4, v3, v2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v1, v0, :cond_3

    iget-object p1, p0, Lw1/s;->a:[Lw1/q;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public D(Lw1/k;)Lw1/q;
    .locals 4

    iget-object v0, p0, Lw1/s;->a:[Lw1/q;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lw1/s;->a:[Lw1/q;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lw1/q;->z()Lw1/k;

    move-result-object v3

    invoke-virtual {p1, v3}, Lw1/k;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public E()Lw1/s;
    .locals 4

    iget-object v0, p0, Lw1/s;->a:[Lw1/q;

    array-length v0, v0

    new-instance v1, Lw1/s;

    invoke-direct {v1, v0}, Lw1/s;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lw1/s;->a:[Lw1/q;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Lw1/s;->F(Lw1/q;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lw1/s;->b:I

    iput v0, v1, Lw1/s;->b:I

    return-object v1
.end method

.method public F(Lw1/q;)V
    .locals 5

    invoke-virtual {p0}, Lb2/o;->throwIfImmutable()V

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lw1/s;->b:I

    :try_start_0
    invoke-virtual {p1}, Lw1/q;->B()I

    move-result v0

    iget-object v1, p0, Lw1/s;->a:[Lw1/q;

    aput-object p1, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez v0, :cond_0

    add-int/lit8 v4, v0, -0x1

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lw1/q;->x()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lw1/s;->a:[Lw1/q;

    aput-object v2, v1, v4

    :cond_0
    invoke-virtual {p1}, Lw1/q;->x()I

    move-result p1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lw1/s;->a:[Lw1/q;

    add-int/lit8 v0, v0, 0x1

    aput-object v2, p1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spec.getReg() out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "spec == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public H(Lw1/s;)V
    .locals 3

    invoke-virtual {p1}, Lw1/s;->B()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lw1/s;->z(I)Lw1/q;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lw1/s;->F(Lw1/q;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public I(Lw1/q;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lw1/s;->a:[Lw1/q;

    invoke-virtual {p1}, Lw1/q;->B()I

    move-result p1

    const/4 v1, 0x0

    aput-object v1, v0, p1

    const/4 p1, -0x1

    iput p1, p0, Lw1/s;->b:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus reg"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J(I)Lw1/s;
    .locals 4

    iget-object v0, p0, Lw1/s;->a:[Lw1/q;

    array-length v0, v0

    new-instance v1, Lw1/s;

    add-int v2, v0, p1

    invoke-direct {v1, v2}, Lw1/s;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lw1/s;->a:[Lw1/q;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lw1/q;->R(I)Lw1/q;

    move-result-object v3

    invoke-virtual {v1, v3}, Lw1/s;->F(Lw1/q;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lw1/s;->b:I

    iput p1, v1, Lw1/s;->b:I

    invoke-virtual {p0}, Lb2/o;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lb2/o;->setImmutable()V

    :cond_2
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lw1/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lw1/s;

    iget-object v0, p1, Lw1/s;->a:[Lw1/q;

    iget-object v2, p0, Lw1/s;->a:[Lw1/q;

    array-length v2, v2

    array-length v3, v0

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Lw1/s;->size()I

    move-result v3

    invoke-virtual {p1}, Lw1/s;->size()I

    move-result p1

    if-eq v3, p1, :cond_1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ge p1, v2, :cond_5

    iget-object v3, p0, Lw1/s;->a:[Lw1/q;

    aget-object v3, v3, p1

    aget-object v4, v0, p1

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Lw1/q;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lw1/s;->a:[Lw1/q;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lw1/s;->a:[Lw1/q;

    aget-object v4, v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lw1/q;->hashCode()I

    move-result v4

    :goto_1
    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public size()I
    .locals 4

    iget v0, p0, Lw1/s;->b:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lw1/s;->a:[Lw1/q;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lw1/s;->a:[Lw1/q;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lw1/s;->b:I

    move v0, v1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lw1/s;->a:[Lw1/q;

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lw1/s;->a:[Lw1/q;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    if-eqz v3, :cond_0

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(Lw1/q;)Lw1/q;
    .locals 4

    iget-object v0, p0, Lw1/s;->a:[Lw1/q;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lw1/s;->a:[Lw1/q;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Lw1/q;->M(Lw1/q;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public z(I)Lw1/q;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lw1/s;->a:[Lw1/q;

    aget-object p1, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus reg"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
