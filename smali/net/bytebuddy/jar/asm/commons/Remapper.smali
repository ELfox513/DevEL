.class public abstract Lnet/bytebuddy/jar/asm/commons/Remapper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;
    .locals 3

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    :cond_0
    return-object p1

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDimensions()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getElementType()Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createRemappingSignatureAdapter(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->createSignatureRemapper(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    return-object p1
.end method

.method public createSignatureRemapper(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    new-instance v0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;

    invoke-direct {v0, p1, p0}, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;-><init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-object v0
.end method

.method public map(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public mapAnnotationAttributeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public mapDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public mapInnerClassName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "$"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x24

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    :goto_0
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isDigit(C)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p3
.end method

.method public mapInvokeDynamicMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "()V"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v4

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getReturnType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    sget-object v1, Lnet/bytebuddy/jar/asm/Type;->VOID_TYPE:Lnet/bytebuddy/jar/asm/Type;

    if-ne p1, v1, :cond_2

    const-string p1, ")V"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public mapModuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public mapPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public mapRecordComponentName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public mapSignature(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lnet/bytebuddy/jar/asm/signature/SignatureReader;

    invoke-direct {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;-><init>()V

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->createSignatureRemapper(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->acceptType(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->accept(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V

    :goto_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapTypes([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :cond_0
    aput-object v2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    move-object p1, v0

    :cond_3
    return-object p1
.end method

.method public mapValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/bytebuddy/jar/asm/Type;

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Lnet/bytebuddy/jar/asm/Type;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Handle;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Lnet/bytebuddy/jar/asm/Handle;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getTag()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    new-instance v0, Lnet/bytebuddy/jar/asm/Handle;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getTag()I

    move-result v3

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v5, v6}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v5, v6}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v5, v2

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v6, v1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->isInterface()Z

    move-result v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_4
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    if-eqz v0, :cond_6

    check-cast p1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethodArgumentCount()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Object;

    :goto_2
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethodArgument(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapInvokeDynamicMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethod()Lnet/bytebuddy/jar/asm/Handle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/jar/asm/Handle;

    invoke-direct {v1, v3, v0, p1, v2}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    return-object v1

    :cond_6
    return-object p1
.end method
