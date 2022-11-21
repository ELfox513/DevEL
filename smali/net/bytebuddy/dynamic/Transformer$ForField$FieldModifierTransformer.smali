.class public Lnet/bytebuddy/dynamic/Transformer$ForField$FieldModifierTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/dynamic/Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/Transformer$ForField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldModifierTransformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/Transformer<",
        "Lnet/bytebuddy/description/field/FieldDescription$Token;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final resolver:Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver<",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver<",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$FieldModifierTransformer;->resolver:Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$FieldModifierTransformer;->resolver:Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    check-cast p1, Lnet/bytebuddy/dynamic/Transformer$ForField$FieldModifierTransformer;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/Transformer$ForField$FieldModifierTransformer;->resolver:Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$FieldModifierTransformer;->resolver:Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    invoke-virtual {v1}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic transform(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/dynamic/Transformer$ForField$FieldModifierTransformer;->transform(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/description/field/FieldDescription$Token;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription$Token;)Lnet/bytebuddy/description/field/FieldDescription$Token;
    .locals 3

    new-instance p1, Lnet/bytebuddy/description/field/FieldDescription$Token;

    invoke-virtual {p2}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/dynamic/Transformer$ForField$FieldModifierTransformer;->resolver:Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    invoke-virtual {p2}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getModifiers()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->resolve(I)I

    move-result v1

    invoke-virtual {p2}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-virtual {p2}, Lnet/bytebuddy/description/field/FieldDescription$Token;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p2

    invoke-direct {p1, v0, v1, v2, p2}, Lnet/bytebuddy/description/field/FieldDescription$Token;-><init>(Ljava/lang/String;ILnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/util/List;)V

    return-object p1
.end method
