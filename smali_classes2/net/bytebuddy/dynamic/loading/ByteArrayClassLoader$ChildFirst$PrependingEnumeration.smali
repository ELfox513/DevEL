.class public Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrependingEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field private final enumeration:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private nextElement:Ljava/net/URL;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/util/Enumeration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;->nextElement:Ljava/net/URL;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;->enumeration:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;->nextElement:Ljava/net/URL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;->nextElement:Ljava/net/URL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;->nextElement:Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    iput-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;->nextElement:Ljava/net/URL;

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    iput-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ChildFirst$PrependingEnumeration;->nextElement:Ljava/net/URL;

    throw v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
