.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "LambdaInstrumentationStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaInstanceFactory;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$LambdaMetafactoryFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

.field public static final enum DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

.field public static final enum ENABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$1;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->ENABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$2;

    const-string v3, "DISABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

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

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static of(Z)Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->ENABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    :goto_0
    return-object p0
.end method

.method public static release(Ljava/lang/instrument/ClassFileTransformer;Ljava/lang/instrument/Instrumentation;)V
    .locals 2

    invoke-static {p0}, Lnet/bytebuddy/agent/builder/LambdaFactory;->release(Ljava/lang/instrument/ClassFileTransformer;)Z

    move-result p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->of(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-string v1, "java.lang.invoke.LambdaMetafactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->reset([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not release lambda transformer"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    return-object v0
.end method


# virtual methods
.method public abstract apply(Lnet/bytebuddy/ByteBuddy;Ljava/lang/instrument/Instrumentation;Ljava/lang/instrument/ClassFileTransformer;)V
.end method

.method public isEnabled()Z
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->ENABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isInstrumented(Ljava/lang/Class;)Z
    .param p1    # Ljava/lang/Class;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method
