.class public Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Relative"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

.field private final fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;->fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;

    iput-object p2, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;->fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;

    check-cast p1, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;->fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;->fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Prepared;
    .locals 3

    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;->fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;

    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;->fieldLocatorFactory:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;

    invoke-interface {v2, p1}, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldLocator;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative$Prepared;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;Lnet/bytebuddy/dynamic/scaffold/FieldLocator;)V

    return-object v0
.end method

.method public with(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;
    .locals 2

    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;->fieldNameExtractor:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    return-object v0
.end method
