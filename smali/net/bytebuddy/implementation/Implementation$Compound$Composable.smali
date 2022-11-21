.class public Lnet/bytebuddy/implementation/Implementation$Compound$Composable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Composable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Compound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Composable"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final composable:Lnet/bytebuddy/implementation/Implementation$Composable;

.field private final implementations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/Implementation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lnet/bytebuddy/implementation/Implementation$Composable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/Implementation;",
            ">;",
            "Lnet/bytebuddy/implementation/Implementation$Composable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/Implementation;

    instance-of v1, v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    check-cast v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    iget-object v2, v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    iget-object v0, v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->composable:Lnet/bytebuddy/implementation/Implementation$Composable;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    check-cast v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    invoke-static {v0}, Lnet/bytebuddy/implementation/Implementation$Compound;->a(Lnet/bytebuddy/implementation/Implementation$Compound;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of p1, p2, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    check-cast p2, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    iget-object v0, p2, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p2, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->composable:Lnet/bytebuddy/implementation/Implementation$Composable;

    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->composable:Lnet/bytebuddy/implementation/Implementation$Composable;

    goto :goto_1

    :cond_3
    iput-object p2, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->composable:Lnet/bytebuddy/implementation/Implementation$Composable;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/implementation/Implementation;Lnet/bytebuddy/implementation/Implementation$Composable;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;-><init>(Ljava/util/List;Lnet/bytebuddy/implementation/Implementation$Composable;)V

    return-void
.end method

.method public static synthetic a(Lnet/bytebuddy/implementation/Implementation$Compound$Composable;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lnet/bytebuddy/implementation/Implementation$Compound$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->composable:Lnet/bytebuddy/implementation/Implementation$Composable;

    return-object p0
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->composable:Lnet/bytebuddy/implementation/Implementation$Composable;

    invoke-interface {v2, p1}, Lnet/bytebuddy/implementation/Implementation$Composable;->andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;-><init>(Ljava/util/List;Lnet/bytebuddy/implementation/Implementation$Composable;)V

    return-object v0
.end method

.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->composable:Lnet/bytebuddy/implementation/Implementation$Composable;

    invoke-interface {v2, p1}, Lnet/bytebuddy/implementation/Implementation$Composable;->andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;

    move-result-object p1

    invoke-static {v1, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/bytebuddy/implementation/Implementation$Compound;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/implementation/Implementation;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, p1}, Lnet/bytebuddy/implementation/Implementation;->appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->composable:Lnet/bytebuddy/implementation/Implementation$Composable;

    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/Implementation;->appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    move-result-object p1

    aput-object p1, v0, v2

    new-instance p1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;

    invoke-direct {p1, v0}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    return-object p1
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->composable:Lnet/bytebuddy/implementation/Implementation$Composable;

    check-cast p1, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;

    iget-object v3, p1, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->composable:Lnet/bytebuddy/implementation/Implementation$Composable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->composable:Lnet/bytebuddy/implementation/Implementation$Composable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->implementations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/Implementation;

    invoke-interface {v1, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Compound$Composable;->composable:Lnet/bytebuddy/implementation/Implementation$Composable;

    invoke-interface {v0, p1}, Lnet/bytebuddy/dynamic/scaffold/InstrumentedType$Prepareable;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method
