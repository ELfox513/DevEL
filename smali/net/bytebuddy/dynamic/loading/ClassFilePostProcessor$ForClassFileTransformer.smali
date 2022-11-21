.class public Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForClassFileTransformer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer$AllPermissionsCollection;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field public static final ALL_PRIVILEGES:Ljava/security/ProtectionDomain;

.field private static final UNLOADED_TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# instance fields
.field private final classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/security/ProtectionDomain;

    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer$AllPermissionsCollection;

    invoke-direct {v1}, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer$AllPermissionsCollection;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->ALL_PRIVILEGES:Ljava/security/ProtectionDomain;

    sput-object v2, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->UNLOADED_TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/ClassFileTransformer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/security/ProtectionDomain;[B)[B
    .locals 6
    .param p1    # Ljava/lang/ClassLoader;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Ljava/security/ProtectionDomain;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->classFileTransformer:Ljava/lang/instrument/ClassFileTransformer;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->UNLOADED_TYPE:Ljava/lang/Class;

    if-nez p3, :cond_0

    sget-object p3, Lnet/bytebuddy/dynamic/loading/ClassFilePostProcessor$ForClassFileTransformer;->ALL_PRIVILEGES:Ljava/security/ProtectionDomain;

    :cond_0
    move-object v4, p3

    move-object v1, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Ljava/lang/instrument/ClassFileTransformer;->transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/instrument/IllegalClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p4, p1

    :goto_0
    return-object p4

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to transform "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
