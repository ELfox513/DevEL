.class public final enum Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;

.field public static final enum INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;
    .locals 1

    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;
    .locals 1

    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy$Disabled;

    return-object v0
.end method


# virtual methods
.method public resolve(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
    .locals 0
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Class injection is disabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
