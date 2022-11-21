.class public abstract Ls7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ls7/d;JLokio/BufferedSource;)Ls7/h;
    .locals 1

    if-eqz p3, :cond_0

    new-instance v0, Ls7/h$a;

    invoke-direct {v0, p0, p1, p2, p3}, Ls7/h$a;-><init>(Ls7/d;JLokio/BufferedSource;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ls7/d;[B)Ls7/h;
    .locals 3

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Ls7/h;->c(Ls7/d;JLokio/BufferedSource;)Ls7/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Ls7/h;->e()Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lt7/a;->c(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract e()Lokio/BufferedSource;
.end method
