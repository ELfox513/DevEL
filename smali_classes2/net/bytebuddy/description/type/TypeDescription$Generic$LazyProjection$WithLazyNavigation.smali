.class public abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithLazyNavigation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$OfAnnotatedElement;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceList;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceType;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazySuperClass;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceList;->of(Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    invoke-static {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazySuperClass;->of(Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDefinition$SuperClassIterator;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object v0
.end method
