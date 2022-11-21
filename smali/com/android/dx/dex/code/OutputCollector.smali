.class public final Lcom/android/dx/dex/code/OutputCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final finisher:Lcom/android/dx/dex/code/OutputFinisher;

.field private suffix:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/DexOptions;IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/dx/dex/code/OutputFinisher;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/android/dx/dex/code/OutputFinisher;-><init>(Lcom/android/dx/dex/DexOptions;III)V

    iput-object v0, p0, Lcom/android/dx/dex/code/OutputCollector;->finisher:Lcom/android/dx/dex/code/OutputFinisher;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    return-void
.end method

.method private appendSuffixToOutput()V
    .locals 4

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/dx/dex/code/OutputCollector;->finisher:Lcom/android/dx/dex/code/OutputFinisher;

    iget-object v3, p0, Lcom/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/DalvInsn;

    invoke-virtual {v2, v3}, Lcom/android/dx/dex/code/OutputFinisher;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputCollector;->finisher:Lcom/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    return-void
.end method

.method public addSuffix(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(I)Lcom/android/dx/dex/code/DalvInsn;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputCollector;->finisher:Lcom/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/OutputFinisher;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputCollector;->finisher:Lcom/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFinisher()Lcom/android/dx/dex/code/OutputFinisher;
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputCollector;->suffix:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputCollector;->appendSuffixToOutput()V

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputCollector;->finisher:Lcom/android/dx/dex/code/OutputFinisher;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reverseBranch(ILcom/android/dx/dex/code/CodeAddress;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputCollector;->finisher:Lcom/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0, p1, p2}, Lcom/android/dx/dex/code/OutputFinisher;->reverseBranch(ILcom/android/dx/dex/code/CodeAddress;)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/code/OutputCollector;->finisher:Lcom/android/dx/dex/code/OutputFinisher;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/OutputFinisher;->size()I

    move-result v0

    return v0
.end method
