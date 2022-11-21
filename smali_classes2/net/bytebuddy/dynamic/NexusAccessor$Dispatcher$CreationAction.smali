.class public final enum Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    aput-object v0, v1, v2

    sput-object v1, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

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

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;
    .locals 1

    const-class v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Exception should not be rethrown but trigger a fallback."
        value = {
            "REC_CATCH_EXCEPTION"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;->run()Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;
    .locals 16
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Exception should not be rethrown but trigger a fallback."
        value = {
            "REC_CATCH_EXCEPTION"
        }
    .end annotation

    const-string v1, "clean"

    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/String;

    const-string v4, "register"

    const-string v0, "net.bytebuddy.nexus.disabled"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;

    const-string v1, "Nexus injection was explicitly disabled"

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_0
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    sget-object v12, Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;->NO_PROTECTION_DOMAIN:Ljava/security/ProtectionDomain;

    invoke-direct {v0, v11, v12}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    const-class v11, Lnet/bytebuddy/dynamic/Nexus;

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    const-class v12, Lnet/bytebuddy/dynamic/Nexus;

    invoke-static {v12}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->read(Ljava/lang/Class;)[B

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v0, v11}, Lnet/bytebuddy/dynamic/loading/ClassInjector$AbstractBase;->inject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-class v11, Lnet/bytebuddy/dynamic/Nexus;

    invoke-static {v11}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-instance v11, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Available;

    new-array v12, v8, [Ljava/lang/Class;

    aput-object v3, v12, v10

    const-class v13, Ljava/lang/ClassLoader;

    aput-object v13, v12, v9

    const-class v13, Ljava/lang/ref/ReferenceQueue;

    aput-object v13, v12, v7

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v6

    aput-object v2, v12, v5

    invoke-virtual {v0, v4, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    new-array v13, v9, [Ljava/lang/Class;

    const-class v14, Ljava/lang/ref/Reference;

    aput-object v14, v13, v10

    invoke-virtual {v0, v1, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v11, v12, v0}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Available;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const-class v12, Lnet/bytebuddy/dynamic/Nexus;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-class v11, Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-static {v11}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v11

    invoke-static {v0}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v12

    if-eqz v11, :cond_1

    invoke-virtual {v11, v12}, Lnet/bytebuddy/utility/JavaModule;->canRead(Lnet/bytebuddy/utility/JavaModule;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "java.lang.Module"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v14, "addReads"

    new-array v15, v9, [Ljava/lang/Class;

    aput-object v13, v15, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-virtual {v11}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v11

    new-array v14, v9, [Ljava/lang/Object;

    invoke-virtual {v12}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v14, v10

    invoke-virtual {v13, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v11, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Available;

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v3, v8, v10

    const-class v3, Ljava/lang/ClassLoader;

    aput-object v3, v8, v9

    const-class v3, Ljava/lang/ref/ReferenceQueue;

    aput-object v3, v8, v7

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v8, v6

    aput-object v2, v8, v5

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Ljava/lang/ref/Reference;

    aput-object v4, v3, v10

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v11, v2, v0}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Available;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v11

    :catch_1
    move-exception v0

    new-instance v1, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v1

    :catch_2
    new-instance v1, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
