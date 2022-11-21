.class public abstract Lr4/aj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/c93;


# instance fields
.field public final a:Lr4/yi3;

.field public final b:Lr4/yi3;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lr4/ub3;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lr4/aj3;->b([BI)Lr4/yi3;

    move-result-object v0

    iput-object v0, p0, Lr4/aj3;->a:Lr4/yi3;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lr4/aj3;->b([BI)Lr4/yi3;

    move-result-object p1

    iput-object p1, p0, Lr4/aj3;->b:Lr4/yi3;

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 6

    array-length v0, p1

    iget-object v1, p0, Lr4/aj3;->a:Lr4/yi3;

    invoke-virtual {v1}, Lr4/yi3;->c()I

    move-result v1

    const v2, 0x7fffffff

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x10

    if-gt v0, v2, :cond_2

    iget-object v1, p0, Lr4/aj3;->a:Lr4/yi3;

    invoke-virtual {v1}, Lr4/yi3;->c()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lr4/aj3;->a:Lr4/yi3;

    invoke-virtual {v3}, Lr4/yi3;->c()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x10

    if-lt v2, v0, :cond_1

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v2, p0, Lr4/aj3;->a:Lr4/yi3;

    invoke-virtual {v2, v1, p1}, Lr4/yi3;->d(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lr4/aj3;->a:Lr4/yi3;

    invoke-virtual {p1}, Lr4/yi3;->c()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lr4/aj3;->b:Lr4/yi3;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lr4/yi3;->e([BI)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    rem-int/lit8 v3, p1, 0x10

    if-nez v3, :cond_0

    move v4, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, p1, 0x10

    sub-int/2addr v4, v3

    :goto_0
    add-int/lit8 v3, v4, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long p1, p1

    invoke-virtual {v3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {v0, p1}, Lr4/vj3;->a([B[B)[B

    move-result-object p1

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result p2

    add-int/lit8 p2, p2, 0x10

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given ByteBuffer output is too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract b([BI)Lr4/yi3;
.end method
