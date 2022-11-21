.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ForClassLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

.field public static final enum STRONG:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

.field public static final enum WEAK:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader$1;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;->STRONG:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader$2;

    const-string v3, "WEAK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;->WEAK:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILnet/bytebuddy/agent/builder/AgentBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

    return-object v0
.end method


# virtual methods
.method public withFallbackTo(Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/dynamic/ClassFileLocator;

    new-instance v2, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;

    invoke-direct {v2, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;-><init>(Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;->withFallbackTo(Ljava/util/List;)Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    move-result-object p1

    return-object p1
.end method

.method public withFallbackTo(Ljava/util/List;)Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;

    invoke-direct {p1, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public varargs withFallbackTo([Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;->withFallbackTo(Ljava/util/List;)Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFallbackTo([Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;->withFallbackTo(Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    move-result-object p1

    return-object p1
.end method
