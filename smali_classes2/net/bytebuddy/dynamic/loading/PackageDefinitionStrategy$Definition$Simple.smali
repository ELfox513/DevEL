.class public Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Simple"
.end annotation


# instance fields
.field private final implementationTitle:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final implementationVendor:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final implementationVersion:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field public final sealBase:Ljava/net/URL;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final specificationTitle:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final specificationVendor:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field

.field private final specificationVersion:Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .param p7    # Ljava/net/URL;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationTitle:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVersion:Ljava/lang/String;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVendor:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationTitle:Ljava/lang/String;

    iput-object p5, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVersion:Ljava/lang/String;

    iput-object p6, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVendor:Ljava/lang/String;

    iput-object p7, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Package sealing relies on URL equality."
        value = {
            "DMI_BLOCKING_METHODS_ON_URL"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationTitle:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_2
    iget-object v2, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationTitle:Ljava/lang/String;

    if-nez v2, :cond_f

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVersion:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVersion:Ljava/lang/String;

    if-nez v2, :cond_f

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVendor:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVendor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVendor:Ljava/lang/String;

    if-nez v2, :cond_f

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationTitle:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationTitle:Ljava/lang/String;

    if-nez v2, :cond_f

    :cond_9
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVersion:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVersion:Ljava/lang/String;

    if-nez v2, :cond_f

    :cond_b
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVendor:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVendor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_c
    iget-object v2, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVendor:Ljava/lang/String;

    if-nez v2, :cond_f

    :cond_d
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    if-eqz v2, :cond_e

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    invoke-virtual {v2, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_e
    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    if-nez p1, :cond_f

    goto :goto_1

    :cond_f
    :goto_0
    const/4 v0, 0x0

    :cond_10
    :goto_1
    return v0

    :cond_11
    :goto_2
    return v1
.end method

.method public getImplementationTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSealBase()Ljava/net/URL;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    return-object v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Package sealing relies on URL equality."
        value = {
            "DMI_BLOCKING_METHODS_ON_URL"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationTitle:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVersion:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->specificationVendor:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationTitle:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVersion:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->implementationVendor:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/net/URL;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public isCompatibleTo(Ljava/lang/Package;)Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Simple;->sealBase:Ljava/net/URL;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Package;->isSealed()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Package;->isSealed(Ljava/net/URL;)Z

    move-result p1

    return p1
.end method

.method public isDefined()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
