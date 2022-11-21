.class public abstract Lcom/esotericsoftware/kryonet/util/InputStreamSender;
.super Lcom/esotericsoftware/kryonet/util/TcpIdleSender;
.source "SourceFile"


# instance fields
.field public final b:Ljava/io/InputStream;

.field public final c:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Lcom/esotericsoftware/kryonet/util/TcpIdleSender;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->b:Ljava/io/InputStream;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->c:[B

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->c:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->b:Ljava/io/InputStream;

    array-length v4, v2

    sub-int/2addr v4, v1

    invoke-virtual {v3, v2, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-array v2, v1, [B

    iget-object v3, p0, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->c:[B

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->next([B)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryonet/util/InputStreamSender;->next([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/esotericsoftware/kryonet/KryoNetException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryonet/KryoNetException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public abstract next([B)Ljava/lang/Object;
.end method
