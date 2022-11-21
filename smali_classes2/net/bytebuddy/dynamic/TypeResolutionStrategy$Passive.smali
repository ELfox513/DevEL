.class public final enum Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/TypeResolutionStrategy;
.implements Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/TypeResolutionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Passive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;",
        ">;",
        "Lnet/bytebuddy/dynamic/TypeResolutionStrategy;",
        "Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;->INSTANCE:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;->$VALUES:[Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;->$VALUES:[Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Passive;

    return-object v0
.end method


# virtual methods
.method public initialize(Lnet/bytebuddy/dynamic/DynamicType;Ljava/lang/ClassLoader;Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;)Ljava/util/Map;
    .locals 1
    .param p2    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/ClassLoader;",
            ">(",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            "TS;",
            "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
            "-TS;>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType;->getAllTypes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/DynamicType;->getLoadedTypeInitializers()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/LoadedTypeInitializer;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    invoke-interface {v0, p3}, Lnet/bytebuddy/implementation/LoadedTypeInitializer;->onLoad(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public injectedInto(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
    .locals 0

    return-object p1
.end method

.method public resolve()Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Resolved;
    .locals 0

    return-object p0
.end method
