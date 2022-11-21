.class public Lnet/bytebuddy/jar/asm/signature/SignatureReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final signatureValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    return-void
.end method

.method private static parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I
    .locals 8

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x46

    if-eq p1, v1, :cond_d

    const/16 v1, 0x4c

    const/16 v2, 0x3b

    const/4 v3, 0x1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x56

    if-eq p1, v1, :cond_d

    const/16 v1, 0x49

    if-eq p1, v1, :cond_d

    const/16 v1, 0x4a

    if-eq p1, v1, :cond_d

    const/16 v1, 0x53

    if-eq p1, v1, :cond_d

    const/16 v1, 0x54

    if-eq p1, v1, :cond_1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_d

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_0
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitArrayType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    add-int/2addr p1, v3

    return p1

    :cond_2
    const/4 p1, 0x0

    move v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x2e

    if-eq v0, v7, :cond_9

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    const/16 v7, 0x3c

    if-ne v0, v7, :cond_8

    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_4

    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v0}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    :goto_1
    move v0, v6

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3e

    if-eq v4, v6, :cond_7

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_6

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_5

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_5

    const/16 v4, 0x3d

    invoke-virtual {p2, v4}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v4}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitTypeArgument()V

    goto :goto_2

    :cond_7
    const/4 v4, 0x1

    goto :goto_0

    :cond_8
    move v0, v6

    goto :goto_0

    :cond_9
    :goto_3
    if-nez v4, :cond_b

    add-int/lit8 v4, v6, -0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_a

    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    :cond_b
    :goto_4
    if-ne v0, v2, :cond_c

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitEnd()V

    return v6

    :cond_c
    move v0, v6

    move v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_0

    :cond_d
    :pswitch_0
    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitBaseType(C)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_4

    const/4 v2, 0x2

    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitFormalTypeParameter(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x4c

    if-eq v2, v5, :cond_1

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_1

    const/16 v5, 0x54

    if-ne v2, v5, :cond_2

    :cond_1
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitClassBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v4

    :cond_2
    :goto_0
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInterfaceBound()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v4

    goto :goto_0

    :cond_3
    const/16 v3, 0x3e

    if-ne v4, v3, :cond_0

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_5

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitParameterType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitReturnType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v2

    :goto_2
    if-ge v2, v1, :cond_7

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitExceptionType()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitSuperclass()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v2

    :goto_3
    if-ge v2, v1, :cond_7

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;->visitInterface()Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_3

    :cond_7
    return-void
.end method

.method public acceptType(Lnet/bytebuddy/jar/asm/signature/SignatureVisitor;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lnet/bytebuddy/jar/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILnet/bytebuddy/jar/asm/signature/SignatureVisitor;)I

    return-void
.end method
