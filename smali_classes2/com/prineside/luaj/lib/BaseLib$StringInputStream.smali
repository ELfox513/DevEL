.class Lcom/prineside/luaj/lib/BaseLib$StringInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringInputStream"
.end annotation


# instance fields
.field public final a:Lcom/prineside/luaj/LuaValue;

.field public b:[B

.field public d:I

.field public k:I


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/LuaValue;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->k:I

    iput-object p1, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->a:Lcom/prineside/luaj/LuaValue;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->k:I

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->a:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->call()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->k:I

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object v0

    iget-object v2, v0, Lcom/prineside/luaj/LuaString;->m_bytes:[B

    iput-object v2, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->b:[B

    iget v2, v0, Lcom/prineside/luaj/LuaString;->m_offset:I

    iput v2, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->d:I

    iget v0, v0, Lcom/prineside/luaj/LuaString;->m_length:I

    iput v0, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->k:I

    if-gtz v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->k:I

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->b:[B

    iget v1, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/luaj/lib/BaseLib$StringInputStream;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
