.class public abstract Lcom/prineside/luaj/lib/IoLib;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/IoLib$File;,
        Lcom/prineside/luaj/lib/IoLib$IoLibV;
    }
.end annotation


# static fields
.field public static final C:Lcom/prineside/luaj/LuaValue;

.field public static final D:Lcom/prineside/luaj/LuaValue;

.field public static final E:Lcom/prineside/luaj/LuaValue;

.field public static final F:Lcom/prineside/luaj/LuaValue;

.field public static final FILE_NAMES:[Ljava/lang/String;

.field public static final G:Lcom/prineside/luaj/LuaValue;

.field public static final IO_NAMES:[Ljava/lang/String;


# instance fields
.field public A:Lcom/prineside/luaj/LuaTable;

.field public B:Lcom/prineside/luaj/Globals;

.field public x:Lcom/prineside/luaj/lib/IoLib$File;

.field public y:Lcom/prineside/luaj/lib/IoLib$File;

.field public z:Lcom/prineside/luaj/lib/IoLib$File;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const-string v0, "stdin"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/IoLib;->C:Lcom/prineside/luaj/LuaValue;

    const-string v0, "stdout"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/IoLib;->D:Lcom/prineside/luaj/LuaValue;

    const-string v0, "stderr"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/IoLib;->E:Lcom/prineside/luaj/LuaValue;

    const-string v0, "file"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/IoLib;->F:Lcom/prineside/luaj/LuaValue;

    const-string v0, "closed file"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/IoLib;->G:Lcom/prineside/luaj/LuaValue;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "close"

    aput-object v2, v0, v1

    const/4 v3, 0x1

    const-string v4, "flush"

    aput-object v4, v0, v3

    const-string v5, "input"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const/4 v5, 0x3

    const-string v7, "lines"

    aput-object v7, v0, v5

    const-string v8, "open"

    const/4 v9, 0x4

    aput-object v8, v0, v9

    const-string v8, "output"

    const/4 v10, 0x5

    aput-object v8, v0, v10

    const-string v8, "popen"

    const/4 v11, 0x6

    aput-object v8, v0, v11

    const/4 v8, 0x7

    const-string v12, "read"

    aput-object v12, v0, v8

    const/16 v13, 0x8

    const-string v14, "tmpfile"

    aput-object v14, v0, v13

    const/16 v13, 0x9

    const-string v14, "type"

    aput-object v14, v0, v13

    const/16 v13, 0xa

    const-string v14, "write"

    aput-object v14, v0, v13

    sput-object v0, Lcom/prineside/luaj/lib/IoLib;->IO_NAMES:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    aput-object v2, v0, v1

    aput-object v4, v0, v3

    aput-object v7, v0, v6

    aput-object v12, v0, v5

    const-string v1, "seek"

    aput-object v1, v0, v9

    const-string v1, "setvbuf"

    aput-object v1, v0, v10

    aput-object v14, v0, v11

    sput-object v0, Lcom/prineside/luaj/lib/IoLib;->FILE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->x:Lcom/prineside/luaj/lib/IoLib$File;

    iput-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->y:Lcom/prineside/luaj/lib/IoLib$File;

    iput-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->z:Lcom/prineside/luaj/lib/IoLib$File;

    return-void
.end method

.method public static C(Lcom/prineside/luaj/lib/IoLib$File;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->checkstring(I)Lcom/prineside/luaj/LuaString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/lib/IoLib$File;->write(Lcom/prineside/luaj/LuaString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static G(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;
    .locals 1

    instance-of v0, p0, Lcom/prineside/luaj/lib/IoLib$File;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/prineside/luaj/lib/IoLib$File;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static K()Lcom/prineside/luaj/Varargs;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    return-object v0
.end method

.method public static freadall(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib$File;->remaining()I

    move-result v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    sget-object p0, Lcom/prineside/luaj/LuaValue;->EMPTYSTRING:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/prineside/luaj/lib/IoLib;->freadbytes(Lcom/prineside/luaj/lib/IoLib$File;I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/prineside/luaj/lib/IoLib;->freaduntil(Lcom/prineside/luaj/lib/IoLib$File;ZZ)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static freadbytes(Lcom/prineside/luaj/lib/IoLib$File;I)Lcom/prineside/luaj/LuaValue;
    .locals 2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib$File;->eof()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/prineside/luaj/LuaValue;->EMPTYSTRING:Lcom/prineside/luaj/LuaString;

    :goto_0
    return-object p0

    :cond_1
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/prineside/luaj/lib/IoLib$File;->read([BII)I

    move-result p0

    if-gez p0, :cond_2

    sget-object p0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p0

    :cond_2
    invoke-static {v0, v1, p0}, Lcom/prineside/luaj/LuaString;->valueUsing([BII)Lcom/prineside/luaj/LuaString;

    move-result-object p0

    return-object p0
.end method

.method public static freadline(Lcom/prineside/luaj/lib/IoLib$File;Z)Lcom/prineside/luaj/LuaValue;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/prineside/luaj/lib/IoLib;->freaduntil(Lcom/prineside/luaj/lib/IoLib$File;ZZ)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static freadnumber(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v1, " \t\r\n"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/prineside/luaj/lib/IoLib;->x(Lcom/prineside/luaj/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const-string v1, "-+"

    invoke-static {p0, v1, v0}, Lcom/prineside/luaj/lib/IoLib;->x(Lcom/prineside/luaj/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const-string v1, "0123456789"

    invoke-static {p0, v1, v0}, Lcom/prineside/luaj/lib/IoLib;->x(Lcom/prineside/luaj/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const-string v2, "."

    invoke-static {p0, v2, v0}, Lcom/prineside/luaj/lib/IoLib;->x(Lcom/prineside/luaj/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    invoke-static {p0, v1, v0}, Lcom/prineside/luaj/lib/IoLib;->x(Lcom/prineside/luaj/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_0
    return-object p0
.end method

.method public static freaduntil(Lcom/prineside/luaj/lib/IoLib$File;ZZ)Lcom/prineside/luaj/LuaValue;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_3

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib$File;->read()I

    move-result p1

    if-ltz p1, :cond_4

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib$File;->read()I

    move-result p1

    if-ltz p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, -0x1

    :cond_4
    :goto_2
    if-gez p1, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/luaj/LuaString;->valueUsing([B)Lcom/prineside/luaj/LuaString;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static s(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;
    .locals 2

    invoke-static {p0}, Lcom/prineside/luaj/lib/IoLib;->G(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    const-string v1, "file"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    invoke-static {p0}, Lcom/prineside/luaj/lib/IoLib;->t(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/lib/IoLib$File;

    return-object p0
.end method

.method public static t(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/lib/IoLib$File;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib$File;->isclosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "attempt to use a closed file"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    return-object p0
.end method

.method public static u(Ljava/lang/Exception;)Lcom/prineside/luaj/Varargs;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "io error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/luaj/lib/IoLib;->v(Ljava/lang/String;)Lcom/prineside/luaj/Varargs;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;)Lcom/prineside/luaj/Varargs;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-static {p0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lcom/prineside/luaj/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib$File;->peek()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib$File;->read()I

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public static z(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/Varargs;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib$File;->isstdfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "cannot close standard file"

    invoke-static {p0}, Lcom/prineside/luaj/lib/IoLib;->v(Ljava/lang/String;)Lcom/prineside/luaj/Varargs;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib$File;->close()V

    invoke-static {}, Lcom/prineside/luaj/lib/IoLib;->K()Lcom/prineside/luaj/Varargs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(ILjava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/luaj/lib/IoLib;->I(ILjava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "io error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final B(Lcom/prineside/luaj/lib/IoLib$File;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 9

    invoke-virtual {p2}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lcom/prineside/luaj/lib/IoLib;->freadline(Lcom/prineside/luaj/lib/IoLib$File;Z)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_0
    new-array v2, v0, [Lcom/prineside/luaj/LuaValue;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_9

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, v4}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_7

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object v5

    iget v6, v5, Lcom/prineside/luaj/LuaString;->m_length:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_6

    iget-object v6, v5, Lcom/prineside/luaj/LuaString;->m_bytes:[B

    iget v5, v5, Lcom/prineside/luaj/LuaString;->m_offset:I

    aget-byte v7, v6, v5

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_6

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v6, v5

    const/16 v6, 0x4c

    if-eq v5, v6, :cond_5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_4

    const/16 v6, 0x6c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x6e

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->freadnumber(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/LuaValue;

    move-result-object v5

    goto :goto_2

    :cond_3
    invoke-static {p1, v1}, Lcom/prineside/luaj/lib/IoLib;->freadline(Lcom/prineside/luaj/lib/IoLib$File;Z)Lcom/prineside/luaj/LuaValue;

    move-result-object v5

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->freadall(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/LuaValue;

    move-result-object v5

    goto :goto_2

    :cond_5
    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/prineside/luaj/lib/IoLib;->freadline(Lcom/prineside/luaj/lib/IoLib$File;Z)Lcom/prineside/luaj/LuaValue;

    move-result-object v5

    goto :goto_2

    :cond_6
    :goto_1
    const-string p1, "(invalid format)"

    invoke-static {v4, p1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {v5}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v5

    invoke-static {p1, v5}, Lcom/prineside/luaj/lib/IoLib;->freadbytes(Lcom/prineside/luaj/lib/IoLib$File;I)Lcom/prineside/luaj/LuaValue;

    move-result-object v5

    :goto_2
    aput-object v5, v2, v3

    invoke-virtual {v5}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v4

    goto :goto_3

    :cond_8
    move v3, v4

    goto :goto_0

    :cond_9
    :goto_3
    if-nez v3, :cond_a

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    goto :goto_4

    :cond_a
    invoke-static {v2, v1, v3}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;II)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method public final D(Lcom/prineside/luaj/lib/IoLib$File;ZLcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 8

    :try_start_0
    new-instance v7, Lcom/prineside/luaj/lib/IoLib$IoLibV;

    const-string v2, "lnext"

    const/16 v3, 0x13

    move-object v0, v7

    move-object v1, p1

    move-object v4, p0

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/prineside/luaj/lib/IoLib$IoLibV;-><init>(Lcom/prineside/luaj/lib/IoLib$File;Ljava/lang/String;ILcom/prineside/luaj/lib/IoLib;ZLcom/prineside/luaj/Varargs;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lines: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public abstract E(Ljava/lang/String;ZZZZ)Lcom/prineside/luaj/lib/IoLib$File;
.end method

.method public abstract F(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;
.end method

.method public final H()Lcom/prineside/luaj/lib/IoLib$File;
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->y:Lcom/prineside/luaj/lib/IoLib$File;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "-"

    const-string v2, "w"

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/luaj/lib/IoLib;->A(ILjava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->y:Lcom/prineside/luaj/lib/IoLib$File;

    :goto_0
    return-object v0
.end method

.method public final I(ILjava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;
    .locals 11

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v2, :cond_0

    const-string v6, "rwa"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_0

    goto :goto_1

    :cond_0
    if-ne v2, v4, :cond_1

    if-ne v5, v3, :cond_1

    goto :goto_1

    :cond_1
    if-lt v2, v4, :cond_2

    const/16 v6, 0x62

    if-ne v5, v6, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :cond_3
    const/4 v2, 0x2

    if-gtz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid mode: \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_4
    if-eqz p1, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v2, :cond_6

    const-string p1, "r"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string p1, "a"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    const-string p1, "b"

    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    move-object v5, p0

    move-object v6, p2

    invoke-virtual/range {v5 .. v10}, Lcom/prineside/luaj/lib/IoLib;->E(Ljava/lang/String;ZZZZ)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->M()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->O()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->N()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    return-object p1
.end method

.method public final J(Lcom/prineside/luaj/LuaTable;)V
    .locals 4

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaTable;->keys()[Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/LuaTable;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    check-cast v3, Lcom/prineside/luaj/lib/IoLib$IoLibV;

    iput-object p0, v3, Lcom/prineside/luaj/lib/IoLib$IoLibV;->iolib:Lcom/prineside/luaj/lib/IoLib;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract L()Lcom/prineside/luaj/lib/IoLib$File;
.end method

.method public abstract M()Lcom/prineside/luaj/lib/IoLib$File;
.end method

.method public abstract N()Lcom/prineside/luaj/lib/IoLib$File;
.end method

.method public abstract O()Lcom/prineside/luaj/lib/IoLib$File;
.end method

.method public _file_close(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->s(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->z(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _file_flush(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->s(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/lib/IoLib$File;->flush()V

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    return-object p1
.end method

.method public _file_lines(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/lib/IoLib;->s(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/prineside/luaj/lib/IoLib;->D(Lcom/prineside/luaj/lib/IoLib$File;ZLcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _file_read(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->s(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/lib/IoLib;->B(Lcom/prineside/luaj/lib/IoLib$File;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _file_seek(Lcom/prineside/luaj/LuaValue;Ljava/lang/String;I)Lcom/prineside/luaj/Varargs;
    .locals 3

    const-string v0, "set"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "end"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "cur"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'; must be one of \'set\', \'cur\' or \'end\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :goto_0
    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->s(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/prineside/luaj/lib/IoLib$File;->seek(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public _file_setvbuf(Lcom/prineside/luaj/LuaValue;Ljava/lang/String;I)Lcom/prineside/luaj/Varargs;
    .locals 3

    const-string v0, "no"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "full"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "line"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'; must be one of \'no\', \'full\' or \'line\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :goto_0
    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->s(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/prineside/luaj/lib/IoLib$File;->setvbuf(Ljava/lang/String;I)V

    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    return-object p1
.end method

.method public _file_write(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->s(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/prineside/luaj/lib/IoLib;->C(Lcom/prineside/luaj/lib/IoLib$File;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _io_close(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->H()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->s(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->t(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/lib/IoLib$File;

    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->z(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _io_flush()Lcom/prineside/luaj/Varargs;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->H()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/lib/IoLib;->t(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/lib/IoLib$File;

    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->y:Lcom/prineside/luaj/lib/IoLib$File;

    invoke-virtual {v0}, Lcom/prineside/luaj/lib/IoLib$File;->flush()V

    sget-object v0, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    return-object v0
.end method

.method public _io_index(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/lib/IoLib;->D:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->H()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/luaj/lib/IoLib;->C:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->y()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/luaj/lib/IoLib;->E:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->w()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_0
    return-object p1
.end method

.method public _io_input(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->y()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const-string v1, "r"

    invoke-virtual {p0, v0, p1, v1}, Lcom/prineside/luaj/lib/IoLib;->A(ILjava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->s(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/prineside/luaj/lib/IoLib;->x:Lcom/prineside/luaj/lib/IoLib$File;

    return-object p1
.end method

.method public _io_lines(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->y()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    const-string v3, "r"

    invoke-virtual {p0, v2, v1, v3}, Lcom/prineside/luaj/lib/IoLib;->A(ILjava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcom/prineside/luaj/lib/IoLib;->t(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/lib/IoLib$File;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p0, v2, v0, p1}, Lcom/prineside/luaj/lib/IoLib;->D(Lcom/prineside/luaj/lib/IoLib$File;ZLcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _io_open(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/Varargs;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/luaj/lib/IoLib;->I(ILjava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    return-object p1
.end method

.method public _io_output(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->H()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const-string v1, "w"

    invoke-virtual {p0, v0, p1, v1}, Lcom/prineside/luaj/lib/IoLib;->A(ILjava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->s(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/prineside/luaj/lib/IoLib;->y:Lcom/prineside/luaj/lib/IoLib$File;

    return-object p1
.end method

.method public _io_popen(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/Varargs;
    .locals 3

    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "w"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid value: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'; must be one of \'r\' or \'w\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/lib/IoLib;->F(Ljava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    return-object p1
.end method

.method public _io_read(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->y()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/lib/IoLib;->t(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/lib/IoLib$File;

    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->x:Lcom/prineside/luaj/lib/IoLib$File;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/lib/IoLib;->B(Lcom/prineside/luaj/lib/IoLib$File;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _io_tmpfile()Lcom/prineside/luaj/Varargs;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->L()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object v0

    return-object v0
.end method

.method public _io_type(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->G(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/prineside/luaj/lib/IoLib$File;->isclosed()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/luaj/lib/IoLib;->G:Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/lib/IoLib;->F:Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_0
    return-object p1
.end method

.method public _io_write(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/IoLib;->H()Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/lib/IoLib;->t(Lcom/prineside/luaj/lib/IoLib$File;)Lcom/prineside/luaj/lib/IoLib$File;

    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->y:Lcom/prineside/luaj/lib/IoLib$File;

    invoke-static {v0, p1}, Lcom/prineside/luaj/lib/IoLib;->C(Lcom/prineside/luaj/lib/IoLib$File;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public _lines_iter(Lcom/prineside/luaj/LuaValue;ZLcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 4

    invoke-static {p1}, Lcom/prineside/luaj/lib/IoLib;->G(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    invoke-virtual {v0}, Lcom/prineside/luaj/lib/IoLib$File;->isclosed()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "file is already closed"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_1
    invoke-virtual {p0, v0, p3}, Lcom/prineside/luaj/lib/IoLib;->B(Lcom/prineside/luaj/lib/IoLib$File;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->isnil(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/prineside/luaj/lib/IoLib$File;->eof()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/prineside/luaj/lib/IoLib$File;->close()V

    :cond_2
    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 5

    const-class p1, Lcom/prineside/luaj/lib/IoLib$IoLibV;

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkglobals()Lcom/prineside/luaj/Globals;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->B:Lcom/prineside/luaj/Globals;

    new-instance v0, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v0}, Lcom/prineside/luaj/LuaTable;-><init>()V

    sget-object v1, Lcom/prineside/luaj/lib/IoLib;->IO_NAMES:[Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/prineside/luaj/lib/LibFunction;->r(Lcom/prineside/luaj/LuaValue;Ljava/lang/Class;[Ljava/lang/String;)V

    new-instance v1, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v1}, Lcom/prineside/luaj/LuaTable;-><init>()V

    iput-object v1, p0, Lcom/prineside/luaj/lib/IoLib;->A:Lcom/prineside/luaj/LuaTable;

    sget-object v2, Lcom/prineside/luaj/lib/IoLib;->FILE_NAMES:[Ljava/lang/String;

    const/16 v3, 0xb

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/prineside/luaj/lib/LibFunction;->q(Lcom/prineside/luaj/LuaValue;Ljava/lang/Class;[Ljava/lang/String;I)Lcom/badlogic/gdx/utils/Array;

    new-instance v1, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v1}, Lcom/prineside/luaj/LuaTable;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "__index"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/prineside/luaj/lib/LibFunction;->q(Lcom/prineside/luaj/LuaValue;Ljava/lang/Class;[Ljava/lang/String;I)Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaTable;->setmetatable(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/lib/IoLib;->J(Lcom/prineside/luaj/LuaTable;)V

    iget-object p1, p0, Lcom/prineside/luaj/lib/IoLib;->A:Lcom/prineside/luaj/LuaTable;

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/lib/IoLib;->J(Lcom/prineside/luaj/LuaTable;)V

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/lib/IoLib;->J(Lcom/prineside/luaj/LuaTable;)V

    const-string p1, "io"

    invoke-virtual {p2, p1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const-string v1, "package"

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    const-string v1, "loaded"

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    :cond_0
    return-object v0
.end method

.method public final w()Lcom/prineside/luaj/lib/IoLib$File;
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->z:Lcom/prineside/luaj/lib/IoLib$File;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const-string v1, "-"

    const-string v2, "w"

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/luaj/lib/IoLib;->A(ILjava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->z:Lcom/prineside/luaj/lib/IoLib$File;

    :goto_0
    return-object v0
.end method

.method public final y()Lcom/prineside/luaj/lib/IoLib$File;
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->x:Lcom/prineside/luaj/lib/IoLib$File;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "-"

    const-string v2, "r"

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/luaj/lib/IoLib;->A(ILjava/lang/String;Ljava/lang/String;)Lcom/prineside/luaj/lib/IoLib$File;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/luaj/lib/IoLib;->x:Lcom/prineside/luaj/lib/IoLib$File;

    :goto_0
    return-object v0
.end method
