.class public Lcom/prineside/luaj/LoadState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/LoadState$GlobalsUndumper;
    }
.end annotation


# static fields
.field public static final LUAC_FORMAT:I = 0x0

.field public static final LUAC_HEADERSIZE:I = 0xc

.field public static final LUAC_TAIL:[B

.field public static final LUAC_VERSION:I = 0x52

.field public static final LUA_SIGNATURE:[B

.field public static final LUA_TBOOLEAN:I = 0x1

.field public static final LUA_TFUNCTION:I = 0x6

.field public static final LUA_TINT:I = -0x2

.field public static final LUA_TLIGHTUSERDATA:I = 0x2

.field public static final LUA_TNIL:I = 0x0

.field public static final LUA_TNONE:I = -0x1

.field public static final LUA_TNUMBER:I = 0x3

.field public static final LUA_TSTRING:I = 0x4

.field public static final LUA_TTABLE:I = 0x5

.field public static final LUA_TTHREAD:I = 0x8

.field public static final LUA_TUSERDATA:I = 0x7

.field public static final LUA_TVALUE:I = 0x9

.field public static final NUMBER_FORMAT_FLOATS_OR_DOUBLES:I = 0x0

.field public static final NUMBER_FORMAT_INTS_ONLY:I = 0x1

.field public static final NUMBER_FORMAT_NUM_PATCH_INT32:I = 0x4

.field public static final SOURCE_BINARY_STRING:Ljava/lang/String; = "binary string"

.field public static encoding:Ljava/lang/String;

.field public static final instance:Lcom/prineside/luaj/Globals$Undumper;

.field public static final k:[Lcom/prineside/luaj/LuaValue;

.field public static final l:[Lcom/prineside/luaj/Prototype;

.field public static final m:[Lcom/prineside/luaj/LocVars;

.field public static final n:[Lcom/prineside/luaj/Upvaldesc;

.field public static final o:[I


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public final is:Ljava/io/DataInputStream;

.field public j:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/prineside/luaj/LoadState$GlobalsUndumper;

    invoke-direct {v0}, Lcom/prineside/luaj/LoadState$GlobalsUndumper;-><init>()V

    sput-object v0, Lcom/prineside/luaj/LoadState;->instance:Lcom/prineside/luaj/Globals$Undumper;

    const/4 v0, 0x0

    sput-object v0, Lcom/prineside/luaj/LoadState;->encoding:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prineside/luaj/LoadState;->LUA_SIGNATURE:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/prineside/luaj/LoadState;->LUAC_TAIL:[B

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/prineside/luaj/LuaValue;

    sput-object v1, Lcom/prineside/luaj/LoadState;->k:[Lcom/prineside/luaj/LuaValue;

    new-array v1, v0, [Lcom/prineside/luaj/Prototype;

    sput-object v1, Lcom/prineside/luaj/LoadState;->l:[Lcom/prineside/luaj/Prototype;

    new-array v1, v0, [Lcom/prineside/luaj/LocVars;

    sput-object v1, Lcom/prineside/luaj/LoadState;->m:[Lcom/prineside/luaj/LocVars;

    new-array v1, v0, [Lcom/prineside/luaj/Upvaldesc;

    sput-object v1, Lcom/prineside/luaj/LoadState;->n:[Lcom/prineside/luaj/Upvaldesc;

    new-array v0, v0, [I

    sput-object v0, Lcom/prineside/luaj/LoadState;->o:[I

    return-void

    :array_0
    .array-data 1
        0x1bt
        0x4ct
        0x75t
        0x61t
    .end array-data

    :array_1
    .array-data 1
        0x19t
        -0x6dt
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/prineside/luaj/LoadState;->j:[B

    iput-object p2, p0, Lcom/prineside/luaj/LoadState;->i:Ljava/lang/String;

    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    return-void
.end method

.method public static getSourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u001b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "binary string"

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static install(Lcom/prineside/luaj/Globals;)V
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LoadState;->instance:Lcom/prineside/luaj/Globals$Undumper;

    iput-object v0, p0, Lcom/prineside/luaj/Globals;->undumper:Lcom/prineside/luaj/Globals$Undumper;

    return-void
.end method

.method public static longBitsToLuaNumber(J)Lcom/prineside/luaj/LuaValue;
    .locals 10

    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    sget-object p0, Lcom/prineside/luaj/LuaValue;->ZERO:Lcom/prineside/luaj/LuaNumber;

    return-object p0

    :cond_0
    const/16 v0, 0x34

    shr-long v0, p0, v0

    const-wide/16 v4, 0x7ff

    and-long/2addr v0, v4

    long-to-int v1, v0

    add-int/lit16 v1, v1, -0x3ff

    if-ltz v1, :cond_2

    const/16 v0, 0x1f

    if-ge v1, v0, :cond_2

    const-wide v4, 0xfffffffffffffL

    and-long/2addr v4, p0

    rsub-int/lit8 v0, v1, 0x34

    const-wide/16 v6, 0x1

    shl-long v8, v6, v0

    sub-long/2addr v8, v6

    and-long v6, v4, v8

    cmp-long v8, v6, v2

    if-nez v8, :cond_2

    shr-long/2addr v4, v0

    long-to-int v0, v4

    const/4 v4, 0x1

    shl-int v1, v4, v1

    or-int/2addr v0, v1

    const/16 v1, 0x3f

    shr-long/2addr p0, v1

    cmp-long v1, p0, v2

    if-eqz v1, :cond_1

    neg-int v0, v0

    :cond_1
    invoke-static {v0}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p0

    return-object p0
.end method

.method public static undump(Ljava/io/InputStream;Ljava/lang/String;)Lcom/prineside/luaj/Prototype;
    .locals 4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    sget-object v1, Lcom/prineside/luaj/LoadState;->LUA_SIGNATURE:[B

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/prineside/luaj/LoadState;->getSourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/prineside/luaj/LoadState;

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/LoadState;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/prineside/luaj/LoadState;->loadHeader()V

    iget p0, v0, Lcom/prineside/luaj/LoadState;->h:I

    if-eqz p0, :cond_2

    if-eq p0, v2, :cond_2

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/prineside/luaj/LuaError;

    const-string p1, "unsupported int size"

    invoke-direct {p0, p1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/prineside/luaj/LoadState;->loadFunction(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Prototype;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/prineside/luaj/Prototype;)V
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/luaj/LoadState;->k:[Lcom/prineside/luaj/LuaValue;

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_7

    iget-object v4, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_6

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->g()Lcom/prineside/luaj/LuaString;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "bad constant"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->f()Lcom/prineside/luaj/LuaValue;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_2
    aput-object v4, v1, v3

    goto :goto_3

    :cond_5
    sget-object v4, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    aput-object v4, v1, v3

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v4

    invoke-static {v4}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    iput-object v1, p1, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v0

    if-lez v0, :cond_8

    new-array v1, v0, [Lcom/prineside/luaj/Prototype;

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/prineside/luaj/LoadState;->l:[Lcom/prineside/luaj/Prototype;

    :goto_4
    if-ge v2, v0, :cond_9

    iget-object v3, p1, Lcom/prineside/luaj/Prototype;->source:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/LoadState;->loadFunction(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Prototype;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    iput-object v1, p1, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    return-void
.end method

.method public b(Lcom/prineside/luaj/Prototype;)V
    .locals 8

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->g()Lcom/prineside/luaj/LuaString;

    move-result-object v0

    iput-object v0, p1, Lcom/prineside/luaj/Prototype;->source:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->e()[I

    move-result-object v0

    iput-object v0, p1, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [Lcom/prineside/luaj/LocVars;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/luaj/LoadState;->m:[Lcom/prineside/luaj/LocVars;

    :goto_0
    iput-object v1, p1, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->g()Lcom/prineside/luaj/LuaString;

    move-result-object v3

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v5

    iget-object v6, p1, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    new-instance v7, Lcom/prineside/luaj/LocVars;

    invoke-direct {v7, v3, v4, v5}, Lcom/prineside/luaj/LocVars;-><init>(Lcom/prineside/luaj/LuaString;II)V

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    aget-object v2, v2, v1

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->g()Lcom/prineside/luaj/LuaString;

    move-result-object v3

    iput-object v3, v2, Lcom/prineside/luaj/Upvaldesc;->name:Lcom/prineside/luaj/LuaString;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public c()I
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/prineside/luaj/LoadState;->j:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-boolean v0, p0, Lcom/prineside/luaj/LoadState;->c:Z

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->j:[B

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->j:[B

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    :goto_0
    return v0
.end method

.method public d()J
    .locals 7

    iget-boolean v0, p0, Lcom/prineside/luaj/LoadState;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v0

    :goto_0
    int-to-long v1, v1

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public e()[I
    .locals 7

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/luaj/LoadState;->o:[I

    return-object v0

    :cond_0
    shl-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/prineside/luaj/LoadState;->j:[B

    array-length v2, v2

    if-ge v2, v1, :cond_1

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/prineside/luaj/LoadState;->j:[B

    :cond_1
    iget-object v2, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/prineside/luaj/LoadState;->j:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    iget-boolean v3, p0, Lcom/prineside/luaj/LoadState;->c:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/prineside/luaj/LoadState;->j:[B

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v3, v5

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x0

    aget-byte v3, v3, v6

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/prineside/luaj/LoadState;->j:[B

    add-int/lit8 v5, v2, 0x0

    aget-byte v5, v3, v5

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget-byte v3, v3, v6

    :goto_1
    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v5

    aput v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public f()Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/LoadState;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaInteger;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/prineside/luaj/LoadState;->longBitsToLuaNumber(J)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/prineside/luaj/LuaString;
    .locals 4

    iget v0, p0, Lcom/prineside/luaj/LoadState;->e:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->d()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-array v0, v1, [B

    iget-object v2, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/prineside/luaj/LuaString;->valueUsing([BII)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/prineside/luaj/Prototype;)V
    .locals 8

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [Lcom/prineside/luaj/Upvaldesc;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/luaj/LoadState;->n:[Lcom/prineside/luaj/Upvaldesc;

    :goto_0
    iput-object v1, p1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    new-instance v6, Lcom/prineside/luaj/Upvaldesc;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v3, v4}, Lcom/prineside/luaj/Upvaldesc;-><init>(Lcom/prineside/luaj/LuaString;ZI)V

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public loadFunction(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/Prototype;
    .locals 1

    new-instance p1, Lcom/prineside/luaj/Prototype;

    invoke-direct {p1}, Lcom/prineside/luaj/Prototype;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v0

    iput v0, p1, Lcom/prineside/luaj/Prototype;->linedefined:I

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->c()I

    move-result v0

    iput v0, p1, Lcom/prineside/luaj/Prototype;->lastlinedefined:I

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p1, Lcom/prineside/luaj/Prototype;->numparams:I

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p1, Lcom/prineside/luaj/Prototype;->is_vararg:I

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, p1, Lcom/prineside/luaj/Prototype;->maxstacksize:I

    invoke-virtual {p0}, Lcom/prineside/luaj/LoadState;->e()[I

    move-result-object v0

    iput-object v0, p1, Lcom/prineside/luaj/Prototype;->code:[I

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LoadState;->a(Lcom/prineside/luaj/Prototype;)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LoadState;->h(Lcom/prineside/luaj/Prototype;)V

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LoadState;->b(Lcom/prineside/luaj/Prototype;)V

    return-object p1
.end method

.method public loadHeader()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/LoadState;->a:I

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/LoadState;->b:I

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/prineside/luaj/LoadState;->c:Z

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/LoadState;->d:I

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/LoadState;->e:I

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/LoadState;->f:I

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/LoadState;->g:I

    iget-object v0, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/LoadState;->h:I

    :goto_1
    sget-object v0, Lcom/prineside/luaj/LoadState;->LUAC_TAIL:[B

    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/prineside/luaj/LoadState;->is:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    aget-byte v0, v0, v1

    if-ne v2, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/prineside/luaj/LuaError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpeted byte in luac tail of header, index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method
