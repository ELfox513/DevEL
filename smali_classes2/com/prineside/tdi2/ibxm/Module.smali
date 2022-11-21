.class public Lcom/prineside/tdi2/ibxm/Module;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# instance fields
.field public c2Rate:I

.field public defaultGVol:I

.field public defaultPanning:[I

.field public defaultSpeed:I

.field public defaultTempo:I

.field public fastVolSlides:Z

.field public gain:I

.field public instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

.field public linearPeriods:Z

.field public numChannels:I

.field public numInstruments:I

.field public numPatterns:I

.field public patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

.field public restartPos:I

.field public sequence:[I

.field public sequenceLength:I

.field public songName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/prineside/tdi2/ibxm/Module;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Blank"

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    const/16 v3, 0x40

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultGVol:I

    const/4 v4, 0x6

    iput v4, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultSpeed:I

    const/16 v4, 0x7d

    iput v4, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultTempo:I

    const/16 v4, 0x205f

    iput v4, p0, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Module;->gain:I

    iput-boolean v2, p0, Lcom/prineside/tdi2/ibxm/Module;->linearPeriods:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/ibxm/Module;->fastVolSlides:Z

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    new-array v4, v1, [I

    aput v2, v4, v2

    iput-object v4, p0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    new-array v4, v1, [Lcom/prineside/tdi2/ibxm/Pattern;

    new-instance v5, Lcom/prineside/tdi2/ibxm/Pattern;

    invoke-direct {v5, v0, v3}, Lcom/prineside/tdi2/ibxm/Pattern;-><init>(II)V

    aput-object v5, v4, v2

    iput-object v4, p0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/prineside/tdi2/ibxm/Instrument;

    new-instance v3, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {v3}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    aput-object v3, v0, v2

    new-instance v2, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {v2}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    return-void

    nop

    :array_0
    .array-data 4
        0x33
        0xcc
        0xcc
        0x33
    .end array-data
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ibxm/Data;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Blank"

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    const/16 v3, 0x40

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultGVol:I

    const/4 v4, 0x6

    iput v4, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultSpeed:I

    const/16 v4, 0x7d

    iput v4, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultTempo:I

    const/16 v4, 0x205f

    iput v4, p0, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Module;->gain:I

    iput-boolean v2, p0, Lcom/prineside/tdi2/ibxm/Module;->linearPeriods:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/ibxm/Module;->fastVolSlides:Z

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    new-array v4, v1, [I

    aput v2, v4, v2

    iput-object v4, p0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    new-array v4, v1, [Lcom/prineside/tdi2/ibxm/Pattern;

    new-instance v5, Lcom/prineside/tdi2/ibxm/Pattern;

    invoke-direct {v5, v0, v3}, Lcom/prineside/tdi2/ibxm/Pattern;-><init>(II)V

    aput-object v5, v4, v2

    iput-object v4, p0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/prineside/tdi2/ibxm/Instrument;

    new-instance v4, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {v4}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    aput-object v4, v3, v2

    new-instance v4, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {v4}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    aput-object v4, v3, v1

    iput-object v3, p0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    const/16 v1, 0x11

    invoke-virtual {p1, v2, v1}, Lcom/prineside/tdi2/ibxm/Data;->strLatin1(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Extended Module: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ibxm/Module;->c(Lcom/prineside/tdi2/ibxm/Data;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Lcom/prineside/tdi2/ibxm/Data;->strLatin1(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCRM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ibxm/Module;->b(Lcom/prineside/tdi2/ibxm/Data;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ibxm/Module;->a(Lcom/prineside/tdi2/ibxm/Data;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x33
        0xcc
        0xcc
        0x33
    .end array-data
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ibxm/Module;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Blank"

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    iput v1, p0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    const/16 v3, 0x40

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultGVol:I

    const/4 v4, 0x6

    iput v4, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultSpeed:I

    const/16 v4, 0x7d

    iput v4, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultTempo:I

    const/16 v4, 0x205f

    iput v4, p0, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    iput v3, p0, Lcom/prineside/tdi2/ibxm/Module;->gain:I

    iput-boolean v2, p0, Lcom/prineside/tdi2/ibxm/Module;->linearPeriods:Z

    iput-boolean v2, p0, Lcom/prineside/tdi2/ibxm/Module;->fastVolSlides:Z

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    new-array v4, v1, [I

    aput v2, v4, v2

    iput-object v4, p0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    new-array v4, v1, [Lcom/prineside/tdi2/ibxm/Pattern;

    new-instance v5, Lcom/prineside/tdi2/ibxm/Pattern;

    invoke-direct {v5, v0, v3}, Lcom/prineside/tdi2/ibxm/Pattern;-><init>(II)V

    aput-object v5, v4, v2

    iput-object v4, p0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/prineside/tdi2/ibxm/Instrument;

    new-instance v3, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {v3}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    aput-object v3, v0, v2

    new-instance v3, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {v3}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    iget-object v0, p1, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Module;->defaultGVol:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultGVol:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Module;->defaultSpeed:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultSpeed:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Module;->defaultTempo:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultTempo:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    iget v0, p1, Lcom/prineside/tdi2/ibxm/Module;->gain:I

    iput v0, p0, Lcom/prineside/tdi2/ibxm/Module;->gain:I

    iget-boolean v0, p1, Lcom/prineside/tdi2/ibxm/Module;->linearPeriods:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/ibxm/Module;->linearPeriods:Z

    iget-boolean v0, p1, Lcom/prineside/tdi2/ibxm/Module;->fastVolSlides:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/ibxm/Module;->fastVolSlides:Z

    iget-object v0, p1, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    iget-object v1, p1, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    iget-object v1, p1, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/ibxm/Pattern;

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    array-length v3, v1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    new-instance v4, Lcom/prineside/tdi2/ibxm/Pattern;

    aget-object v1, v1, v0

    invoke-direct {v4, v1}, Lcom/prineside/tdi2/ibxm/Pattern;-><init>(Lcom/prineside/tdi2/ibxm/Pattern;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/tdi2/ibxm/Instrument;

    iput-object v0, p0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    :goto_1
    iget-object v0, p1, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    array-length v1, v0

    if-ge v2, v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    new-instance v3, Lcom/prineside/tdi2/ibxm/Instrument;

    aget-object v0, v0, v2

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>(Lcom/prineside/tdi2/ibxm/Instrument;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x33
        0xcc
        0xcc
        0x33
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/ibxm/Data;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/ibxm/Data;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/ibxm/Module;-><init>(Lcom/prineside/tdi2/ibxm/Data;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/ibxm/Data;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/ibxm/Data;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/ibxm/Module;-><init>(Lcom/prineside/tdi2/ibxm/Data;)V

    return-void
.end method

.method public static fromZipInputStream(Ljava/io/InputStream;)Lcom/prineside/tdi2/ibxm/Module;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    long-to-int p0, v2

    new-array p0, p0, [B

    sget-object v2, Lcom/prineside/tdi2/ibxm/Module;->a:[B

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    :try_start_1
    sget-object v5, Lcom/prineside/tdi2/ibxm/Module;->a:[B

    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-static {v5, v3, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    new-instance v2, Lcom/prineside/tdi2/ibxm/Module;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ibxm/Module;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string v1, "Module"

    const-string v2, "failed to load module from zip input stream"

    invoke-static {v1, v2, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/prineside/tdi2/ibxm/Data;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/ibxm/Data;->strLatin1(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    const/16 v3, 0x3b6

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    iput v3, v0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    const/16 v3, 0x3b7

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x7f

    iput v3, v0, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    iget v4, v0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    if-lt v3, v4, :cond_0

    iput v2, v0, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    :cond_0
    const/16 v3, 0x80

    new-array v4, v3, [I

    iput-object v4, v0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    add-int/lit16 v5, v4, 0x3b8

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v5

    and-int/lit8 v5, v5, 0x7f

    iget-object v6, v0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    aput v5, v6, v4

    iget v6, v0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    if-lt v5, v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0x43a

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ibxm/Data;->ubeShort(I)I

    move-result v4

    const/16 v5, 0x4348

    const/16 v6, 0x20

    const/16 v7, 0x20ab

    const/16 v8, 0x438

    const/16 v9, 0xa

    const/16 v10, 0x40

    const/4 v11, 0x4

    if-eq v4, v5, :cond_6

    const/16 v5, 0x484e

    if-eq v4, v5, :cond_5

    const/16 v5, 0x4b21

    if-eq v4, v5, :cond_4

    const/16 v5, 0x4b2e

    if-eq v4, v5, :cond_4

    const/16 v5, 0x5434

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MOD Format not recognised!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    iput v11, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    const/16 v4, 0x205f

    iput v4, v0, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    iput v10, v0, Lcom/prineside/tdi2/ibxm/Module;->gain:I

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x30

    iput v4, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    iput v7, v0, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    iput v6, v0, Lcom/prineside/tdi2/ibxm/Module;->gain:I

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0xa

    iput v4, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    const/16 v5, 0x439

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    iput v4, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    iput v7, v0, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    iput v6, v0, Lcom/prineside/tdi2/ibxm/Module;->gain:I

    :goto_2
    iput v10, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultGVol:I

    const/4 v4, 0x6

    iput v4, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultSpeed:I

    const/16 v5, 0x7d

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultTempo:I

    iget v5, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    const/4 v5, 0x0

    :goto_3
    iget v6, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v5, v6, :cond_9

    iget-object v6, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    const/16 v12, 0x33

    aput v12, v6, v5

    and-int/lit8 v12, v5, 0x3

    if-eq v12, v8, :cond_7

    if-ne v12, v7, :cond_8

    :cond_7
    const/16 v7, 0xcc

    aput v7, v6, v5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    const/16 v5, 0x43c

    iget v6, v0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    new-array v6, v6, [Lcom/prineside/tdi2/ibxm/Pattern;

    iput-object v6, v0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    const/4 v6, 0x0

    :goto_4
    iget v12, v0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    if-ge v6, v12, :cond_11

    iget-object v12, v0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    new-instance v13, Lcom/prineside/tdi2/ibxm/Pattern;

    iget v14, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    invoke-direct {v13, v14, v10}, Lcom/prineside/tdi2/ibxm/Pattern;-><init>(II)V

    aput-object v13, v12, v6

    const/4 v12, 0x0

    :goto_5
    iget-object v14, v13, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    array-length v14, v14

    if-ge v12, v14, :cond_10

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v14

    and-int/lit8 v14, v14, 0xf

    const/16 v15, 0x8

    shl-int/2addr v14, v15

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v10

    or-int/2addr v10, v14

    mul-int/lit8 v10, v10, 0x4

    const/16 v14, 0x70

    if-lt v10, v14, :cond_a

    const/16 v14, 0x1ac0

    if-gt v10, v14, :cond_a

    shl-int/lit8 v10, v10, 0xf

    div-int/lit16 v10, v10, 0x715d

    invoke-static {v10}, Lcom/prineside/tdi2/ibxm/Channel;->log2(I)I

    move-result v10

    mul-int/lit8 v10, v10, -0xc

    and-int/lit16 v14, v10, 0x4000

    add-int/2addr v10, v14

    shr-int/lit8 v10, v10, 0xf

    iget-object v14, v13, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    int-to-byte v10, v10

    aput-byte v10, v14, v12

    :cond_a
    add-int/lit8 v10, v5, 0x2

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v14

    and-int/lit16 v14, v14, 0xf0

    shr-int/2addr v14, v11

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v16

    and-int/lit8 v16, v16, 0x10

    or-int v14, v14, v16

    iget-object v3, v13, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    add-int/lit8 v17, v12, 0x1

    int-to-byte v14, v14

    aput-byte v14, v3, v17

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v10, v5, 0x3

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v10

    if-nez v10, :cond_c

    const/4 v14, 0x3

    if-lt v3, v14, :cond_b

    if-ne v3, v9, :cond_c

    :cond_b
    const/4 v3, 0x0

    :cond_c
    if-nez v10, :cond_e

    const/4 v14, 0x5

    if-eq v3, v14, :cond_d

    if-ne v3, v4, :cond_e

    :cond_d
    add-int/lit8 v3, v3, -0x2

    :cond_e
    if-ne v3, v15, :cond_f

    iget v14, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    if-ne v14, v11, :cond_f

    const/4 v3, 0x0

    const/4 v10, 0x0

    :cond_f
    iget-object v14, v13, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    add-int/lit8 v15, v12, 0x3

    int-to-byte v3, v3

    aput-byte v3, v14, v15

    add-int/lit8 v3, v12, 0x4

    int-to-byte v10, v10

    aput-byte v10, v14, v3

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v12, v12, 0x5

    const/16 v3, 0x80

    const/16 v10, 0x40

    goto/16 :goto_5

    :cond_10
    add-int/lit8 v6, v6, 0x1

    const/16 v3, 0x80

    const/16 v10, 0x40

    goto/16 :goto_4

    :cond_11
    const/16 v3, 0x1f

    iput v3, v0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    add-int/2addr v3, v8

    new-array v3, v3, [Lcom/prineside/tdi2/ibxm/Instrument;

    iput-object v3, v0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    new-instance v4, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {v4}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    aput-object v4, v3, v2

    :goto_6
    iget v3, v0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    if-gt v8, v3, :cond_17

    iget-object v3, v0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    new-instance v4, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {v4}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    aput-object v4, v3, v8

    iget-object v3, v4, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    aget-object v3, v3, v2

    mul-int/lit8 v6, v8, 0x1e

    add-int/lit8 v9, v6, -0xa

    const/16 v10, 0x16

    invoke-virtual {v1, v9, v10}, Lcom/prineside/tdi2/ibxm/Data;->strLatin1(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    add-int/lit8 v4, v6, 0xc

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ibxm/Data;->ubeShort(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v9, v6, 0xe

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v11

    const/16 v10, 0x80

    if-ge v9, v10, :cond_12

    goto :goto_7

    :cond_12
    add-int/lit16 v9, v9, -0x100

    :goto_7
    iput v9, v3, Lcom/prineside/tdi2/ibxm/Sample;->fineTune:I

    add-int/lit8 v9, v6, 0xf

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x7f

    const/16 v12, 0x40

    if-gt v9, v12, :cond_13

    goto :goto_8

    :cond_13
    const/16 v9, 0x40

    :goto_8
    iput v9, v3, Lcom/prineside/tdi2/ibxm/Sample;->volume:I

    const/4 v9, -0x1

    iput v9, v3, Lcom/prineside/tdi2/ibxm/Sample;->panning:I

    add-int/lit8 v9, v6, 0x10

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->ubeShort(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v6, v6, 0x12

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ibxm/Data;->ubeShort(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int v13, v9, v6

    if-le v13, v4, :cond_15

    div-int/lit8 v13, v9, 0x2

    add-int v14, v13, v6

    if-gt v14, v4, :cond_14

    move v9, v13

    goto :goto_9

    :cond_14
    sub-int v6, v4, v9

    :cond_15
    :goto_9
    if-ge v6, v11, :cond_16

    move v9, v4

    const/4 v6, 0x0

    :cond_16
    invoke-virtual {v1, v5, v4}, Lcom/prineside/tdi2/ibxm/Data;->samS8(II)[S

    move-result-object v13

    invoke-virtual {v3, v13, v9, v6, v2}, Lcom/prineside/tdi2/ibxm/Sample;->setSampleData([SIIZ)V

    add-int/2addr v5, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_17
    return-void
.end method

.method public final b(Lcom/prineside/tdi2/ibxm/Data;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/ibxm/Data;->strCp850(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    const/16 v5, 0x22

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    const/16 v5, 0x24

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    const/16 v5, 0x26

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    const/16 v6, 0x28

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v6

    const/16 v7, 0x40

    and-int/2addr v5, v7

    const/4 v8, 0x1

    if-eq v5, v7, :cond_1

    const/16 v5, 0x1300

    if-ne v6, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v0, Lcom/prineside/tdi2/ibxm/Module;->fastVolSlides:Z

    const/16 v5, 0x2a

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    if-ne v5, v8, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ibxm/Data;->uleInt(I)I

    move-result v6

    const v9, 0x4d524353    # 2.2047672E8f

    if-ne v6, v9, :cond_28

    const/16 v6, 0x30

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v6

    iput v6, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultGVol:I

    const/16 v6, 0x31

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v6

    iput v6, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultSpeed:I

    const/16 v6, 0x32

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v6

    iput v6, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultTempo:I

    const/16 v6, 0x20ab

    iput v6, v0, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    const/16 v6, 0x33

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x7f

    iput v9, v0, Lcom/prineside/tdi2/ibxm/Module;->gain:I

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v6

    const/16 v9, 0x80

    and-int/2addr v6, v9

    if-ne v6, v9, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    const/16 v10, 0x35

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v10

    const/16 v11, 0xfc

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    iput v2, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    new-array v11, v4, [I

    const/4 v12, 0x0

    :goto_5
    const/4 v13, -0x1

    const/16 v14, 0x10

    if-ge v12, v4, :cond_6

    aput v13, v11, v12

    add-int/lit8 v13, v12, 0x40

    invoke-virtual {v1, v13}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v13

    if-ge v13, v14, :cond_5

    iget v13, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    aput v13, v11, v12

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_6
    iget v12, v0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    new-array v12, v12, [I

    iput-object v12, v0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    const/4 v12, 0x0

    :goto_6
    iget v15, v0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    if-ge v12, v15, :cond_7

    iget-object v15, v0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    add-int/lit8 v9, v12, 0x60

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    aput v9, v15, v12

    add-int/lit8 v12, v12, 0x1

    const/16 v9, 0x80

    goto :goto_6

    :cond_7
    add-int/lit8 v15, v15, 0x60

    iget v9, v0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    add-int/2addr v9, v8

    new-array v9, v9, [Lcom/prineside/tdi2/ibxm/Instrument;

    iput-object v9, v0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    new-instance v12, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {v12}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    aput-object v12, v9, v2

    const/4 v9, 0x1

    :goto_7
    iget v12, v0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    const/16 v17, 0xc

    const/4 v4, 0x4

    if-gt v9, v12, :cond_14

    iget-object v12, v0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    new-instance v7, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {v7}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    aput-object v7, v12, v9

    iget-object v12, v7, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    aget-object v12, v12, v2

    invoke-virtual {v1, v15}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v18

    shl-int/lit8 v2, v18, 0x4

    add-int/lit8 v15, v15, 0x2

    add-int/lit8 v14, v2, 0x30

    invoke-virtual {v1, v14, v3}, Lcom/prineside/tdi2/ibxm/Data;->strCp850(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v7

    if-eq v7, v8, :cond_8

    :goto_8
    move/from16 v21, v10

    move/from16 v20, v15

    const/4 v8, 0x0

    goto/16 :goto_c

    :cond_8
    add-int/lit8 v7, v2, 0x4c

    invoke-virtual {v1, v7}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v7

    const/16 v14, 0x4353

    if-eq v7, v14, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v7, v2, 0xd

    invoke-virtual {v1, v7}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x14

    add-int/lit8 v14, v2, 0xe

    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v14

    shl-int/2addr v14, v4

    add-int/2addr v7, v14

    add-int/lit8 v14, v2, 0x10

    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/ibxm/Data;->uleInt(I)I

    move-result v14

    add-int/lit8 v3, v2, 0x14

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ibxm/Data;->uleInt(I)I

    move-result v3

    add-int/lit8 v4, v2, 0x18

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ibxm/Data;->uleInt(I)I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v8, v2, 0x1c

    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v8

    iput v8, v12, Lcom/prineside/tdi2/ibxm/Sample;->volume:I

    iput v13, v12, Lcom/prineside/tdi2/ibxm/Sample;->panning:I

    add-int/lit8 v8, v2, 0x1e

    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    goto :goto_9

    :cond_a
    const/4 v8, 0x0

    :goto_9
    add-int/lit8 v13, v2, 0x1f

    invoke-virtual {v1, v13}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v19

    move/from16 v21, v10

    move/from16 v20, v15

    const/4 v15, 0x1

    and-int/lit8 v10, v19, 0x1

    if-ne v10, v15, :cond_b

    const/4 v10, 0x1

    goto :goto_a

    :cond_b
    const/4 v10, 0x0

    :goto_a
    add-int v15, v3, v4

    if-le v15, v14, :cond_c

    sub-int v4, v14, v3

    :cond_c
    const/4 v15, 0x1

    if-lt v4, v15, :cond_d

    if-nez v10, :cond_e

    :cond_d
    move v3, v14

    const/4 v4, 0x0

    :cond_e
    invoke-virtual {v1, v13}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    invoke-virtual {v1, v13}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v10

    const/4 v13, 0x4

    and-int/2addr v10, v13

    if-ne v10, v13, :cond_f

    const/4 v10, 0x1

    goto :goto_b

    :cond_f
    const/4 v10, 0x0

    :goto_b
    if-nez v8, :cond_13

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ibxm/Data;->uleInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/prineside/tdi2/ibxm/Channel;->log2(I)I

    move-result v2

    iget v8, v0, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    invoke-static {v8}, Lcom/prineside/tdi2/ibxm/Channel;->log2(I)I

    move-result v8

    sub-int/2addr v2, v8

    mul-int/lit8 v2, v2, 0xc

    shr-int/lit8 v8, v2, 0xf

    iput v8, v12, Lcom/prineside/tdi2/ibxm/Sample;->relNote:I

    and-int/lit16 v2, v2, 0x7fff

    const/16 v8, 0x8

    shr-int/2addr v2, v8

    iput v2, v12, Lcom/prineside/tdi2/ibxm/Sample;->fineTune:I

    if-eqz v10, :cond_11

    if-eqz v5, :cond_10

    invoke-virtual {v1, v7, v14}, Lcom/prineside/tdi2/ibxm/Data;->samS16(II)[S

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v12, v2, v3, v4, v8}, Lcom/prineside/tdi2/ibxm/Sample;->setSampleData([SIIZ)V

    goto :goto_c

    :cond_10
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v14}, Lcom/prineside/tdi2/ibxm/Data;->samU16(II)[S

    move-result-object v2

    invoke-virtual {v12, v2, v3, v4, v8}, Lcom/prineside/tdi2/ibxm/Sample;->setSampleData([SIIZ)V

    goto :goto_c

    :cond_11
    const/4 v8, 0x0

    if-eqz v5, :cond_12

    invoke-virtual {v1, v7, v14}, Lcom/prineside/tdi2/ibxm/Data;->samS8(II)[S

    move-result-object v2

    invoke-virtual {v12, v2, v3, v4, v8}, Lcom/prineside/tdi2/ibxm/Sample;->setSampleData([SIIZ)V

    goto :goto_c

    :cond_12
    invoke-virtual {v1, v7, v14}, Lcom/prineside/tdi2/ibxm/Data;->samU8(II)[S

    move-result-object v2

    invoke-virtual {v12, v2, v3, v4, v8}, Lcom/prineside/tdi2/ibxm/Sample;->setSampleData([SIIZ)V

    :goto_c
    add-int/lit8 v9, v9, 0x1

    move/from16 v15, v20

    move/from16 v10, v21

    const/4 v2, 0x0

    const/16 v3, 0x1c

    const/16 v4, 0x20

    const/16 v7, 0x40

    const/4 v8, 0x1

    const/4 v13, -0x1

    const/16 v14, 0x10

    goto/16 :goto_7

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Packed samples not supported!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    move/from16 v21, v10

    const/4 v8, 0x0

    iget v2, v0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    new-array v2, v2, [Lcom/prineside/tdi2/ibxm/Pattern;

    iput-object v2, v0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    const/4 v2, 0x0

    :goto_d
    iget v3, v0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    if-ge v2, v3, :cond_21

    iget-object v3, v0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    new-instance v4, Lcom/prineside/tdi2/ibxm/Pattern;

    iget v5, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    const/16 v7, 0x40

    invoke-direct {v4, v5, v7}, Lcom/prineside/tdi2/ibxm/Pattern;-><init>(II)V

    aput-object v4, v3, v2

    invoke-virtual {v1, v15}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v3

    const/4 v5, 0x4

    shl-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v7, :cond_20

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v3

    if-nez v3, :cond_15

    add-int/lit8 v5, v5, 0x1

    move v3, v7

    const/16 v7, 0x40

    goto :goto_e

    :cond_15
    and-int/lit8 v9, v3, 0x20

    const/16 v10, 0x20

    if-ne v9, v10, :cond_18

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v7

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    const/16 v12, 0xfe

    if-ge v7, v12, :cond_16

    shr-int/lit8 v12, v7, 0x4

    mul-int/lit8 v12, v12, 0xc

    and-int/lit8 v7, v7, 0xf

    add-int/2addr v12, v7

    const/4 v7, 0x1

    add-int/2addr v12, v7

    move v7, v12

    :cond_16
    const/16 v12, 0xff

    if-ne v7, v12, :cond_17

    move v7, v10

    move v10, v9

    const/4 v9, 0x0

    goto :goto_f

    :cond_17
    move/from16 v22, v9

    move v9, v7

    move v7, v10

    move/from16 v10, v22

    goto :goto_f

    :cond_18
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_f
    and-int/lit8 v12, v3, 0x40

    const/16 v13, 0x40

    if-ne v12, v13, :cond_1a

    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v1, v7}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v7

    and-int/lit8 v7, v7, 0x7f

    const/16 v13, 0x10

    add-int/2addr v7, v13

    const/16 v14, 0x50

    if-le v7, v14, :cond_19

    move v7, v12

    goto :goto_10

    :cond_19
    move/from16 v22, v12

    move v12, v7

    move/from16 v7, v22

    goto :goto_11

    :cond_1a
    const/16 v13, 0x10

    :goto_10
    const/4 v12, 0x0

    :goto_11
    and-int/lit16 v14, v3, 0x80

    const/16 v8, 0x80

    if-ne v14, v8, :cond_1d

    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v1, v7}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v7

    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v14

    const/4 v8, 0x1

    if-lt v7, v8, :cond_1b

    const/16 v8, 0x40

    if-lt v7, v8, :cond_1c

    goto :goto_12

    :cond_1b
    const/16 v8, 0x40

    :goto_12
    const/4 v7, 0x0

    const/4 v14, 0x0

    :cond_1c
    if-lez v7, :cond_1e

    add-int/lit16 v7, v7, 0x80

    goto :goto_13

    :cond_1d
    const/16 v8, 0x40

    move/from16 v16, v7

    const/4 v7, 0x0

    const/4 v14, 0x0

    :cond_1e
    :goto_13
    and-int/lit8 v3, v3, 0x1f

    aget v3, v11, v3

    if-ltz v3, :cond_1f

    iget v8, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    mul-int v8, v8, v5

    add-int/2addr v8, v3

    mul-int/lit8 v8, v8, 0x5

    iget-object v3, v4, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    add-int/lit8 v9, v8, 0x1

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    add-int/lit8 v9, v8, 0x2

    int-to-byte v10, v12

    aput-byte v10, v3, v9

    add-int/lit8 v9, v8, 0x3

    int-to-byte v7, v7

    aput-byte v7, v3, v9

    const/4 v7, 0x4

    add-int/2addr v8, v7

    int-to-byte v9, v14

    aput-byte v9, v3, v8

    goto :goto_14

    :cond_1f
    const/4 v7, 0x4

    :goto_14
    move/from16 v3, v16

    const/16 v7, 0x40

    const/4 v8, 0x0

    goto/16 :goto_e

    :cond_20
    const/4 v7, 0x4

    const/16 v13, 0x10

    add-int/lit8 v15, v15, 0x2

    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x0

    goto/16 :goto_d

    :cond_21
    iget v2, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    const/4 v2, 0x0

    :goto_15
    const/16 v3, 0x20

    if-ge v2, v3, :cond_27

    aget v3, v11, v2

    if-gez v3, :cond_22

    const/16 v4, 0x8

    const/16 v8, 0x20

    goto :goto_18

    :cond_22
    const/4 v3, 0x7

    if-eqz v6, :cond_24

    add-int/lit8 v3, v2, 0x40

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_23

    const/4 v3, 0x3

    goto :goto_16

    :cond_23
    const/16 v3, 0xc

    goto :goto_16

    :cond_24
    const/16 v4, 0x8

    :goto_16
    if-eqz v21, :cond_25

    add-int v5, v15, v2

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v5

    and-int/lit8 v7, v5, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_26

    and-int/lit8 v3, v5, 0xf

    goto :goto_17

    :cond_25
    const/16 v8, 0x20

    :cond_26
    :goto_17
    iget-object v5, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    aget v7, v11, v2

    mul-int/lit8 v3, v3, 0x11

    aput v3, v5, v7

    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_27
    return-void

    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not an S3M file!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    :goto_19
    throw v1

    :goto_1a
    goto :goto_19
.end method

.method public final c(Lcom/prineside/tdi2/ibxm/Data;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v2

    const/16 v3, 0x104

    if-ne v2, v3, :cond_25

    const/16 v2, 0x11

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/ibxm/Data;->strCp850(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    const/16 v2, 0x26

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/ibxm/Data;->strLatin1(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DigiBooster Pro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ibxm/Data;->uleInt(I)I

    move-result v4

    add-int/2addr v4, v3

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    const/16 v5, 0x42

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    const/16 v5, 0x44

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    const/16 v5, 0x46

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    const/16 v5, 0x48

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    const/16 v5, 0x4a

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    const/4 v6, 0x1

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, v0, Lcom/prineside/tdi2/ibxm/Module;->linearPeriods:Z

    iput v3, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultGVol:I

    const/16 v5, 0x4c

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultSpeed:I

    const/16 v5, 0x4e

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultTempo:I

    const/16 v5, 0x20ab

    iput v5, v0, Lcom/prineside/tdi2/ibxm/Module;->c2Rate:I

    iput v3, v0, Lcom/prineside/tdi2/ibxm/Module;->gain:I

    iget v5, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    const/4 v5, 0x0

    :goto_1
    iget v8, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    if-ge v5, v8, :cond_1

    iget-object v8, v0, Lcom/prineside/tdi2/ibxm/Module;->defaultPanning:[I

    const/16 v9, 0x80

    aput v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget v5, v0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    const/4 v5, 0x0

    :goto_2
    iget v8, v0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    if-ge v5, v8, :cond_3

    add-int/lit8 v8, v5, 0x50

    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v8

    iget-object v9, v0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    iget v10, v0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    if-ge v8, v10, :cond_2

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    aput v8, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget v5, v0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    new-array v5, v5, [Lcom/prineside/tdi2/ibxm/Pattern;

    iput-object v5, v0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    const/4 v5, 0x0

    :goto_4
    iget v8, v0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    if-ge v5, v8, :cond_e

    add-int/lit8 v8, v4, 0x4

    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v8

    if-nez v8, :cond_d

    add-int/lit8 v8, v4, 0x5

    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v8

    if-ge v8, v6, :cond_4

    const/4 v8, 0x1

    :cond_4
    iget v9, v0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    mul-int v10, v8, v9

    iget-object v11, v0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    new-instance v12, Lcom/prineside/tdi2/ibxm/Pattern;

    invoke-direct {v12, v9, v8}, Lcom/prineside/tdi2/ibxm/Pattern;-><init>(II)V

    aput-object v12, v11, v5

    add-int/lit8 v8, v4, 0x7

    invoke-virtual {v1, v8}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v8

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ibxm/Data;->uleInt(I)I

    move-result v9

    add-int/2addr v4, v9

    add-int v9, v4, v8

    if-lez v8, :cond_c

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_5
    if-ge v8, v10, :cond_c

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v13

    and-int/lit16 v14, v13, 0x80

    if-nez v14, :cond_5

    const/16 v13, 0x1f

    goto :goto_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    :goto_6
    and-int/lit8 v14, v13, 0x1

    if-lez v14, :cond_6

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ibxm/Data;->sByte(I)B

    move-result v4

    goto :goto_7

    :cond_6
    move v14, v4

    const/4 v4, 0x0

    :goto_7
    iget-object v15, v12, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    add-int/lit8 v16, v11, 0x1

    aput-byte v4, v15, v11

    and-int/lit8 v4, v13, 0x2

    if-lez v4, :cond_7

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/ibxm/Data;->sByte(I)B

    move-result v11

    move v14, v4

    goto :goto_8

    :cond_7
    const/4 v11, 0x0

    :goto_8
    iget-object v4, v12, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    add-int/lit8 v15, v16, 0x1

    aput-byte v11, v4, v16

    and-int/lit8 v4, v13, 0x4

    if-lez v4, :cond_8

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/ibxm/Data;->sByte(I)B

    move-result v11

    move v14, v4

    goto :goto_9

    :cond_8
    const/4 v11, 0x0

    :goto_9
    iget-object v4, v12, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    add-int/lit8 v16, v15, 0x1

    aput-byte v11, v4, v15

    and-int/lit8 v4, v13, 0x8

    if-lez v4, :cond_9

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/ibxm/Data;->sByte(I)B

    move-result v11

    move v14, v4

    goto :goto_a

    :cond_9
    const/4 v11, 0x0

    :goto_a
    and-int/lit8 v4, v13, 0x10

    if-lez v4, :cond_a

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/ibxm/Data;->sByte(I)B

    move-result v13

    goto :goto_b

    :cond_a
    move v4, v14

    const/4 v13, 0x0

    :goto_b
    if-lt v11, v3, :cond_b

    const/4 v11, 0x0

    const/4 v13, 0x0

    :cond_b
    iget-object v14, v12, Lcom/prineside/tdi2/ibxm/Pattern;->data:[B

    add-int/lit8 v15, v16, 0x1

    aput-byte v11, v14, v16

    add-int/lit8 v11, v15, 0x1

    aput-byte v13, v14, v15

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v5, v5, 0x1

    move v4, v9

    goto/16 :goto_4

    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown pattern packing type!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    iget v3, v0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    add-int/2addr v3, v6

    new-array v3, v3, [Lcom/prineside/tdi2/ibxm/Instrument;

    iput-object v3, v0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    new-instance v5, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {v5}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    aput-object v5, v3, v7

    const/4 v3, 0x1

    :goto_c
    iget v5, v0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    if-gt v3, v5, :cond_24

    iget-object v5, v0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    new-instance v8, Lcom/prineside/tdi2/ibxm/Instrument;

    invoke-direct {v8}, Lcom/prineside/tdi2/ibxm/Instrument;-><init>()V

    aput-object v8, v5, v3

    add-int/lit8 v5, v4, 0x4

    const/16 v9, 0x16

    invoke-virtual {v1, v5, v9}, Lcom/prineside/tdi2/ibxm/Data;->strCp850(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/prineside/tdi2/ibxm/Instrument;->name:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1b

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v5

    const/16 v10, 0x10

    if-lez v5, :cond_1c

    iput v5, v8, Lcom/prineside/tdi2/ibxm/Instrument;->numSamples:I

    new-array v11, v5, [Lcom/prineside/tdi2/ibxm/Sample;

    iput-object v11, v8, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    const/4 v11, 0x0

    :goto_d
    const/16 v12, 0x60

    if-ge v11, v12, :cond_f

    iget-object v12, v8, Lcom/prineside/tdi2/ibxm/Instrument;->keyToSample:[I

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v14, v4, 0x21

    add-int/2addr v14, v11

    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v11

    aput v11, v12, v13

    move v11, v13

    goto :goto_d

    :cond_f
    new-instance v11, Lcom/prineside/tdi2/ibxm/Envelope;

    invoke-direct {v11}, Lcom/prineside/tdi2/ibxm/Envelope;-><init>()V

    iput-object v11, v8, Lcom/prineside/tdi2/ibxm/Instrument;->volumeEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    new-array v12, v10, [I

    iput-object v12, v11, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    new-array v12, v10, [I

    iput-object v12, v11, Lcom/prineside/tdi2/ibxm/Envelope;->pointsAmpl:[I

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_e
    const/16 v14, 0xc

    if-ge v12, v14, :cond_11

    add-int/lit16 v14, v4, 0x81

    mul-int/lit8 v15, v12, 0x4

    add-int/2addr v14, v15

    if-eqz v2, :cond_10

    goto :goto_f

    :cond_10
    const/4 v13, 0x0

    :goto_f
    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v15

    add-int/2addr v13, v15

    iget-object v15, v11, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    aput v13, v15, v12

    iget-object v15, v11, Lcom/prineside/tdi2/ibxm/Envelope;->pointsAmpl:[I

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v14

    aput v14, v15, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_11
    new-instance v12, Lcom/prineside/tdi2/ibxm/Envelope;

    invoke-direct {v12}, Lcom/prineside/tdi2/ibxm/Envelope;-><init>()V

    iput-object v12, v8, Lcom/prineside/tdi2/ibxm/Instrument;->panningEnvelope:Lcom/prineside/tdi2/ibxm/Envelope;

    new-array v13, v10, [I

    iput-object v13, v12, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    new-array v13, v10, [I

    iput-object v13, v12, Lcom/prineside/tdi2/ibxm/Envelope;->pointsAmpl:[I

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_10
    if-ge v13, v14, :cond_13

    add-int/lit16 v9, v4, 0xb1

    mul-int/lit8 v17, v13, 0x4

    add-int v9, v9, v17

    if-eqz v2, :cond_12

    goto :goto_11

    :cond_12
    const/4 v15, 0x0

    :goto_11
    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v17

    add-int v15, v15, v17

    iget-object v10, v12, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    aput v15, v10, v13

    iget-object v10, v12, Lcom/prineside/tdi2/ibxm/Envelope;->pointsAmpl:[I

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v9

    aput v9, v10, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v9, 0x16

    const/16 v10, 0x10

    goto :goto_10

    :cond_13
    add-int/lit16 v9, v4, 0xe1

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    iput v9, v11, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    if-le v9, v14, :cond_14

    iput v7, v11, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    :cond_14
    add-int/lit16 v9, v4, 0xe2

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    iput v9, v12, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    if-le v9, v14, :cond_15

    iput v7, v12, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    :cond_15
    iget-object v9, v11, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    add-int/lit16 v10, v4, 0xe3

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v10

    and-int/lit8 v10, v10, 0xf

    aget v9, v9, v10

    iput v9, v11, Lcom/prineside/tdi2/ibxm/Envelope;->sustainTick:I

    iget-object v9, v11, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    add-int/lit16 v10, v4, 0xe4

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v10

    and-int/lit8 v10, v10, 0xf

    aget v9, v9, v10

    iput v9, v11, Lcom/prineside/tdi2/ibxm/Envelope;->loopStartTick:I

    iget-object v9, v11, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    add-int/lit16 v10, v4, 0xe5

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v10

    and-int/lit8 v10, v10, 0xf

    aget v9, v9, v10

    iput v9, v11, Lcom/prineside/tdi2/ibxm/Envelope;->loopEndTick:I

    iget-object v9, v12, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    add-int/lit16 v10, v4, 0xe6

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v10

    and-int/lit8 v10, v10, 0xf

    aget v9, v9, v10

    iput v9, v12, Lcom/prineside/tdi2/ibxm/Envelope;->sustainTick:I

    iget-object v9, v12, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    add-int/lit16 v10, v4, 0xe7

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v10

    and-int/lit8 v10, v10, 0xf

    aget v9, v9, v10

    iput v9, v12, Lcom/prineside/tdi2/ibxm/Envelope;->loopStartTick:I

    iget-object v9, v12, Lcom/prineside/tdi2/ibxm/Envelope;->pointsTick:[I

    add-int/lit16 v10, v4, 0xe8

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v10

    and-int/lit8 v10, v10, 0xf

    aget v9, v9, v10

    iput v9, v12, Lcom/prineside/tdi2/ibxm/Envelope;->loopEndTick:I

    iget v9, v11, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    if-lez v9, :cond_16

    add-int/lit16 v9, v4, 0xe9

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    and-int/2addr v9, v6

    if-lez v9, :cond_16

    const/4 v9, 0x1

    goto :goto_12

    :cond_16
    const/4 v9, 0x0

    :goto_12
    iput-boolean v9, v11, Lcom/prineside/tdi2/ibxm/Envelope;->enabled:Z

    add-int/lit16 v9, v4, 0xe9

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-lez v10, :cond_17

    const/4 v10, 0x1

    goto :goto_13

    :cond_17
    const/4 v10, 0x0

    :goto_13
    iput-boolean v10, v11, Lcom/prineside/tdi2/ibxm/Envelope;->sustain:Z

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_18

    const/4 v9, 0x1

    goto :goto_14

    :cond_18
    const/4 v9, 0x0

    :goto_14
    iput-boolean v9, v11, Lcom/prineside/tdi2/ibxm/Envelope;->looped:Z

    iget v9, v12, Lcom/prineside/tdi2/ibxm/Envelope;->numPoints:I

    if-lez v9, :cond_19

    add-int/lit16 v9, v4, 0xea

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    and-int/2addr v9, v6

    if-lez v9, :cond_19

    const/4 v9, 0x1

    goto :goto_15

    :cond_19
    const/4 v9, 0x0

    :goto_15
    iput-boolean v9, v12, Lcom/prineside/tdi2/ibxm/Envelope;->enabled:Z

    add-int/lit16 v9, v4, 0xea

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-lez v10, :cond_1a

    const/4 v10, 0x1

    goto :goto_16

    :cond_1a
    const/4 v10, 0x0

    :goto_16
    iput-boolean v10, v12, Lcom/prineside/tdi2/ibxm/Envelope;->sustain:Z

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_1b

    const/4 v9, 0x1

    goto :goto_17

    :cond_1b
    const/4 v9, 0x0

    :goto_17
    iput-boolean v9, v12, Lcom/prineside/tdi2/ibxm/Envelope;->looped:Z

    add-int/lit16 v9, v4, 0xeb

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    iput v9, v8, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoType:I

    add-int/lit16 v9, v4, 0xec

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    iput v9, v8, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoSweep:I

    add-int/lit16 v9, v4, 0xed

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    iput v9, v8, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoDepth:I

    add-int/lit16 v9, v4, 0xee

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v9

    iput v9, v8, Lcom/prineside/tdi2/ibxm/Instrument;->vibratoRate:I

    add-int/lit16 v9, v4, 0xef

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uleShort(I)I

    move-result v9

    iput v9, v8, Lcom/prineside/tdi2/ibxm/Instrument;->volumeFadeOut:I

    :cond_1c
    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/ibxm/Data;->uleInt(I)I

    move-result v9

    add-int/2addr v4, v9

    mul-int/lit8 v9, v5, 0x28

    add-int/2addr v9, v4

    const/4 v10, 0x0

    move/from16 v20, v9

    move v9, v4

    move/from16 v4, v20

    :goto_18
    if-ge v10, v5, :cond_23

    iget-object v11, v8, Lcom/prineside/tdi2/ibxm/Instrument;->samples:[Lcom/prineside/tdi2/ibxm/Sample;

    new-instance v12, Lcom/prineside/tdi2/ibxm/Sample;

    invoke-direct {v12}, Lcom/prineside/tdi2/ibxm/Sample;-><init>()V

    aput-object v12, v11, v10

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/ibxm/Data;->uleInt(I)I

    move-result v11

    add-int/lit8 v13, v9, 0x4

    invoke-virtual {v1, v13}, Lcom/prineside/tdi2/ibxm/Data;->uleInt(I)I

    move-result v13

    add-int/lit8 v14, v9, 0x8

    invoke-virtual {v1, v14}, Lcom/prineside/tdi2/ibxm/Data;->uleInt(I)I

    move-result v14

    add-int/lit8 v15, v9, 0xc

    invoke-virtual {v1, v15}, Lcom/prineside/tdi2/ibxm/Data;->sByte(I)B

    move-result v15

    iput v15, v12, Lcom/prineside/tdi2/ibxm/Sample;->volume:I

    add-int/lit8 v15, v9, 0xd

    invoke-virtual {v1, v15}, Lcom/prineside/tdi2/ibxm/Data;->sByte(I)B

    move-result v15

    iput v15, v12, Lcom/prineside/tdi2/ibxm/Sample;->fineTune:I

    add-int/lit8 v15, v9, 0xe

    invoke-virtual {v1, v15}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v18

    and-int/lit8 v18, v18, 0x3

    if-lez v18, :cond_1d

    const/16 v18, 0x1

    goto :goto_19

    :cond_1d
    const/16 v18, 0x0

    :goto_19
    invoke-virtual {v1, v15}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v19

    and-int/lit8 v19, v19, 0x2

    if-lez v19, :cond_1e

    goto :goto_1a

    :cond_1e
    const/4 v6, 0x0

    :goto_1a
    invoke-virtual {v1, v15}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v15

    const/16 v17, 0x10

    and-int/lit8 v15, v15, 0x10

    if-lez v15, :cond_1f

    const/4 v15, 0x1

    goto :goto_1b

    :cond_1f
    const/4 v15, 0x0

    :goto_1b
    add-int/lit8 v7, v9, 0xf

    invoke-virtual {v1, v7}, Lcom/prineside/tdi2/ibxm/Data;->uByte(I)I

    move-result v7

    iput v7, v12, Lcom/prineside/tdi2/ibxm/Sample;->panning:I

    add-int/lit8 v7, v9, 0x10

    invoke-virtual {v1, v7}, Lcom/prineside/tdi2/ibxm/Data;->sByte(I)B

    move-result v7

    iput v7, v12, Lcom/prineside/tdi2/ibxm/Sample;->relNote:I

    add-int/lit8 v7, v9, 0x12

    const/16 v0, 0x16

    invoke-virtual {v1, v7, v0}, Lcom/prineside/tdi2/ibxm/Data;->strCp850(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v12, Lcom/prineside/tdi2/ibxm/Sample;->name:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x28

    if-eqz v18, :cond_20

    add-int v7, v13, v14

    if-le v7, v11, :cond_21

    :cond_20
    move v13, v11

    const/4 v14, 0x0

    :cond_21
    if-eqz v15, :cond_22

    shr-int/lit8 v7, v11, 0x1

    invoke-virtual {v1, v4, v7}, Lcom/prineside/tdi2/ibxm/Data;->samS16D(II)[S

    move-result-object v7

    shr-int/lit8 v13, v13, 0x1

    shr-int/lit8 v14, v14, 0x1

    invoke-virtual {v12, v7, v13, v14, v6}, Lcom/prineside/tdi2/ibxm/Sample;->setSampleData([SIIZ)V

    goto :goto_1c

    :cond_22
    invoke-virtual {v1, v4, v11}, Lcom/prineside/tdi2/ibxm/Data;->samS8D(II)[S

    move-result-object v7

    invoke-virtual {v12, v7, v13, v14, v6}, Lcom/prineside/tdi2/ibxm/Sample;->setSampleData([SIIZ)V

    :goto_1c
    add-int/2addr v4, v11

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_18

    :cond_23
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_c

    :cond_24
    return-void

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XM format version must be 0x0104!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
.end method

.method public toStringBuffer(Ljava/lang/StringBuffer;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Song Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Module;->songName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Num Channels: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Module;->numChannels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Num Instruments: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Module;->numInstruments:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Num Patterns: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Module;->numPatterns:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Sequence Length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Module;->sequenceLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Restart Pos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Module;->restartPos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Default Speed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultSpeed:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Default Tempo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/ibxm/Module;->defaultTempo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Linear Periods: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/prineside/tdi2/ibxm/Module;->linearPeriods:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "Sequence: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/prineside/tdi2/ibxm/Module;->sequence:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    array-length v1, v1

    const-string v2, ":\n"

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pattern "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Module;->patterns:[Lcom/prineside/tdi2/ibxm/Pattern;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ibxm/Pattern;->toStringBuffer(Ljava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instrument "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/prineside/tdi2/ibxm/Module;->instruments:[Lcom/prineside/tdi2/ibxm/Instrument;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ibxm/Instrument;->toStringBuffer(Ljava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
