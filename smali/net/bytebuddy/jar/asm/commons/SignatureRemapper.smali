.class public Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;
.super Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
.source "SourceFile"


# instance fields
.field private classNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

.field private final signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;


# direct methods
.method public constructor <init>(ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;-><init>(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->classNames:Ljava/util/ArrayList;

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V
    .locals 1

    const/high16 v0, 0x90000

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;-><init>(ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;Lnet/bytebuddy/jar/asm/commons/Remapper;)V

    return-void
.end method


# virtual methods
.method public visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitBaseType(C)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitBaseType(C)V

    return-void
.end method

.method public visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->classNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    return-void
.end method

.method public visitEnd()V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitEnd()V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->classNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitFormalTypeParameter(Ljava/lang/String;)V

    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->classNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->classNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v3, v0}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->remapper:Lnet/bytebuddy/jar/asm/commons/Remapper;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    return-void
.end method

.method public visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    return-object p0
.end method

.method public visitTypeArgument()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument()V

    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/commons/SignatureRemapper;->signatureVisitor:Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    return-void
.end method
