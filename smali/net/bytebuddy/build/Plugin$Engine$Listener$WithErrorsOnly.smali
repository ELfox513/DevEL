.class public Lnet/bytebuddy/build/Plugin$Engine$Listener$WithErrorsOnly;
.super Lnet/bytebuddy/build/Plugin$Engine$Listener$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithErrorsOnly"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final delegate:Lnet/bytebuddy/build/Plugin$Engine$Listener;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Listener;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/build/Plugin$Engine$Listener$Adapter;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithErrorsOnly;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Listener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithErrorsOnly;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Listener;

    check-cast p1, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithErrorsOnly;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithErrorsOnly;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Listener;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithErrorsOnly;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Listener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onError(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithErrorsOnly;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Listener;

    invoke-interface {v0, p1}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onError(Ljava/util/Map;)V

    return-void
.end method

.method public onError(Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithErrorsOnly;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Listener;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onError(Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithErrorsOnly;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Listener;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onError(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-void
.end method

.method public onError(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Listener$WithErrorsOnly;->delegate:Lnet/bytebuddy/build/Plugin$Engine$Listener;

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onError(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V

    return-void
.end method
