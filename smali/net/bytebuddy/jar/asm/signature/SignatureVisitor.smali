.class public abstract Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTENDS:C = '+'

.field public static final INSTANCEOF:C = '='

.field public static final SUPER:C = '-'


# instance fields
.field public final api:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x90000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x10a0000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported api "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->api:I

    return-void
.end method


# virtual methods
.method public visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitBaseType(C)V
    .locals 0

    return-void
.end method

.method public visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitTypeArgument()V
    .locals 0

    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
