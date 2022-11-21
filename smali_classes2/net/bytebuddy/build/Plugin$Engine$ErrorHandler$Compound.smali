.class public Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation


# instance fields
.field private final errorHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;->errorHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;

    instance-of v1, v0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;->errorHandlers:Ljava/util/List;

    check-cast v0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;

    iget-object v0, v0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;->errorHandlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lnet/bytebuddy/build/Plugin$Engine$Listener$NoOp;

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;->errorHandlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/util/Map;)V
    .locals 2
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

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;->errorHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;

    invoke-interface {v1, p1}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onError(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;->errorHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onError(Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;->errorHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onError(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;->errorHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;

    invoke-interface {v1, p1, p2, p3}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onError(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/build/Plugin;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLiveInitializer(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;->errorHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onLiveInitializer(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onManifest(Ljava/util/jar/Manifest;)V
    .locals 2
    .param p1    # Ljava/util/jar/Manifest;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;->errorHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;

    invoke-interface {v1, p1}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onManifest(Ljava/util/jar/Manifest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResource(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;->errorHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;

    invoke-interface {v1, p1}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onResource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUnresolved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler$Compound;->errorHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;

    invoke-interface {v1, p1}, Lnet/bytebuddy/build/Plugin$Engine$ErrorHandler;->onUnresolved(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
