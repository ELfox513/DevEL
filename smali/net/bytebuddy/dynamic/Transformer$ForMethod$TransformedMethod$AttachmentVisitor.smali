.class public Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$WithoutTypeSubstitution;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttachmentVisitor"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$WithoutTypeSubstitution;-><init>()V

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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    check-cast p1, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->equals(Ljava/lang/Object;)Z

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

    iget-object v1, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-virtual {v1}, Lnet/bytebuddy/description/method/MethodDescription$AbstractBase;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-virtual {v0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/matcher/FilterableList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeList$Generic;

    new-instance v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$WithAnnotationOverlay;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod$AttachmentVisitor;->a:Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;

    invoke-static {v0}, Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;->g(Lnet/bytebuddy/dynamic/Transformer$ForMethod$TransformedMethod;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/TypeVariableSource;->findExpectedVariable(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    :goto_0
    invoke-direct {v1, v0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable$WithAnnotationOverlay;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/description/annotation/AnnotationSource;)V

    return-object v1
.end method
