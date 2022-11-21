.class public Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;
.super Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassLoadingTypeList"
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

.field private final delegate:Lnet/bytebuddy/description/type/TypeList$Generic;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeList$Generic;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;)V
    .locals 0
    .param p2    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;->delegate:Lnet/bytebuddy/description/type/TypeList$Generic;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;->classLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;->classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;->get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;->delegate:Lnet/bytebuddy/description/type/TypeList$Generic;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;->classLoadingDelegate:Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;

    invoke-direct {v0, p1, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeProjection;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/ClassLoader;Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingDelegate;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$SuperTypeLoading$ClassLoadingTypeList;->delegate:Lnet/bytebuddy/description/type/TypeList$Generic;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
