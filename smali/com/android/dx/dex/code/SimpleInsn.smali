.class public final Lcom/android/dx/dex/code/SimpleInsn;
.super Lcom/android/dx/dex/code/FixedSizeInsn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    return-void
.end method


# virtual methods
.method public argString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    new-instance v0, Lcom/android/dx/dex/code/SimpleInsn;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lw1/r;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    return-object v0
.end method

.method public withRegisters(Lw1/r;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    new-instance v0, Lcom/android/dx/dex/code/SimpleInsn;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lw1/w;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lw1/w;Lw1/r;)V

    return-object v0
.end method
