.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceList;
.super Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyInterfaceList"
.end annotation


# instance fields
.field private final delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;

.field private final rawInterfaces:Lnet/bytebuddy/description/type/TypeList$Generic;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;Lnet/bytebuddy/description/type/TypeList$Generic;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceList;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceList;->rawInterfaces:Lnet/bytebuddy/description/type/TypeList$Generic;

    return-void
.end method

.method public static of(Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;)Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceList;

    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceList;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;Lnet/bytebuddy/description/type/TypeList$Generic;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceList;->get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceType;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceList;->delegate:Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceList;->rawInterfaces:Lnet/bytebuddy/description/type/TypeList$Generic;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceType;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection;ILnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$WithLazyNavigation$LazyInterfaceList;->rawInterfaces:Lnet/bytebuddy/description/type/TypeList$Generic;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
