.class public Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForBootstrapInjection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final folder:Ljava/io/File;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;


# direct methods
.method public constructor <init>(Ljava/lang/instrument/Instrumentation;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;->folder:Ljava/io/File;

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;->instrumentation:Ljava/lang/instrument/Instrumentation;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;->folder:Ljava/io/File;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;->folder:Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;->folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;->folder:Ljava/io/File;

    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;->BOOTSTRAP:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy$ForBootstrapInjection;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-static {p1, v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation;->of(Ljava/io/File;Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingInstrumentation$Target;Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassInjector;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    invoke-direct {v0, p1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;)V

    move-object p1, v0

    :goto_0
    invoke-interface {p1, p2}, Lnet/bytebuddy/dynamic/loading/ClassInjector;->inject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
