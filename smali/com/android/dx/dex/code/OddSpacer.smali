.class public final Lcom/android/dx/dex/code/OddSpacer;
.super Lcom/android/dx/dex/code/VariableSizeInsn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lw1/w;)V
    .locals 1

    sget-object v0, Lw1/r;->a:Lw1/r;

    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/VariableSizeInsn;-><init>(Lw1/w;Lw1/r;)V

    return-void
.end method


# virtual methods
.method public argString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public codeSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public listingString0(Z)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/dx/dex/code/OddSpacer;->codeSize()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "nop // spacer"

    return-object p1
.end method

.method public withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 1

    new-instance p1, Lcom/android/dx/dex/code/OddSpacer;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/dx/dex/code/OddSpacer;-><init>(Lw1/w;)V

    return-object p1
.end method

.method public writeTo(Lb2/a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/OddSpacer;->codeSize()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/android/dx/dex/code/InsnFormat;->codeUnit(II)S

    move-result v0

    invoke-interface {p1, v0}, Lb2/q;->writeShort(I)V

    :cond_0
    return-void
.end method
