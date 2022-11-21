.class public Lnet/bytebuddy/NamingStrategy$Suffixing;
.super Lnet/bytebuddy/NamingStrategy$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/NamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Suffixing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final JAVA_PACKAGE:Ljava/lang/String; = "java."


# instance fields
.field private final baseNameResolver:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;

.field private final javaLangPackagePrefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/NamingStrategy$Suffixing;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;->INSTANCE:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver$ForUnnamedType;

    invoke-direct {p0, p1, v0, p2}, Lnet/bytebuddy/NamingStrategy$Suffixing;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;)V
    .locals 1

    const-string v0, "net.bytebuddy.renamed"

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/NamingStrategy$Suffixing;-><init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/NamingStrategy$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->suffix:Ljava/lang/String;

    iput-object p2, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;

    iput-object p3, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->javaLangPackagePrefix:Ljava/lang/String;

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
    iget-object v2, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->suffix:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/NamingStrategy$Suffixing;

    iget-object v3, p1, Lnet/bytebuddy/NamingStrategy$Suffixing;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->javaLangPackagePrefix:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/NamingStrategy$Suffixing;->javaLangPackagePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;

    iget-object p1, p1, Lnet/bytebuddy/NamingStrategy$Suffixing;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;

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

    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->javaLangPackagePrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public name(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->baseNameResolver:Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;

    invoke-interface {v0, p1}, Lnet/bytebuddy/NamingStrategy$Suffixing$BaseNameResolver;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->javaLangPackagePrefix:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->javaLangPackagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/bytebuddy/NamingStrategy$Suffixing;->suffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
