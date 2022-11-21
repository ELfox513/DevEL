.class public abstract Lcom/android/dx/dex/file/EncodedMember;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/r;


# instance fields
.field private final accessFlags:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/dx/dex/file/EncodedMember;->accessFlags:I

    return-void
.end method


# virtual methods
.method public abstract addContents(Lcom/android/dx/dex/file/DexFile;)V
.end method

.method public abstract debugPrint(Ljava/io/PrintWriter;Z)V
.end method

.method public abstract encode(Lcom/android/dx/dex/file/DexFile;Lb2/a;II)I
.end method

.method public final getAccessFlags()I
    .locals 1

    iget v0, p0, Lcom/android/dx/dex/file/EncodedMember;->accessFlags:I

    return v0
.end method

.method public abstract getName()Lx1/d0;
.end method

.method public abstract synthetic toHuman()Ljava/lang/String;
.end method
