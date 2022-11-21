.class public final Lcom/prineside/luaj/Buffer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:[B


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:Lcom/prineside/luaj/LuaValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/prineside/luaj/Buffer;->e:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcom/prineside/luaj/Buffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/prineside/luaj/Buffer;->a:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/luaj/Buffer;->b:I

    iput p1, p0, Lcom/prineside/luaj/Buffer;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/luaj/Buffer;->d:Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/LuaValue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/luaj/Buffer;->e:[B

    iput-object v0, p0, Lcom/prineside/luaj/Buffer;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/Buffer;->c:I

    iput v0, p0, Lcom/prineside/luaj/Buffer;->b:I

    iput-object p1, p0, Lcom/prineside/luaj/Buffer;->d:Lcom/prineside/luaj/LuaValue;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/Buffer;->a:[B

    array-length v1, v0

    if-eq p1, v1, :cond_0

    new-array p1, p1, [B

    iget v1, p0, Lcom/prineside/luaj/Buffer;->c:I

    iget v2, p0, Lcom/prineside/luaj/Buffer;->b:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/prineside/luaj/Buffer;->a:[B

    iput p2, p0, Lcom/prineside/luaj/Buffer;->c:I

    :cond_0
    return-void
.end method

.method public final append(B)Lcom/prineside/luaj/Buffer;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/Buffer;->makeroom(II)V

    iget-object v0, p0, Lcom/prineside/luaj/Buffer;->a:[B

    iget v1, p0, Lcom/prineside/luaj/Buffer;->c:I

    iget v2, p0, Lcom/prineside/luaj/Buffer;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/prineside/luaj/Buffer;->b:I

    add-int/2addr v1, v2

    aput-byte p1, v0, v1

    return-object p0
.end method

.method public final append(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;
    .locals 5

    iget v0, p1, Lcom/prineside/luaj/LuaString;->m_length:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/prineside/luaj/Buffer;->makeroom(II)V

    iget-object v2, p0, Lcom/prineside/luaj/Buffer;->a:[B

    iget v3, p0, Lcom/prineside/luaj/Buffer;->c:I

    iget v4, p0, Lcom/prineside/luaj/Buffer;->b:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/prineside/luaj/LuaString;->copyInto(I[BII)V

    iget p1, p0, Lcom/prineside/luaj/Buffer;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/luaj/Buffer;->b:I

    return-object p0
.end method

.method public final append(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Buffer;
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Buffer;->append(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;

    return-object p0
.end method

.method public final append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaString;->lengthAsUtf8([C)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/prineside/luaj/Buffer;->makeroom(II)V

    array-length v1, p1

    iget-object v2, p0, Lcom/prineside/luaj/Buffer;->a:[B

    iget v3, p0, Lcom/prineside/luaj/Buffer;->c:I

    iget v4, p0, Lcom/prineside/luaj/Buffer;->b:I

    add-int/2addr v3, v4

    invoke-static {p1, v1, v2, v3}, Lcom/prineside/luaj/LuaString;->encodeToUtf8([CI[BI)I

    iget p1, p0, Lcom/prineside/luaj/Buffer;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/luaj/Buffer;->b:I

    return-object p0
.end method

.method public concatTo(Lcom/prineside/luaj/LuaNumber;)Lcom/prineside/luaj/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/Buffer;->d:Lcom/prineside/luaj/LuaValue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/Buffer;->d:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaNumber;->concat(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Buffer;->setvalue(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Buffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Buffer;->prepend(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public concatTo(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/Buffer;->d:Lcom/prineside/luaj/LuaValue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/Buffer;->d:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaString;->concat(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Buffer;->setvalue(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Buffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Buffer;->prepend(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public concatTo(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Buffer;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/Buffer;->value()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->concat(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Buffer;->setvalue(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final makeroom(II)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/Buffer;->d:Lcom/prineside/luaj/LuaValue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prineside/luaj/Buffer;->d:Lcom/prineside/luaj/LuaValue;

    iget v1, v0, Lcom/prineside/luaj/LuaString;->m_length:I

    iput v1, p0, Lcom/prineside/luaj/Buffer;->b:I

    iput p1, p0, Lcom/prineside/luaj/Buffer;->c:I

    add-int v2, p1, v1

    add-int/2addr v2, p2

    new-array p2, v2, [B

    iput-object p2, p0, Lcom/prineside/luaj/Buffer;->a:[B

    iget-object v2, v0, Lcom/prineside/luaj/LuaString;->m_bytes:[B

    iget v0, v0, Lcom/prineside/luaj/LuaString;->m_offset:I

    invoke-static {v2, v0, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/prineside/luaj/Buffer;->c:I

    iget v1, p0, Lcom/prineside/luaj/Buffer;->b:I

    add-int v2, v0, v1

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/prineside/luaj/Buffer;->a:[B

    array-length v3, v3

    if-gt v2, v3, :cond_1

    if-ge v0, p1, :cond_5

    :cond_1
    add-int v0, p1, v1

    add-int/2addr v0, p2

    const/16 v2, 0x20

    if-ge v0, v2, :cond_2

    const/16 v0, 0x20

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_3

    mul-int/lit8 v0, v1, 0x2

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    sub-int p1, v0, v1

    sub-int/2addr p1, p2

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/Buffer;->a(II)V

    :cond_5
    :goto_2
    return-void
.end method

.method public prepend(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Buffer;
    .locals 4

    iget v0, p1, Lcom/prineside/luaj/LuaString;->m_length:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/Buffer;->makeroom(II)V

    iget-object v1, p1, Lcom/prineside/luaj/LuaString;->m_bytes:[B

    iget p1, p1, Lcom/prineside/luaj/LuaString;->m_offset:I

    iget-object v2, p0, Lcom/prineside/luaj/Buffer;->a:[B

    iget v3, p0, Lcom/prineside/luaj/Buffer;->c:I

    sub-int/2addr v3, v0

    invoke-static {v1, p1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/prineside/luaj/Buffer;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/luaj/Buffer;->c:I

    iget p1, p0, Lcom/prineside/luaj/Buffer;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/luaj/Buffer;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/luaj/Buffer;->d:Lcom/prineside/luaj/LuaValue;

    return-object p0
.end method

.method public setvalue(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Buffer;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/Buffer;->e:[B

    iput-object v0, p0, Lcom/prineside/luaj/Buffer;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/Buffer;->b:I

    iput v0, p0, Lcom/prineside/luaj/Buffer;->c:I

    iput-object p1, p0, Lcom/prineside/luaj/Buffer;->d:Lcom/prineside/luaj/LuaValue;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/Buffer;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tojstring()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/Buffer;->value()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tostring()Lcom/prineside/luaj/LuaString;
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/Buffer;->b:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/Buffer;->a(II)V

    iget-object v0, p0, Lcom/prineside/luaj/Buffer;->a:[B

    iget v1, p0, Lcom/prineside/luaj/Buffer;->c:I

    iget v2, p0, Lcom/prineside/luaj/Buffer;->b:I

    invoke-static {v0, v1, v2}, Lcom/prineside/luaj/LuaString;->valueOf([BII)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public value()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/Buffer;->d:Lcom/prineside/luaj/LuaValue;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/Buffer;->tostring()Lcom/prineside/luaj/LuaString;

    move-result-object v0

    :goto_0
    return-object v0
.end method
