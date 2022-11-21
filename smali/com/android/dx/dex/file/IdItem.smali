.class public abstract Lcom/android/dx/dex/file/IdItem;
.super Lcom/android/dx/dex/file/IndexedItem;
.source "SourceFile"


# instance fields
.field private final type:Lx1/e0;


# direct methods
.method public constructor <init>(Lx1/e0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/dx/dex/file/IndexedItem;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/dx/dex/file/IdItem;->type:Lx1/e0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/IdItem;->type:Lx1/e0;

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lx1/e0;)Lcom/android/dx/dex/file/TypeIdItem;

    return-void
.end method

.method public final getDefiningClass()Lx1/e0;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/IdItem;->type:Lx1/e0;

    return-object v0
.end method
