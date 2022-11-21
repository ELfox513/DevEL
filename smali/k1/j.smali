.class public final Lk1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lk1/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/j;->a:[B

    return-void
.end method


# virtual methods
.method public c()Ll1/b;
    .locals 2

    new-instance v0, Ll1/a;

    iget-object v1, p0, Lk1/j;->a:[B

    invoke-direct {v0, v1}, Ll1/a;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lk1/j;

    invoke-virtual {p0, p1}, Lk1/j;->d(Lk1/j;)I

    move-result p1

    return p1
.end method

.method public d(Lk1/j;)I
    .locals 4

    iget-object v0, p0, Lk1/j;->a:[B

    array-length v0, v0

    iget-object v1, p1, Lk1/j;->a:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lk1/j;->a:[B

    aget-byte v2, v2, v1

    iget-object v3, p1, Lk1/j;->a:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    and-int/lit16 p1, v2, 0xff

    and-int/lit16 v0, v3, 0xff

    sub-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lk1/j;->a:[B

    array-length v0, v0

    iget-object p1, p1, Lk1/j;->a:[B

    array-length p1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public f(Lk1/f$g;)V
    .locals 1

    iget-object v0, p0, Lk1/j;->a:[B

    invoke-virtual {p1, v0}, Lk1/f$g;->write([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk1/j;->a:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "...("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/j;->a:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
