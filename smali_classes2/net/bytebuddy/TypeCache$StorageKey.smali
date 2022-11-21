.class public Lnet/bytebuddy/TypeCache$StorageKey;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/TypeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/TypeCache$StorageKey;)I
    .locals 0

    iget p0, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Cross-comparison is intended."
        value = {
            "EQ_CHECK_FOR_OPERAND_NOT_COMPATIBLE_WITH_THIS"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/TypeCache$LookupKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lnet/bytebuddy/TypeCache$LookupKey;

    iget v1, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    invoke-static {p1}, Lnet/bytebuddy/TypeCache$LookupKey;->a(Lnet/bytebuddy/TypeCache$LookupKey;)I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Lnet/bytebuddy/TypeCache$LookupKey;->b(Lnet/bytebuddy/TypeCache$LookupKey;)Ljava/lang/ClassLoader;

    move-result-object p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    instance-of v1, p1, Lnet/bytebuddy/TypeCache$StorageKey;

    if-eqz v1, :cond_4

    check-cast p1, Lnet/bytebuddy/TypeCache$StorageKey;

    iget v1, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    iget v3, p1, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnet/bytebuddy/TypeCache$StorageKey;->hashCode:I

    return v0
.end method
