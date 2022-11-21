.class public final Lz4/d0;
.super Lz4/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz4/c0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz4/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final b(Lz4/r3;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/r3;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final c(Ljava/lang/Object;)Lz4/f0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lz4/f0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    check-cast p1, Lz4/m0$c;

    iget-object p1, p1, Lz4/m0$c;->zzrw:Lz4/f0;

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Lz4/f0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lz4/f0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    check-cast p1, Lz4/m0$c;

    invoke-virtual {p1}, Lz4/m0$c;->t()Lz4/f0;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz4/c0;->c(Ljava/lang/Object;)Lz4/f0;

    move-result-object p1

    invoke-virtual {p1}, Lz4/f0;->m()V

    return-void
.end method

.method public final f(Lz4/r1;)Z
    .locals 0

    instance-of p1, p1, Lz4/m0$c;

    return p1
.end method
