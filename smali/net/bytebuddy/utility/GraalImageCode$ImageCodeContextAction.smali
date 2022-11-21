.class public final enum Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/GraalImageCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageCodeContextAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/utility/GraalImageCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;->INSTANCE:Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;->$VALUES:[Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;->$VALUES:[Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/utility/GraalImageCode$ImageCodeContextAction;->run()Lnet/bytebuddy/utility/GraalImageCode;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/utility/GraalImageCode;
    .locals 5

    :try_start_0
    const-string v0, "java.lang.management.ManagementFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getRuntimeMXBean"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getInputArguments"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "-agentlib:native-image-agent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lnet/bytebuddy/utility/GraalImageCode;->AGENT:Lnet/bytebuddy/utility/GraalImageCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_1
    sget-object v0, Lnet/bytebuddy/utility/GraalImageCode;->NONE:Lnet/bytebuddy/utility/GraalImageCode;

    return-object v0
.end method
