.class public final Lr4/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/fk;


# instance fields
.field public final a:[B

.field public b:Landroid/net/Uri;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lr4/vk;->a(Z)V

    iput-object p1, p0, Lr4/dk;->a:[B

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lr4/dk;->d:I

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lr4/dk;->a:[B

    iget v1, p0, Lr4/dk;->c:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lr4/dk;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lr4/dk;->c:I

    iget p1, p0, Lr4/dk;->d:I

    sub-int/2addr p1, p3

    iput p1, p0, Lr4/dk;->d:I

    return p3
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lr4/dk;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final d(Lr4/ik;)J
    .locals 7

    iget-object v0, p1, Lr4/ik;->a:Landroid/net/Uri;

    iput-object v0, p0, Lr4/dk;->b:Landroid/net/Uri;

    iget-wide v0, p1, Lr4/ik;->c:J

    long-to-int v2, v0

    iput v2, p0, Lr4/dk;->c:I

    iget-wide v3, p1, Lr4/ik;->d:J

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    iget-object p1, p0, Lr4/dk;->a:[B

    array-length p1, p1

    int-to-long v5, p1

    sub-long/2addr v5, v0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    long-to-int p1, v5

    iput p1, p0, Lr4/dk;->d:I

    if-lez p1, :cond_1

    add-int v0, v2, p1

    iget-object v1, p0, Lr4/dk;->a:[B

    array-length v1, v1

    if-gt v0, v1, :cond_1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    iget-object v0, p0, Lr4/dk;->a:[B

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x4d

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unsatisfiable range: ["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/dk;->b:Landroid/net/Uri;

    return-void
.end method
