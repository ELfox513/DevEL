.class public abstract Lcom/android/dx/dex/code/FixedSizeInsn;
.super Lcom/android/dx/dex/code/DalvInsn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/code/DalvInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    return-void
.end method


# virtual methods
.method public final codeSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/InsnFormat;->codeSize()I

    move-result v0

    return v0
.end method

.method public final listingString0(Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/dx/dex/code/InsnFormat;->listingString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw1/r;->K(I)Lw1/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/DalvInsn;->withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object p1

    return-object p1
.end method

.method public final writeTo(Lb2/a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/dx/dex/code/InsnFormat;->writeTo(Lb2/a;Lcom/android/dx/dex/code/DalvInsn;)V

    return-void
.end method
