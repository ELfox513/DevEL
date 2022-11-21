.class final enum Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$1;
.super Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler;-><init>(Ljava/lang/String;IZLnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$1;)V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "[B>;)[B"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public release(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    return-void
.end method

.method public url(Ljava/lang/String;Ljava/util/concurrent/ConcurrentMap;)Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "[B>;)",
            "Ljava/net/URL;"
        }
    .end annotation

    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->f()Ljava/net/URL;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    if-nez p2, :cond_2

    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->f()Ljava/net/URL;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PersistenceHandler$UrlDefinitionAction;-><init>(Ljava/lang/String;[B)V

    invoke-static {v0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->g(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    :goto_0
    return-object p1
.end method
