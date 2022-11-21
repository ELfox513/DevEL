.class public final Lcom/android/dx/dex/file/CodeItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "SourceFile"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final HEADER_SIZE:I = 0x10


# instance fields
.field private catches:Lcom/android/dx/dex/file/CatchStructs;

.field private final code:Lcom/android/dx/dex/code/DalvCode;

.field private debugInfo:Lcom/android/dx/dex/file/DebugInfoItem;

.field private final isStatic:Z

.field private final ref:Lx1/z;

.field private final throwsList:Ly1/e;


# direct methods
.method public constructor <init>(Lx1/z;Lcom/android/dx/dex/code/DalvCode;ZLy1/e;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/android/dx/dex/file/CodeItem;->ref:Lx1/z;

    iput-object p2, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    iput-boolean p3, p0, Lcom/android/dx/dex/file/CodeItem;->isStatic:Z

    iput-object p4, p0, Lcom/android/dx/dex/file/CodeItem;->throwsList:Ly1/e;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/dx/dex/file/CodeItem;->catches:Lcom/android/dx/dex/file/CatchStructs;

    iput-object p1, p0, Lcom/android/dx/dex/file/CodeItem;->debugInfo:Lcom/android/dx/dex/file/DebugInfoItem;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "throwsList == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ref == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getInsSize()I
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->ref:Lx1/z;

    iget-boolean v1, p0, Lcom/android/dx/dex/file/CodeItem;->isStatic:Z

    invoke-virtual {v0, v1}, Lx1/e;->x(Z)I

    move-result v0

    return v0
.end method

.method private getOutsSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsnList;->getOutsSize()I

    move-result v0

    return v0
.end method

.method private getRegistersSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v0

    return v0
.end method

.method private writeCodes(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 1

    iget-object p1, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/dx/dex/code/DalvInsnList;->writeTo(Lb2/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while writing instructions for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->ref:Lx1/z;

    invoke-virtual {v0}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ll1/d;->d(Ljava/lang/Throwable;Ljava/lang/String;)Ll1/d;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->b()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v2}, Lcom/android/dx/dex/code/DalvCode;->hasPositions()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v2}, Lcom/android/dx/dex/code/DalvCode;->hasLocals()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/android/dx/dex/file/DebugInfoItem;

    iget-object v3, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    iget-boolean v4, p0, Lcom/android/dx/dex/file/CodeItem;->isStatic:Z

    iget-object v5, p0, Lcom/android/dx/dex/file/CodeItem;->ref:Lx1/z;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/dx/dex/file/DebugInfoItem;-><init>(Lcom/android/dx/dex/code/DalvCode;ZLx1/z;)V

    iput-object v2, p0, Lcom/android/dx/dex/file/CodeItem;->debugInfo:Lcom/android/dx/dex/file/DebugInfoItem;

    invoke-virtual {v0, v2}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->hasAnyCatches()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getCatchTypes()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly1/c;

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Ly1/c;)Lcom/android/dx/dex/file/TypeIdItem;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/dx/dex/file/CatchStructs;

    iget-object v1, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-direct {v0, v1}, Lcom/android/dx/dex/file/CatchStructs;-><init>(Lcom/android/dx/dex/code/DalvCode;)V

    iput-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->catches:Lcom/android/dx/dex/file/CatchStructs;

    :cond_3
    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getInsnConstants()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1/a;

    invoke-virtual {p1, v1}, Lcom/android/dx/dex/file/DexFile;->l(Lx1/a;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dx/dex/file/CodeItem;->ref:Lx1/z;

    invoke-virtual {v1}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/dx/dex/file/CodeItem;->getRegistersSize()I

    move-result v2

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; ins: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/dx/dex/file/CodeItem;->getInsSize()I

    move-result v2

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; outs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/dx/dex/file/CodeItem;->getOutsSize()I

    move-result v2

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/Writer;Ljava/lang/String;Z)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->catches:Lcom/android/dx/dex/file/CatchStructs;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "catches"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->catches:Lcom/android/dx/dex/file/CatchStructs;

    invoke-virtual {v0, p1, p3}, Lcom/android/dx/dex/file/CatchStructs;->debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->debugInfo:Lcom/android/dx/dex/file/DebugInfoItem;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "debug info"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/dx/dex/file/CodeItem;->debugInfo:Lcom/android/dx/dex/file/DebugInfoItem;

    invoke-virtual {p2, p1, p3}, Lcom/android/dx/dex/file/DebugInfoItem;->debugPrint(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getRef()Lx1/z;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->ref:Lx1/z;

    return-object v0
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public place0(Lcom/android/dx/dex/file/Section;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/dx/dex/file/Section;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object p1

    iget-object p2, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    new-instance v0, Lcom/android/dx/dex/file/CodeItem$1;

    invoke-direct {v0, p0, p1}, Lcom/android/dx/dex/file/CodeItem$1;-><init>(Lcom/android/dx/dex/file/CodeItem;Lcom/android/dx/dex/file/DexFile;)V

    invoke-virtual {p2, v0}, Lcom/android/dx/dex/code/DalvCode;->assignIndices(Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    iget-object p2, p0, Lcom/android/dx/dex/file/CodeItem;->catches:Lcom/android/dx/dex/file/CatchStructs;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/dx/dex/file/CatchStructs;->encode(Lcom/android/dx/dex/file/DexFile;)V

    iget-object p1, p0, Lcom/android/dx/dex/file/CodeItem;->catches:Lcom/android/dx/dex/file/CatchStructs;

    invoke-virtual {p1}, Lcom/android/dx/dex/file/CatchStructs;->writeSize()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result p2

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    :cond_1
    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x10

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/dx/dex/file/OffsettedItem;->setWriteSize(I)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->ref:Lx1/z;

    invoke-virtual {v0}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodeItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/dx/dex/file/CodeItem;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo0(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V
    .locals 13

    invoke-interface {p2}, Lb2/a;->j()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/dx/dex/file/CodeItem;->getRegistersSize()I

    move-result v1

    invoke-direct {p0}, Lcom/android/dx/dex/file/CodeItem;->getOutsSize()I

    move-result v2

    invoke-direct {p0}, Lcom/android/dx/dex/file/CodeItem;->getInsSize()I

    move-result v3

    iget-object v4, p0, Lcom/android/dx/dex/file/CodeItem;->code:Lcom/android/dx/dex/code/DalvCode;

    invoke-virtual {v4}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/dx/dex/file/CodeItem;->catches:Lcom/android/dx/dex/file/CatchStructs;

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lcom/android/dx/dex/file/CatchStructs;->triesSize()I

    move-result v7

    :goto_1
    iget-object v8, p0, Lcom/android/dx/dex/file/CodeItem;->debugInfo:Lcom/android/dx/dex/file/DebugInfoItem;

    if-nez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v8

    :goto_2
    const/4 v9, 0x2

    if-eqz v0, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/dx/dex/file/CodeItem;->ref:Lx1/z;

    invoke-virtual {v11}, Lx1/x;->toHuman()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  registers_size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ins_size:       "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  outs_size:      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  tries_size:     "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lb2/g;->g(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  debug_off:      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-interface {p2, v11, v10}, Lb2/a;->d(ILjava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  insns_size:     "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lb2/g;->j(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v11, v10}, Lb2/a;->d(ILjava/lang/String;)V

    iget-object v10, p0, Lcom/android/dx/dex/file/CodeItem;->throwsList:Ly1/e;

    invoke-interface {v10}, Ly1/e;->size()I

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  throws "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/dx/dex/file/CodeItem;->throwsList:Ly1/e;

    invoke-static {v11}, Ly1/b;->J(Ly1/e;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v6, v10}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_3
    invoke-interface {p2, v1}, Lb2/q;->writeShort(I)V

    invoke-interface {p2, v3}, Lb2/q;->writeShort(I)V

    invoke-interface {p2, v2}, Lb2/q;->writeShort(I)V

    invoke-interface {p2, v7}, Lb2/q;->writeShort(I)V

    invoke-interface {p2, v8}, Lb2/q;->writeInt(I)V

    invoke-interface {p2, v4}, Lb2/q;->writeInt(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/dx/dex/file/CodeItem;->writeCodes(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V

    iget-object v1, p0, Lcom/android/dx/dex/file/CodeItem;->catches:Lcom/android/dx/dex/file/CatchStructs;

    if-eqz v1, :cond_6

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    const-string v1, "  padding: 0"

    invoke-interface {p2, v9, v1}, Lb2/a;->d(ILjava/lang/String;)V

    :cond_4
    invoke-interface {p2, v6}, Lb2/q;->writeShort(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/dx/dex/file/CodeItem;->catches:Lcom/android/dx/dex/file/CatchStructs;

    invoke-virtual {v1, p1, p2}, Lcom/android/dx/dex/file/CatchStructs;->writeTo(Lcom/android/dx/dex/file/DexFile;Lb2/a;)V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->debugInfo:Lcom/android/dx/dex/file/DebugInfoItem;

    if-eqz v0, :cond_7

    const-string v0, "  debug info"

    invoke-interface {p2, v6, v0}, Lb2/a;->d(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem;->debugInfo:Lcom/android/dx/dex/file/DebugInfoItem;

    const-string v1, "    "

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/dx/dex/file/DebugInfoItem;->annotateTo(Lcom/android/dx/dex/file/DexFile;Lb2/a;Ljava/lang/String;)V

    :cond_7
    return-void
.end method
