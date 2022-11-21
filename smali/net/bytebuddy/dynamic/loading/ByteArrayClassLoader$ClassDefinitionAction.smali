.class public Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClassDefinitionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

.field private final binaryRepresentation:[B

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->a:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->binaryRepresentation:[B

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->binaryRepresentation:[B

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->binaryRepresentation:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->a:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->a:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->binaryRepresentation:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->a:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public run()Ljava/lang/Class;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->a:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    iget-object v1, v0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->packageDefinitionStrategy:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    invoke-interface {v1, v0, v4, v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy;->define(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->isDefined()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->b()Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->a:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    invoke-interface {v1, v2, v4}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$PackageLookupStrategy;->apply(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->a:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getImplementationVendor()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->getSealBase()Ljava/net/URL;

    move-result-object v11

    invoke-static/range {v3 .. v11}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->c(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;->isCompatibleTo(Ljava/lang/Package;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sealing violation for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->a:Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->name:Ljava/lang/String;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->binaryRepresentation:[B

    const/4 v5, 0x0

    array-length v6, v4

    iget-object v7, v2, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-static/range {v2 .. v7}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;->d(Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader;Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ByteArrayClassLoader$ClassDefinitionAction;->run()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
