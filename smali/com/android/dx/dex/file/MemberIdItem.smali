.class public abstract Lcom/android/dx/dex/file/MemberIdItem;
.super Lcom/android/dx/dex/file/IdItem;
.source "SourceFile"


# instance fields
.field private final cst:Lx1/x;


# direct methods
.method public constructor <init>(Lx1/x;)V
    .locals 1

    invoke-virtual {p1}, Lx1/x;->n()Lx1/e0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dx/dex/file/IdItem;-><init>(Lx1/e0;)V

    iput-object p1, p0, Lcom/android/dx/dex/file/MemberIdItem;->cst:Lx1/x;

    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/dx/dex/file/IdItem;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->i()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MemberIdItem;->getRef()Lx1/x;

    move-result-object v0

    invoke-virtual {v0}, Lx1/x;->u()Lx1/a0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/a0;->x()Lx1/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lx1/d0;)Lcom/android/dx/dex/file/StringIdItem;

    return-void
.end method

.method public final getRef()Lx1/x;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/MemberIdItem;->cst:Lx1/x;

    return-object v0
.end method

.method public abstract getTypoidIdx(Lcom/android/dx/dex/file/DexFile;)I
.end method

.method public abstract getTypoidName()Ljava/lang/String;
.end method

.method public writeSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final writeTo(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->i()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/file/MemberIdItem;->cst:Lx1/x;

    invoke-virtual {v2}, Lx1/x;->u()Lx1/a0;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/dx/dex/file/IdItem;->getDefiningClass()Lx1/e0;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/dx/dex/file/TypeIdsSection;->indexOf(Lx1/e0;)I

    move-result v0

    invoke-virtual {v2}, Lx1/a0;->x()Lx1/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lx1/d0;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/MemberIdItem;->getTypoidIdx(Lcom/android/dx/dex/file/DexFile;)I

    move-result p1

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/IndexedItem;->indexString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/dx/dex/file/MemberIdItem;->cst:Lx1/x;

    invoke-virtual {v3}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p2, v3, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  class_idx: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {p2, v4, v2}, Lb2/a;->d(ILjava/lang/String;)V

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MemberIdItem;->getTypoidName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "  %-10s %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lb2/a;->d(ILjava/lang/String;)V

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  name_idx:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lb2/q;->writeShort(I)V

    invoke-interface {p2, p1}, Lb2/q;->writeShort(I)V

    invoke-interface {p2, v1}, Lb2/q;->writeInt(I)V

    return-void
.end method
