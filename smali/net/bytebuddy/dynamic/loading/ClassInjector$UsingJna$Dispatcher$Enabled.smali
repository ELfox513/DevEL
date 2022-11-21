.class public Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Enabled;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Enabled"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final jvm:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Jvm;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Jvm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Enabled;->jvm:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Jvm;

    return-void
.end method


# virtual methods
.method public defineClass(Ljava/lang/ClassLoader;Ljava/lang/String;[BLjava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 7
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p4    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Enabled;->jvm:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Jvm;

    sget-object v1, Lcom/sun/jna/JNIEnv;->CURRENT:Lcom/sun/jna/JNIEnv;

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    array-length v5, p3

    move-object v3, p1

    move-object v4, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Jvm;->JVM_DefineClass(Lcom/sun/jna/JNIEnv;Ljava/lang/String;Ljava/lang/ClassLoader;[BILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Enabled;->jvm:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Jvm;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Enabled;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Enabled;->jvm:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Jvm;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Enabled;->jvm:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingJna$Dispatcher$Jvm;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
