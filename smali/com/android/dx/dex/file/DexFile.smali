.class public final Lcom/android/dx/dex/file/DexFile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/file/DexFile$Storage;
    }
.end annotation


# instance fields
.field private final byteData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

.field private final classData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

.field private final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private dumpWidth:I

.field private final fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

.field private fileSize:I

.field private final header:Lcom/android/dx/dex/file/HeaderSection;

.field private final map:Lcom/android/dx/dex/file/MixedItemSection;

.field private final methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

.field private final methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

.field private final protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

.field private final sections:[Lcom/android/dx/dex/file/Section;

.field private final stringData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final stringIds:Lcom/android/dx/dex/file/StringIdsSection;

.field private final typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

.field private final typeLists:Lcom/android/dx/dex/file/MixedItemSection;

.field private final wordData:Lcom/android/dx/dex/file/MixedItemSection;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/DexOptions;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    new-instance v2, Lcom/android/dx/dex/file/HeaderSection;

    invoke-direct {v2, v0}, Lcom/android/dx/dex/file/HeaderSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v2, v0, Lcom/android/dx/dex/file/DexFile;->header:Lcom/android/dx/dex/file/HeaderSection;

    new-instance v3, Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v4, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-direct {v3, v5, v0, v6, v4}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v3, v0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    new-instance v7, Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v8, Lcom/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    const-string v9, "word_data"

    invoke-direct {v7, v9, v0, v6, v8}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v7, v0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    new-instance v9, Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v10, Lcom/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    const-string v11, "string_data"

    const/4 v12, 0x1

    invoke-direct {v9, v11, v0, v12, v10}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v9, v0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    new-instance v10, Lcom/android/dx/dex/file/MixedItemSection;

    invoke-direct {v10, v5, v0, v12, v4}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v10, v0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    new-instance v11, Lcom/android/dx/dex/file/MixedItemSection;

    const-string v13, "byte_data"

    invoke-direct {v11, v13, v0, v12, v8}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v11, v0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    new-instance v8, Lcom/android/dx/dex/file/StringIdsSection;

    invoke-direct {v8, v0}, Lcom/android/dx/dex/file/StringIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v8, v0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    new-instance v13, Lcom/android/dx/dex/file/TypeIdsSection;

    invoke-direct {v13, v0}, Lcom/android/dx/dex/file/TypeIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v13, v0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    new-instance v14, Lcom/android/dx/dex/file/ProtoIdsSection;

    invoke-direct {v14, v0}, Lcom/android/dx/dex/file/ProtoIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v14, v0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    new-instance v15, Lcom/android/dx/dex/file/FieldIdsSection;

    invoke-direct {v15, v0}, Lcom/android/dx/dex/file/FieldIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v15, v0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    new-instance v5, Lcom/android/dx/dex/file/MethodIdsSection;

    invoke-direct {v5, v0}, Lcom/android/dx/dex/file/MethodIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v5, v0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    new-instance v12, Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-direct {v12, v0}, Lcom/android/dx/dex/file/ClassDefsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v12, v0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    move-object/from16 v16, v10

    new-instance v10, Lcom/android/dx/dex/file/MixedItemSection;

    move-object/from16 v17, v11

    const-string v11, "map"

    invoke-direct {v10, v11, v0, v6, v4}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v10, v0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    const/16 v4, 0x1a

    invoke-virtual {v1, v4}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v1

    const/16 v18, 0xa

    const/16 v19, 0x9

    const/16 v20, 0x8

    const/16 v21, 0x7

    const/16 v22, 0x6

    const/16 v23, 0x5

    const/16 v24, 0x3

    const/16 v25, 0x2

    const/16 v26, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/dx/dex/file/CallSiteIdsSection;

    invoke-direct {v1, v0}, Lcom/android/dx/dex/file/CallSiteIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v1, v0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    new-instance v4, Lcom/android/dx/dex/file/MethodHandlesSection;

    invoke-direct {v4, v0}, Lcom/android/dx/dex/file/MethodHandlesSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v4, v0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    const/16 v11, 0xf

    new-array v11, v11, [Lcom/android/dx/dex/file/Section;

    aput-object v2, v11, v26

    const/4 v2, 0x1

    aput-object v8, v11, v2

    aput-object v13, v11, v25

    aput-object v14, v11, v24

    aput-object v15, v11, v6

    aput-object v5, v11, v23

    aput-object v12, v11, v22

    aput-object v1, v11, v21

    aput-object v4, v11, v20

    aput-object v7, v11, v19

    aput-object v3, v11, v18

    const/16 v1, 0xb

    aput-object v9, v11, v1

    const/16 v1, 0xc

    aput-object v17, v11, v1

    const/16 v1, 0xd

    aput-object v16, v11, v1

    const/16 v1, 0xe

    aput-object v10, v11, v1

    iput-object v11, v0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    iput-object v4, v0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    new-array v1, v1, [Lcom/android/dx/dex/file/Section;

    aput-object v2, v1, v26

    const/4 v2, 0x1

    aput-object v8, v1, v2

    aput-object v13, v1, v25

    aput-object v14, v1, v24

    aput-object v15, v1, v6

    aput-object v5, v1, v23

    aput-object v12, v1, v22

    aput-object v7, v1, v21

    aput-object v3, v1, v20

    aput-object v9, v1, v19

    aput-object v17, v1, v18

    const/16 v2, 0xb

    aput-object v16, v1, v2

    const/16 v2, 0xc

    aput-object v10, v1, v2

    iput-object v1, v0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    :goto_0
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    const/16 v1, 0x4f

    iput v1, v0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    return-void
.end method

.method private static calcChecksum([BI)V
    .locals 2

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    const/16 v1, 0xc

    sub-int/2addr p1, v1

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/zip/Adler32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-byte v0, p1

    const/16 v1, 0x8

    aput-byte v0, p0, v1

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/16 v1, 0x9

    aput-byte v0, p0, v1

    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/16 v1, 0xa

    aput-byte v0, p0, v1

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    const/16 v0, 0xb

    aput-byte p1, p0, v0

    return-void
.end method

.method private static calcSignature([BI)V
    .locals 2

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x20

    sub-int/2addr p1, v1

    invoke-virtual {v0, p0, v1, p1}, Ljava/security/MessageDigest;->update([BII)V

    const/16 p1, 0xc

    const/16 v1, 0x14

    :try_start_1
    invoke-virtual {v0, p0, p1, v1}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p0

    if-ne p0, v1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected digest write: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private toDex0(ZZLcom/android/dx/dex/file/DexFile$Storage;)Lb2/e;
    .locals 8

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/DexOptions;->apiIsSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->header:Lcom/android/dx/dex/file/HeaderSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "...while writing section "

    if-ge v2, v0, :cond_7

    iget-object v5, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    if-eq v5, v6, :cond_2

    iget-object v6, p0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    if-ne v5, v6, :cond_3

    :cond_2
    invoke-virtual {v5}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Lcom/android/dx/dex/file/Section;->setFileOffset(I)I

    move-result v6

    if-lt v6, v3, :cond_6

    :try_start_0
    iget-object v3, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    if-ne v5, v3, :cond_4

    iget-object v7, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    invoke-static {v7, v3}, Lcom/android/dx/dex/file/MapItem;->addMap([Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/MixedItemSection;)V

    iget-object v3, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v3}, Lcom/android/dx/dex/file/Section;->prepare()V

    :cond_4
    instance-of v3, v5, Lcom/android/dx/dex/file/MixedItemSection;

    if-eqz v3, :cond_5

    move-object v3, v5

    check-cast v3, Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v3}, Lcom/android/dx/dex/file/MixedItemSection;->placeItems()V

    :cond_5
    invoke-virtual {v5}, Lcom/android/dx/dex/file/Section;->writeSize()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ll1/d;->d(Ljava/lang/Throwable;Ljava/lang/String;)Ll1/d;

    move-result-object p1

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bogus placement for section "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iput v3, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    if-nez p3, :cond_8

    new-array p3, v3, [B

    goto :goto_2

    :cond_8
    invoke-virtual {p3, v3}, Lcom/android/dx/dex/file/DexFile$Storage;->getStorage(I)[B

    move-result-object p3

    :goto_2
    new-instance v2, Lb2/e;

    invoke-direct {v2, p3}, Lb2/e;-><init>([B)V

    if-eqz p1, :cond_9

    iget v3, p0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    invoke-virtual {v2, v3, p2}, Lb2/e;->m(IZ)V

    :cond_9
    :goto_3
    if-ge v1, v0, :cond_e

    :try_start_1
    iget-object p2, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    aget-object p2, p2, v1

    iget-object v3, p0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    if-eq p2, v3, :cond_a

    iget-object v3, p0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    if-ne p2, v3, :cond_b

    :cond_a
    invoke-virtual {p2}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p2}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    move-result v3

    invoke-virtual {v2}, Lb2/e;->a()I

    move-result v5

    sub-int/2addr v3, v5

    if-ltz v3, :cond_c

    invoke-virtual {v2, v3}, Lb2/e;->e(I)V

    invoke-virtual {p2, v2}, Lcom/android/dx/dex/file/Section;->writeTo(Lb2/a;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    new-instance p1, Ll1/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "excess write of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int p3, v3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ll1/d;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p1

    instance-of p2, p1, Ll1/d;

    if-eqz p2, :cond_d

    check-cast p1, Ll1/d;

    goto :goto_5

    :cond_d
    new-instance p2, Ll1/d;

    invoke-direct {p2, p1}, Ll1/d;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ll1/d;->a(Ljava/lang/String;)V

    throw p1

    :cond_e
    invoke-virtual {v2}, Lb2/e;->a()I

    move-result p2

    iget v0, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    if-ne p2, v0, :cond_10

    invoke-virtual {v2}, Lb2/e;->a()I

    move-result p2

    invoke-static {p3, p2}, Lcom/android/dx/dex/file/DexFile;->calcSignature([BI)V

    invoke-virtual {v2}, Lb2/e;->a()I

    move-result p2

    invoke-static {p3, p2}, Lcom/android/dx/dex/file/DexFile;->calcChecksum([BI)V

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    sget-object p2, Lcom/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

    const-string p3, "\nmethod code index:\n\n"

    invoke-virtual {p1, v2, p2, p3}, Lcom/android/dx/dex/file/MixedItemSection;->writeIndexAnnotation(Lb2/a;Lcom/android/dx/dex/file/ItemType;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->getStatistics()Lcom/android/dx/dex/file/Statistics;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/dx/dex/file/Statistics;->writeAnnotation(Lb2/a;)V

    invoke-virtual {v2}, Lb2/e;->o()V

    :cond_f
    return-object v2

    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "foreshortened write"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method


# virtual methods
.method public a(Lx1/a;)Lcom/android/dx/dex/file/IndexedItem;
    .locals 1

    instance-of v0, p1, Lx1/d0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/StringIdsSection;->get(Lx1/a;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lx1/e0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->get(Lx1/a;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lx1/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/MethodIdsSection;->get(Lx1/a;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lx1/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->get(Lx1/a;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Lx1/m;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lx1/m;

    invoke-virtual {p1}, Lx1/m;->x()Lx1/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lx1/n;)Lcom/android/dx/dex/file/FieldIdItem;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Lx1/b0;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/ProtoIdsSection;->get(Lx1/a;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v0, p1, Lx1/y;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/MethodHandlesSection;->get(Lx1/a;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v0, p1, Lx1/j;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/CallSiteIdsSection;->get(Lx1/a;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public add(Lcom/android/dx/dex/file/ClassDefItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/ClassDefsSection;->add(Lcom/android/dx/dex/file/ClassDefItem;)V

    return-void
.end method

.method public b()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public c()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public d()Lcom/android/dx/dex/file/Section;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public e()Lcom/android/dx/dex/file/Section;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public f()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public g()Lcom/android/dx/dex/file/ProtoIdsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    return-object v0
.end method

.method public getCallSiteIds()Lcom/android/dx/dex/file/CallSiteIdsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->callSiteIds:Lcom/android/dx/dex/file/CallSiteIdsSection;

    return-object v0
.end method

.method public getClassDefs()Lcom/android/dx/dex/file/ClassDefsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    return-object v0
.end method

.method public getClassOrNull(Ljava/lang/String;)Lcom/android/dx/dex/file/ClassDefItem;
    .locals 2

    :try_start_0
    invoke-static {p1}, Ly1/c;->E(Ljava/lang/String;)Ly1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    new-instance v1, Lx1/e0;

    invoke-direct {v1, p1}, Lx1/e0;-><init>(Ly1/c;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/ClassDefsSection;->get(Lx1/a;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/file/ClassDefItem;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDexOptions()Lcom/android/dx/dex/DexOptions;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    return-object v0
.end method

.method public getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    return-object v0
.end method

.method public getFileSize()I
    .locals 2

    iget v0, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file size not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethodHandles()Lcom/android/dx/dex/file/MethodHandlesSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    return-object v0
.end method

.method public getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    return-object v0
.end method

.method public getStatistics()Lcom/android/dx/dex/file/Statistics;
    .locals 5

    new-instance v0, Lcom/android/dx/dex/file/Statistics;

    invoke-direct {v0}, Lcom/android/dx/dex/file/Statistics;-><init>()V

    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Lcom/android/dx/dex/file/Statistics;->addAll(Lcom/android/dx/dex/file/Section;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    return-object v0
.end method

.method public h()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public i()Lcom/android/dx/dex/file/StringIdsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/ClassDefsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public j()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public k()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public l(Lx1/a;)V
    .locals 1

    if-eqz p1, :cond_7

    instance-of v0, p1, Lx1/d0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    check-cast p1, Lx1/d0;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lx1/d0;)Lcom/android/dx/dex/file/StringIdItem;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lx1/e0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    check-cast p1, Lx1/e0;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lx1/e0;)Lcom/android/dx/dex/file/TypeIdItem;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lx1/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    check-cast p1, Lx1/e;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lx1/e;)Lcom/android/dx/dex/file/MethodIdItem;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lx1/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lx1/n;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lx1/n;)Lcom/android/dx/dex/file/FieldIdItem;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lx1/m;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lx1/m;

    invoke-virtual {p1}, Lx1/m;->x()Lx1/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lx1/n;)Lcom/android/dx/dex/file/FieldIdItem;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lx1/b0;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    check-cast p1, Lx1/b0;

    invoke-virtual {p1}, Lx1/b0;->n()Ly1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/ProtoIdsSection;->intern(Ly1/a;)Lcom/android/dx/dex/file/ProtoIdItem;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lx1/y;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodHandles:Lcom/android/dx/dex/file/MethodHandlesSection;

    check-cast p1, Lx1/y;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/MethodHandlesSection;->intern(Lx1/y;)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDumpWidth(I)V
    .locals 1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dumpWidth < 40"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toDex(Ljava/io/Writer;Z)[B
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/android/dx/dex/file/DexFile;->toDex0(ZZLcom/android/dx/dex/file/DexFile$Storage;)Lb2/e;

    move-result-object p2

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Lb2/e;->t(Ljava/io/Writer;)V

    :cond_1
    invoke-virtual {p2}, Lb2/e;->p()[B

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile$Storage;)Lb2/e;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/android/dx/dex/file/DexFile;->toDex0(ZZLcom/android/dx/dex/file/DexFile$Storage;)Lb2/e;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Ljava/io/OutputStream;Lcom/android/dx/dex/file/DexFile$Storage;Ljava/io/Writer;Z)V
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p4, p2}, Lcom/android/dx/dex/file/DexFile;->toDex0(ZZLcom/android/dx/dex/file/DexFile$Storage;)Lb2/e;

    move-result-object p2

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lb2/e;->p()[B

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p2, p3}, Lb2/e;->t(Ljava/io/Writer;)V

    :cond_2
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/io/Writer;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/dx/dex/file/DexFile;->writeTo(Ljava/io/OutputStream;Lcom/android/dx/dex/file/DexFile$Storage;Ljava/io/Writer;Z)V

    return-void
.end method
