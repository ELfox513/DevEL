.class final Lnet/bytebuddy/jar/asm/Handler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/bytebuddy/jar/asm/Label;

.field public final b:Lnet/bytebuddy/jar/asm/Label;

.field public final c:Lnet/bytebuddy/jar/asm/Label;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public f:Lnet/bytebuddy/jar/asm/Handler;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)V
    .locals 6

    iget-object v3, p1, Lnet/bytebuddy/jar/asm/Handler;->c:Lnet/bytebuddy/jar/asm/Label;

    iget v4, p1, Lnet/bytebuddy/jar/asm/Handler;->d:I

    iget-object v5, p1, Lnet/bytebuddy/jar/asm/Handler;->e:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Handler;-><init>(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;ILjava/lang/String;)V

    iget-object p1, p1, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/Handler;->c:Lnet/bytebuddy/jar/asm/Label;

    iput p4, p0, Lnet/bytebuddy/jar/asm/Handler;->d:I

    iput-object p5, p0, Lnet/bytebuddy/jar/asm/Handler;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Lnet/bytebuddy/jar/asm/Handler;)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static b(Lnet/bytebuddy/jar/asm/Handler;)I
    .locals 0

    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Handler;->a(Lnet/bytebuddy/jar/asm/Handler;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static c(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 2

    invoke-static {p0}, Lnet/bytebuddy/jar/asm/Handler;->a(Lnet/bytebuddy/jar/asm/Handler;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_0
    if-eqz p0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    iget v0, v0, Lnet/bytebuddy/jar/asm/Label;->b:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    iget v1, v1, Lnet/bytebuddy/jar/asm/Label;->b:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Handler;->c:Lnet/bytebuddy/jar/asm/Label;

    iget v1, v1, Lnet/bytebuddy/jar/asm/Label;->b:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/Handler;->d:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p0, p0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static d(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Handler;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v0, p1, p2}, Lnet/bytebuddy/jar/asm/Handler;->d(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Handler;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    iget v2, v1, Lnet/bytebuddy/jar/asm/Label;->b:I

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    iget v4, v3, Lnet/bytebuddy/jar/asm/Label;->b:I

    iget v5, p1, Lnet/bytebuddy/jar/asm/Label;->b:I

    if-nez p2, :cond_1

    const v6, 0x7fffffff

    goto :goto_0

    :cond_1
    iget v6, p2, Lnet/bytebuddy/jar/asm/Label;->b:I

    :goto_0
    if-ge v5, v4, :cond_6

    if-gt v6, v2, :cond_2

    goto :goto_1

    :cond_2
    if-gt v5, v2, :cond_4

    if-lt v6, v4, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Lnet/bytebuddy/jar/asm/Handler;

    invoke-direct {p1, p0, p2, v3}, Lnet/bytebuddy/jar/asm/Handler;-><init>(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)V

    return-object p1

    :cond_4
    if-lt v6, v4, :cond_5

    new-instance p2, Lnet/bytebuddy/jar/asm/Handler;

    invoke-direct {p2, p0, v1, p1}, Lnet/bytebuddy/jar/asm/Handler;-><init>(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)V

    return-object p2

    :cond_5
    new-instance v0, Lnet/bytebuddy/jar/asm/Handler;

    invoke-direct {v0, p0, p2, v3}, Lnet/bytebuddy/jar/asm/Handler;-><init>(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    new-instance p2, Lnet/bytebuddy/jar/asm/Handler;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p2, p0, v0, p1}, Lnet/bytebuddy/jar/asm/Handler;-><init>(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)V

    return-object p2

    :cond_6
    :goto_1
    return-object p0
.end method
