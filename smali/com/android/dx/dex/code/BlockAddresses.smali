.class public final Lcom/android/dx/dex/code/BlockAddresses;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ends:[Lcom/android/dx/dex/code/CodeAddress;

.field private final lasts:[Lcom/android/dx/dex/code/CodeAddress;

.field private final starts:[Lcom/android/dx/dex/code/CodeAddress;


# direct methods
.method public constructor <init>(Lw1/u;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object v0

    invoke-virtual {v0}, Lb2/m;->z()I

    move-result v0

    new-array v1, v0, [Lcom/android/dx/dex/code/CodeAddress;

    iput-object v1, p0, Lcom/android/dx/dex/code/BlockAddresses;->starts:[Lcom/android/dx/dex/code/CodeAddress;

    new-array v1, v0, [Lcom/android/dx/dex/code/CodeAddress;

    iput-object v1, p0, Lcom/android/dx/dex/code/BlockAddresses;->lasts:[Lcom/android/dx/dex/code/CodeAddress;

    new-array v0, v0, [Lcom/android/dx/dex/code/CodeAddress;

    iput-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->ends:[Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/BlockAddresses;->setupArrays(Lw1/u;)V

    return-void
.end method

.method private setupArrays(Lw1/u;)V
    .locals 8

    invoke-virtual {p1}, Lw1/u;->b()Lw1/c;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lw1/c;->F(I)Lw1/b;

    move-result-object v3

    invoke-virtual {v3}, Lw1/b;->a()I

    move-result v4

    invoke-virtual {v3}, Lw1/b;->d()Lw1/i;

    move-result-object v5

    invoke-virtual {v5, v1}, Lw1/i;->A(I)Lw1/h;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dx/dex/code/BlockAddresses;->starts:[Lcom/android/dx/dex/code/CodeAddress;

    new-instance v7, Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {v5}, Lw1/h;->j()Lw1/w;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lw1/w;)V

    aput-object v7, v6, v4

    invoke-virtual {v3}, Lw1/b;->e()Lw1/h;

    move-result-object v3

    invoke-virtual {v3}, Lw1/h;->j()Lw1/w;

    move-result-object v3

    iget-object v5, p0, Lcom/android/dx/dex/code/BlockAddresses;->lasts:[Lcom/android/dx/dex/code/CodeAddress;

    new-instance v6, Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v6, v3}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lw1/w;)V

    aput-object v6, v5, v4

    iget-object v5, p0, Lcom/android/dx/dex/code/BlockAddresses;->ends:[Lcom/android/dx/dex/code/CodeAddress;

    new-instance v6, Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v6, v3}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lw1/w;)V

    aput-object v6, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getEnd(I)Lcom/android/dx/dex/code/CodeAddress;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->ends:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getEnd(Lw1/b;)Lcom/android/dx/dex/code/CodeAddress;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->ends:[Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p1}, Lw1/b;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLast(I)Lcom/android/dx/dex/code/CodeAddress;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->lasts:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLast(Lw1/b;)Lcom/android/dx/dex/code/CodeAddress;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->lasts:[Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p1}, Lw1/b;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getStart(I)Lcom/android/dx/dex/code/CodeAddress;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->starts:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getStart(Lw1/b;)Lcom/android/dx/dex/code/CodeAddress;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/BlockAddresses;->starts:[Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p1}, Lw1/b;->a()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method
