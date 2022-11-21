.class Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/file/DebugInfoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalEntry"
.end annotation


# instance fields
.field public address:I

.field public isStart:Z

.field public nameIndex:I

.field public reg:I

.field public signatureIndex:I

.field public typeIndex:I


# direct methods
.method public constructor <init>(IZIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    iput-boolean p2, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    iput p3, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    iput p4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iput p5, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    iput p6, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v1, :cond_0

    const-string v1, "start"

    goto :goto_0

    :cond_0
    const-string v1, "end"

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "[%x %s v%d %04x %04x %04x]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
