.class public Lnet/bytebuddy/build/BuildLogger$Compound;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/BuildLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/BuildLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final buildLoggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/build/BuildLogger;",
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
            "Lnet/bytebuddy/build/BuildLogger;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/build/BuildLogger;

    instance-of v1, v0, Lnet/bytebuddy/build/BuildLogger$Compound;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    check-cast v0, Lnet/bytebuddy/build/BuildLogger$Compound;

    iget-object v0, v0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lnet/bytebuddy/build/BuildLogger$NoOp;

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/build/BuildLogger;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/build/BuildLogger$Compound;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/BuildLogger;

    invoke-interface {v1}, Lnet/bytebuddy/build/BuildLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lnet/bytebuddy/build/BuildLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/BuildLogger;

    invoke-interface {v1}, Lnet/bytebuddy/build/BuildLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/build/BuildLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/build/BuildLogger$Compound;

    iget-object p1, p1, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public error(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/BuildLogger;

    invoke-interface {v1}, Lnet/bytebuddy/build/BuildLogger;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lnet/bytebuddy/build/BuildLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/BuildLogger;

    invoke-interface {v1}, Lnet/bytebuddy/build/BuildLogger;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/build/BuildLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/BuildLogger;

    invoke-interface {v1}, Lnet/bytebuddy/build/BuildLogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lnet/bytebuddy/build/BuildLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/BuildLogger;

    invoke-interface {v1}, Lnet/bytebuddy/build/BuildLogger;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/build/BuildLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/BuildLogger;

    invoke-interface {v1}, Lnet/bytebuddy/build/BuildLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/BuildLogger;

    invoke-interface {v1}, Lnet/bytebuddy/build/BuildLogger;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/BuildLogger;

    invoke-interface {v1}, Lnet/bytebuddy/build/BuildLogger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/BuildLogger;

    invoke-interface {v1}, Lnet/bytebuddy/build/BuildLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public warn(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/BuildLogger;

    invoke-interface {v1}, Lnet/bytebuddy/build/BuildLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lnet/bytebuddy/build/BuildLogger;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/build/BuildLogger$Compound;->buildLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/build/BuildLogger;

    invoke-interface {v1}, Lnet/bytebuddy/build/BuildLogger;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/build/BuildLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
