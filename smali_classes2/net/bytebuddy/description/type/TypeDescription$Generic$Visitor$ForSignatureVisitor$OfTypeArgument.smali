.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor$OfTypeArgument;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfTypeArgument"
.end annotation


# direct methods
.method public constructor <init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor$OfTypeArgument;->onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onGenericArray(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p1
.end method

.method public bridge synthetic onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor$OfTypeArgument;->onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onNonGenericType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p1
.end method

.method public bridge synthetic onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor$OfTypeArgument;->onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onParameterizedType(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p1
.end method

.method public bridge synthetic onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor$OfTypeArgument;->onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onTypeVariable(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p1
.end method

.method public bridge synthetic onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor$OfTypeArgument;->onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method public onWildcard(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 3

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getLowerBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    const-class v2, Ljava/lang/Object;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lnet/bytebuddy/matcher/FilterableList;->getOnly()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$ForSignatureVisitor;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p1
.end method
